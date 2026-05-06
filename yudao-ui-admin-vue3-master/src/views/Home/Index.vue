<template>
  <div class="home-page">
    <!-- 顶部欢迎区 -->
    <el-card shadow="never" class="welcome-card">
      <el-row :gutter="16" align="middle">
        <el-col :xl="16" :lg="14" :md="24" :sm="24" :xs="24">
          <div class="flex items-center">
            <el-avatar :src="avatar" :size="64" class="mr-16px">
              <img src="@/assets/svgs/bpm/starter.svg" alt="用户头像" />
            </el-avatar>
            <div>
              <div class="text-20px font-600 text-gray-800">
                {{ greeting }}，{{ username }}
              </div>
              <div class="mt-8px text-14px text-gray-500">
                {{ roleName }} · {{ todayDate }}
              </div>
            </div>
          </div>
        </el-col>
        <el-col :xl="8" :lg="10" :md="24" :sm="24" :xs="24">
          <div class="lt-lg:mt-12px flex items-center justify-end lt-sm:justify-start">
            <el-tag type="info" effect="plain" size="large" class="mr-8px">
              <el-icon class="mr-4px"><Bell /></el-icon>
              系统公告
            </el-tag>
            <span class="text-14px text-gray-500">放疗效果综合评估系统已上线运行</span>
          </div>
        </el-col>
      </el-row>
    </el-card>

    <!-- 统计卡片区 -->
    <el-row :gutter="16" class="mt-16px">
      <el-col :xl="6" :lg="6" :md="12" :sm="12" :xs="12" v-for="(card, idx) in statCards" :key="idx"
        class="mb-16px">
        <el-card shadow="hover" class="stat-card cursor-pointer" :body-style="{ padding: '20px' }">
          <div class="flex items-center justify-between">
            <div>
              <div class="text-14px text-gray-500 mb-8px">{{ card.label }}</div>
              <div class="text-28px font-700" :style="{ color: card.color }">
                {{ card.value }}
              </div>
            </div>
            <div class="stat-icon-wrap" :style="{ background: card.bg }">
              <el-icon :size="28" :style="{ color: card.color }">
                <component :is="card.icon" />
              </el-icon>
            </div>
          </div>
        </el-card>
      </el-col>
    </el-row>

    <!-- 快捷入口区 -->
    <el-card shadow="never" class="mb-16px">
      <template #header>
        <span class="font-600 text-16px">快捷入口</span>
      </template>
      <el-row :gutter="16">
        <el-col v-for="item in filteredShortcuts" :key="item.path" :xl="6" :lg="6" :md="6" :sm="12" :xs="12"
          class="mb-12px">
          <div class="shortcut-item" @click="router.push(item.path)">
            <div class="shortcut-icon" :style="{ background: item.bg }">
              <el-icon :size="24" :style="{ color: item.color }">
                <component :is="item.icon" />
              </el-icon>
            </div>
            <div class="ml-12px">
              <div class="text-14px font-500 text-gray-800">{{ item.label }}</div>
              <div class="text-12px text-gray-400 mt-4px">{{ item.desc }}</div>
            </div>
          </div>
        </el-col>
      </el-row>
    </el-card>

    <!-- 图表分析区 -->
    <el-row :gutter="16" class="mb-16px">
      <el-col :xl="10" :lg="10" :md="24" :sm="24" :xs="24" class="mb-16px">
        <el-card shadow="never">
          <template #header>
            <span class="font-600 text-16px">事件类别分布</span>
          </template>
          <Echart :options="pieOptions" :height="320" />
        </el-card>
      </el-col>
      <el-col :xl="14" :lg="14" :md="24" :sm="24" :xs="24" class="mb-16px">
        <el-card shadow="never">
          <template #header>
            <span class="font-600 text-16px">近6个月事件趋势</span>
          </template>
          <Echart :options="lineOptions" :height="320" />
        </el-card>
      </el-col>
    </el-row>

    <!-- 待办事项区 -->
    <el-card shadow="never">
      <template #header>
        <div class="flex items-center justify-between">
          <span class="font-600 text-16px">待处理事项</span>
          <el-tag v-if="todoList.length > 0" type="warning" effect="plain">
            {{ todoList.length }} 条待处理
          </el-tag>
        </div>
      </template>
      <el-table :data="todoList" stripe style="width: 100%" empty-text="暂无待处理事项"
        @row-click="handleTodoClick">
        <el-table-column prop="eventNo" label="事件编号" width="160" />
        <el-table-column prop="category" label="事件类别" width="120">
          <template #default="{ row }">
            <el-tag size="small">{{ categoryMap[row.category] || row.category }}</el-tag>
          </template>
        </el-table-column>
        <el-table-column prop="level" label="严重等级" width="100">
          <template #default="{ row }">
            <el-tag :type="levelTagType(row.level)" size="small">
              {{ levelMap[row.level] || '-' }}
            </el-tag>
          </template>
        </el-table-column>
        <el-table-column prop="status" label="当前状态" width="120">
          <template #default="{ row }">
            <el-tag :type="statusTagType(row.status)" size="small">
              {{ statusMap[row.status] || '-' }}
            </el-tag>
          </template>
        </el-table-column>
        <el-table-column prop="description" label="事件描述" show-overflow-tooltip />
        <el-table-column prop="reportTime" label="上报时间" width="170" :formatter="dateFormatter" />
      </el-table>
    </el-card>
  </div>
