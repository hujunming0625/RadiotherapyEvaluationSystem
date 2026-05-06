<template>
  <!-- 统计卡片 -->
  <ContentWrap>
    <el-row :gutter="16" class="mb-16px">
      <el-col :span="4" v-for="card in cards" :key="card.label">
        <div
          class="p-16px rounded-8px text-center cursor-pointer transition-opacity hover:opacity-90"
          :style="{ background: card.bg }"
          @click="filterByCard(card.filter)"
        >
          <div class="text-12px text-white/80 mb-4px">{{ card.label }}</div>
          <div class="text-28px font-700 text-white">{{ card.value }}</div>
        </div>
      </el-col>
    </el-row>
  </ContentWrap>

  <!-- 图表区 -->
  <el-row :gutter="16" class="mb-16px">
    <el-col :span="12">
      <ContentWrap title="按类别分布"><div ref="pieChartRef" style="height: 300px"></div></ContentWrap>
    </el-col>
    <el-col :span="12">
      <ContentWrap title="按科室分布"><div ref="barChartRef" style="height: 300px"></div></ContentWrap>
    </el-col>
  </el-row>

  <ContentWrap title="月度趋势" class="mb-16px">
    <div ref="lineChartRef" style="height: 300px"></div>
  </ContentWrap>

  <!-- 超期预警 + 实时事件列表 -->
  <el-row :gutter="16">
    <el-col :span="12">
      <ContentWrap title="超期预警（超过48小时未处理）">
        <el-table :data="overdueList" stripe size="small" empty-text="暂无超期事件">
          <el-table-column prop="eventNo" label="编号" width="160" />
          <el-table-column prop="category" label="类别" width="80">
            <template #default="{ row }">
              <el-tag size="small">{{ categoryLabel(row.category) }}</el-tag>
            </template>
          </el-table-column>
          <el-table-column prop="status" label="状态" width="100">
            <template #default="{ row }">
              <el-tag type="warning" size="small">{{ statusLabel(row.status) }}</el-tag>
            </template>
          </el-table-column>
          <el-table-column label="超期时长">
            <template #default="{ row }">
              <span class="text-red-500 font-600">{{ calcOverdue(row.createTime) }}</span>
            </template>
          </el-table-column>
        </el-table>
      </ContentWrap>
    </el-col>
    <el-col :span="12">
      <ContentWrap title="最近事件动态">
        <el-table :data="recentList" stripe size="small" empty-text="暂无事件">
          <el-table-column prop="eventNo" label="编号" width="160" />
          <el-table-column prop="category" label="类别" width="80">
            <template #default="{ row }">
              <el-tag size="small">{{ categoryLabel(row.category) }}</el-tag>
            </template>
          </el-table-column>
          <el-table-column prop="level" label="等级" width="70">
            <template #default="{ row }">
              <el-tag :type="levelTag(row.level)" size="small">{{ ['','I','II','III','IV'][row.level] }}级</el-tag>
            </template>
          </el-table-column>
          <el-table-column prop="status" label="状态" width="100">
            <template #default="{ row }">
              <el-tag :type="statusTag(row.status)" size="small">{{ statusLabel(row.status) }}</el-tag>
            </template>
          </el-table-column>
          <el-table-column prop="createTime" label="时间" width="160" />
        </el-table>
      </ContentWrap>
    </el-col>
  </el-row>
</template>

<script setup lang="ts">
import { getStatsOverview, getCategoryDistribution, getDeptDistribution, getMonthlyTrend } from '@/api/radiotherapy/stats'
import { getEventPage } from '@/api/radiotherapy/event'
import echarts from '@/plugins/echarts'
import dayjs from 'dayjs'

defineOptions({ name: 'RadiotherapyEventMonitor' })

