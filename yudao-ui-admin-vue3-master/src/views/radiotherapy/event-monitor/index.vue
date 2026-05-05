<template>
  <ContentWrap>
    <el-row :gutter="16" class="mb-16px">
      <el-col :span="4" v-for="card in cards" :key="card.label">
        <div class="p-16px rounded-8px text-center" :style="{ background: card.bg }">
          <div class="text-12px text-white/80 mb-4px">{{ card.label }}</div>
          <div class="text-28px font-700 text-white">{{ card.value }}</div>
        </div>
      </el-col>
    </el-row>
  </ContentWrap>

  <el-row :gutter="16" class="mb-16px">
    <el-col :span="12">
      <ContentWrap title="按类别分布">
        <div ref="pieChartRef" style="height: 300px"></div>
      </ContentWrap>
    </el-col>
    <el-col :span="12">
      <ContentWrap title="按科室分布">
        <div ref="barChartRef" style="height: 300px"></div>
      </ContentWrap>
    </el-col>
  </el-row>

  <ContentWrap title="月度趋势">
    <div ref="lineChartRef" style="height: 300px"></div>
  </ContentWrap>
</template>

<script setup lang="ts">
import { getStatsOverview, getCategoryDistribution, getDeptDistribution, getMonthlyTrend } from '@/api/radiotherapy/stats'
import echarts from '@/plugins/echarts'

defineOptions({ name: 'RadiotherapyEventMonitor' })

const cards = ref([
  { label: '本月上报', value: 0, bg: '#0891B2' },
  { label: '待处理', value: 0, bg: '#F59E0B' },
  { label: '已完成', value: 0, bg: '#22C55E' },
  { label: '已退回', value: 0, bg: '#DC2626' },
  { label: '总计', value: 0, bg: '#164E63' }
])

const pieChartRef = ref(), barChartRef = ref(), lineChartRef = ref()
let pieChart: echarts.ECharts | null = null
let barChart: echarts.ECharts | null = null
let lineChart: echarts.ECharts | null = null

const disposeChart = (chart: echarts.ECharts | null) => { chart?.dispose() }

const renderChart = async () => {
  let overview: any = {}, categoryData: any[] = [], deptData: any[] = [], trendData: any[] = []
  try {
    ;[overview, categoryData, deptData, trendData] = await Promise.all([
      getStatsOverview(), getCategoryDistribution(), getDeptDistribution(), getMonthlyTrend()
    ])
  } catch (e) {
    console.error('[EventMonitor] API 请求失败:', e)
    return
  }

  cards.value[0].value = overview.totalThisMonth || 0
  cards.value[1].value = overview.pendingCount || 0
  cards.value[2].value = overview.completedCount || 0
  cards.value[3].value = overview.returnedCount || 0
  cards.value[4].value = overview.totalCount || 0

  if (pieChartRef.value) {
    disposeChart(pieChart)
    pieChart = echarts.init(pieChartRef.value)
    pieChart.setOption({
      tooltip: { trigger: 'item' },
      series: [{ type: 'pie', radius: ['40%', '70%'], data: categoryData, label: { formatter: '{b}: {c}' } }]
    })
  }
  if (barChartRef.value) {
    disposeChart(barChart)
    barChart = echarts.init(barChartRef.value)
    barChart.setOption({
      tooltip: { trigger: 'axis' },
      xAxis: { type: 'category', data: deptData.map((d: any) => d.name) },
      yAxis: { type: 'value' },
      series: [{ type: 'bar', data: deptData.map((d: any) => d.value), itemStyle: { color: '#0891B2' } }]
    })
  }
  if (lineChartRef.value) {
    disposeChart(lineChart)
    lineChart = echarts.init(lineChartRef.value)
    lineChart.setOption({
      tooltip: { trigger: 'axis' },
      xAxis: { type: 'category', data: trendData.map((d: any) => d.month) },
      yAxis: { type: 'value' },
      series: [{ type: 'line', data: trendData.map((d: any) => d.count), smooth: true, itemStyle: { color: '#0891B2' }, areaStyle: { color: 'rgba(8,145,178,0.2)' } }]
    })
  }
}

const handleResize = () => {
  pieChart?.resize()
  barChart?.resize()
  lineChart?.resize()
}

onMounted(() => {
  renderChart()
  window.addEventListener('resize', handleResize)
})

onBeforeUnmount(() => {
  window.removeEventListener('resize', handleResize)
  disposeChart(pieChart)
  disposeChart(barChart)
  disposeChart(lineChart)
})
</script>