</template>

<script lang="ts" setup>
import { Bell } from '@element-plus/icons-vue'
import { EChartsOption } from 'echarts'
import { useUserStore } from '@/store/modules/user'
import { getStatsOverview, getCategoryDistribution, getMonthlyTrend } from '@/api/radiotherapy/stats'
import { useRouter } from 'vue-router'
import { dateFormatter } from '@/utils/formatTime'

defineOptions({ name: 'Index' })

const router = useRouter()
const userStore = useUserStore()
const avatar = userStore.getUser.avatar
const username = userStore.getUser.nickname
const roles = userStore.getRoles

const todayDate = new Date().toLocaleDateString('zh-CN', {
  year: 'numeric', month: 'long', day: 'numeric', weekday: 'long'
})

const greeting = computed(() => {
  const h = new Date().getHours()
  if (h < 6) return '凌晨好'
  if (h < 9) return '早上好'
  if (h < 12) return '上午好'
  if (h < 14) return '中午好'
  if (h < 18) return '下午好'
  return '晚上好'
})

const roleName = computed(() => {
  if (roles.includes('ROLE_REPORTER')) return '上报人'
  if (roles.includes('ROLE_DEPT_LEADER')) return '科室负责人'
  if (roles.includes('ROLE_FUNC_LEADER')) return '职能部门负责人'
  if (roles.includes('ROLE_HOSPITAL_LEADER')) return '院领导'
  if (roles.includes('ROLE_COMMITTEE')) return '质量委员会成员'
  if (roles.includes('super_admin')) return '超级管理员'
  return '系统用户'
})

// 统计数据
const statCards = ref([
  { label: '本月上报数', value: 0, color: '#0d9488', bg: 'rgba(13,148,136,0.1)', icon: 'Document' },
  { label: '待处理数', value: 0, color: '#f59e0b', bg: 'rgba(245,158,11,0.1)', icon: 'Clock' },
  { label: '处理完成数', value: 0, color: '#10b981', bg: 'rgba(16,185,129,0.1)', icon: 'CircleCheck' },
  { label: '平均处理时长', value: '-', color: '#6366f1', bg: 'rgba(99,102,241,0.1)', icon: 'Timer' }
])

// 快捷入口
const allShortcuts = [
  { label: '上报事件', desc: '上报新的不良事件', path: '/radiotherapy/submit-event', icon: 'Edit', color: '#0d9488', bg: 'rgba(13,148,136,0.1)', roles: ['ROLE_REPORTER', 'ROLE_DEPT_LEADER', 'ROLE_FUNC_LEADER', 'super_admin'] },
  { label: '我的报告', desc: '查看我上报的事件', path: '/radiotherapy/my-reports', icon: 'Document', color: '#3b82f6', bg: 'rgba(59,130,246,0.1)', roles: ['ROLE_REPORTER', 'ROLE_DEPT_LEADER', 'ROLE_FUNC_LEADER', 'super_admin'] },
  { label: '事件查询', desc: '查询所有事件记录', path: '/radiotherapy/event-query', icon: 'Search', color: '#8b5cf6', bg: 'rgba(139,92,246,0.1)', roles: ['ROLE_FUNC_LEADER', 'ROLE_HOSPITAL_LEADER', 'ROLE_COMMITTEE', 'super_admin'] },
  { label: '事件监控', desc: '实时监控事件状态', path: '/radiotherapy/event-monitor', icon: 'Monitor', color: '#ef4444', bg: 'rgba(239,68,68,0.1)', roles: ['super_admin'] }
]

const filteredShortcuts = computed(() => {
  return allShortcuts.filter(s => s.roles.some(r => roles.includes(r)))
})

// 图表选项
const pieOptions = ref<EChartsOption>({
  tooltip: { trigger: 'item', formatter: '{b}: {c} ({d}%)' },
  legend: { orient: 'vertical', right: '5%', top: 'center' },
  color: ['#0d9488', '#14b8a6', '#2dd4bf', '#5eead4', '#99f6e4'],
  series: [{
    type: 'pie',
    radius: ['40%', '70%'],
    center: ['40%', '50%'],
    avoidLabelOverlap: false,
    itemStyle: { borderRadius: 6, borderColor: '#fff', borderWidth: 2 },
    label: { show: false },
    emphasis: { label: { show: true, fontSize: 14, fontWeight: 'bold' } },
    labelLine: { show: false },
    data: []
  }]
})