const categoryLabel = (c: string) => ({ MEDICAL: '医疗', NURSING: '护理', INFECTION: '院感', INFO: '信息', DEVICE: '器械', LOGISTICS: '后勤' } as any)[c] || c
const statusLabel = (s: number) => ({ 0: '草稿', 10: '待科室', 20: '待职能', 30: '待院领导', 40: '待委员会', 50: '完成', 60: '已退回', 70: '已作废', 80: '不属实' } as any)[s] || '未知'
const levelTag = (l: number) => ({ 1: 'danger', 2: 'warning', 3: '', 4: 'info' } as any)[l] || 'info'
const statusTag = (s: number) => ({ 0: 'info', 10: 'warning', 20: 'warning', 30: 'warning', 40: 'warning', 50: 'success', 60: 'info', 70: 'info', 80: 'info' } as any)[s] || 'info'

const cards = ref([
  { label: '本月上报', value: 0, bg: '#0891B2', filter: null },
  { label: '待处理', value: 0, bg: '#F59E0B', filter: 'pending' },
  { label: '已完成', value: 0, bg: '#22C55E', filter: 'completed' },
  { label: '已退回', value: 0, bg: '#DC2626', filter: 'returned' },
  { label: '总计', value: 0, bg: '#164E63', filter: null }
])

const overdueList = ref<any[]>([])
const recentList = ref<any[]>([])

const calcOverdue = (createTime: string) => {
  const hours = dayjs().diff(dayjs(createTime), 'hour')
  if (hours < 24) return `${hours}小时`
  return `${Math.floor(hours / 24)}天${hours % 24}小时`
}

const filterByCard = (filter: string | null) => {
  // Clicking a card could filter the event list - reserved for future use
}

const pieChartRef = ref(), barChartRef = ref(), lineChartRef = ref()
const charts: echarts.ECharts[] = []

const renderChart = async () => {
  const [overview, categoryData, deptData, trendData, overdueRes, recentRes] = await Promise.all([
    getStatsOverview(), getCategoryDistribution(), getDeptDistribution(), getMonthlyTrend(),
    getEventPage({ pageNo: 1, pageSize: 10, status: 10 }).catch(() => ({ list: [] })),
    getEventPage({ pageNo: 1, pageSize: 10 }).catch(() => ({ list: [] }))
  ])

  cards.value[0].value = overview.totalThisMonth || 0
  cards.value[1].value = overview.pendingCount || 0
  cards.value[2].value = overview.completedCount || 0
  cards.value[3].value = overview.returnedCount || 0
  cards.value[4].value = overview.totalCount || 0

  // 超期事件（待处理超过48小时）
  const allPending = await getEventPage({ pageNo: 1, pageSize: 100, status: 10 }).catch(() => ({ list: [] }))
  overdueList.value = (allPending.list || []).filter((e: any) => {
    return dayjs().diff(dayjs(e.createTime), 'hour') > 48
  }).slice(0, 5)

  recentList.value = recentRes.list || []

  charts.forEach(c => c.dispose())
  charts.length = 0

  if (pieChartRef.value) {
    const chart = echarts.init(pieChartRef.value)
    chart.setOption({ tooltip: { trigger: 'item' }, series: [{ type: 'pie', radius: ['40%', '70%'], data: categoryData, label: { formatter: '{b}: {c}' } }] })
    charts.push(chart)
  }
  if (barChartRef.value) {
    const chart = echarts.init(barChartRef.value)
    chart.setOption({ tooltip: { trigger: 'axis' }, xAxis: { type: 'category', data: deptData.map((d: any) => d.name) }, yAxis: { type: 'value' }, series: [{ type: 'bar', data: deptData.map((d: any) => d.value), itemStyle: { color: '#0891B2' } }] })
    charts.push(chart)
  }
  if (lineChartRef.value) {
    const chart = echarts.init(lineChartRef.value)
    chart.setOption({ tooltip: { trigger: 'axis' }, xAxis: { type: 'category', data: trendData.map((d: any) => d.month) }, yAxis: { type: 'value' }, series: [{ type: 'line', data: trendData.map((d: any) => d.count), smooth: true, itemStyle: { color: '#0891B2' }, areaStyle: { color: 'rgba(8,145,178,0.2)' } }] })
    charts.push(chart)
  }
}

const handleResize = () => charts.forEach(c => c.resize())
onMounted(() => { renderChart(); window.addEventListener('resize', handleResize) })
onBeforeUnmount(() => { window.removeEventListener('resize', handleResize); charts.forEach(c => c.dispose()) })
</script>