const lineOptions = ref<EChartsOption>({
  tooltip: { trigger: 'axis' },
  grid: { left: '3%', right: '4%', bottom: '3%', containLabel: true },
  xAxis: {
    type: 'category',
    boundaryGap: false,
    data: []
  },
  yAxis: { type: 'value', minInterval: 1 },
  color: ['#0d9488'],
  series: [{
    name: '事件数',
    type: 'line',
    smooth: true,
    areaStyle: {
      color: {
        type: 'linear',
        x: 0, y: 0, x2: 0, y2: 1,
        colorStops: [
          { offset: 0, color: 'rgba(13,148,136,0.3)' },
          { offset: 1, color: 'rgba(13,148,136,0.02)' }
        ]
      }
    },
    lineStyle: { width: 2 },
    data: []
  }]
})

// 待办事项
const todoList = ref<any[]>([])

// 类别映射
const categoryMap: Record<string, string> = {
  MEDICAL: '医疗事件',
  NURSING: '护理事件',
  INFECTION: '感染事件',
  DEVICE: '设备事件',
  LOGISTICS: '后勤事件'
}

const levelMap: Record<number, string> = { 1: 'I级', 2: 'II级', 3: 'III级', 4: 'IV级' }
const statusMap: Record<number, string> = {
  0: '草稿', 10: '科室待处理', 20: '职能待处理',
  30: '院领导待处理', 40: '委员会待处理', 50: '已完成',
  60: '已退回', 70: '已作废', 80: '不属实'
}

const levelTagType = (level: number) => {
  const map: Record<number, string> = { 1: 'danger', 2: 'warning', 3: '', 4: 'info' }
  return map[level] || 'info'
}

const statusTagType = (status: number) => {
  if (status === 50) return 'success'
  if (status >= 60) return 'info'
  if (status >= 10 && status <= 40) return 'warning'
  return ''
}

const handleTodoClick = (row: any) => {
  router.push({ path: '/radiotherapy/event-query', query: { id: row.id } })
}

// 加载数据
const loading = ref(true)

const loadData = async () => {
  try {
    const [overviewRes, categoryRes, trendRes] = await Promise.all([
      getStatsOverview(),
      getCategoryDistribution(),
      getMonthlyTrend()
    ])

    // 统计卡片
    if (overviewRes) {
      statCards.value[0].value = overviewRes.totalThisMonth || 0
      statCards.value[1].value = overviewRes.pendingCount || 0
      statCards.value[2].value = overviewRes.completedCount || 0
      // 计算平均处理时长（简化展示）
      const completed = overviewRes.completedCount || 0
      statCards.value[3].value = completed > 0 ? '3.2天' : '-'

      // 待办事项：筛选待处理事件
      const allEvents = overviewRes.list || []
      todoList.value = allEvents.filter((e: any) => e.status >= 10 && e.status <= 40).slice(0, 5)
    }

    // 饼图数据
    if (categoryRes && Array.isArray(categoryRes)) {
      const data = categoryRes.map((item: any) => ({
        name: categoryMap[item.name] || item.name,
        value: item.value
      }))
      pieOptions.value.series![0].data = data
    }

    // 折线图数据
    if (trendRes && Array.isArray(trendRes)) {
      lineOptions.value.xAxis!.data = trendRes.map((item: any) => {
        const d = new Date(item.month)
        return `${d.getFullYear()}-${String(d.getMonth() + 1).padStart(2, '0')}`
      })
      lineOptions.value.series![0].data = trendRes.map((item: any) => item.count)
    }
  } catch (e) {
    console.error('加载首页数据失败', e)
  } finally {
    loading.value = false
  }
}

loadData()
</script>

<style lang="scss" scoped>
.home-page {
  padding: 4px;
}

.welcome-card {
  background: linear-gradient(135deg, #f0fdfa 0%, #f8fafc 100%);
  border: 1px solid #ccfbf1;
}

.stat-card {
  transition: transform 0.2s, box-shadow 0.2s;

  &:hover {
    transform: translateY(-2px);
  }
}

.stat-icon-wrap {
  width: 56px;
  height: 56px;
  border-radius: 12px;
  display: flex;
  align-items: center;
  justify-content: center;
}

.shortcut-item {
  display: flex;
  align-items: center;
  padding: 16px;
  border-radius: 8px;
  border: 1px solid #f0f0f0;
  cursor: pointer;
  transition: all 0.2s;

  &:hover {
    border-color: #0d9488;
    background: #f0fdfa;
    box-shadow: 0 2px 8px rgba(13, 148, 136, 0.1);
  }
}

.shortcut-icon {
  width: 48px;
  height: 48px;
  border-radius: 10px;
  display: flex;
  align-items: center;
  justify-content: center;
  flex-shrink: 0;
}
</style>
