<template>
  <ContentWrap title="指标分析">
    <el-form :inline="true" class="mb-16px">
      <el-form-item label="类别">
        <el-select v-model="category" class="!w-140px" clearable placeholder="全部">
          <el-option v-for="c in categoryOptions" :key="c.value" :label="c.label" :value="c.value" />
        </el-select>
      </el-form-item>
      <el-form-item label="等级">
        <el-select v-model="level" class="!w-100px" clearable placeholder="全部">
          <el-option :value="1" label="I级" /><el-option :value="2" label="II级" />
          <el-option :value="3" label="III级" /><el-option :value="4" label="IV级" />
        </el-select>
      </el-form-item>
      <el-form-item>
        <el-button type="primary" @click="refresh">查询</el-button>
        <el-button type="success" plain @click="handleExport">
          <el-icon class="mr-4px"><Download /></el-icon>导出
        </el-button>
      </el-form-item>
    </el-form>
  </ContentWrap>

  <!-- 统计卡片 -->
  <el-row :gutter="16" class="mb-16px">
    <el-col :span="6" v-for="(card, idx) in statCards" :key="idx">
      <ContentWrap>
        <div class="text-center">
          <div class="text-14px text-gray-500 mb-8px">{{ card.label }}</div>
          <div class="text-28px font-700" :style="{ color: card.color }">{{ card.value }}</div>
        </div>
      </ContentWrap>
    </el-col>
  </el-row>

  <!-- 图表区 -->
  <el-row :gutter="16" class="mb-16px">
    <el-col :span="12">
      <ContentWrap title="月度趋势"><div ref="lineRef" style="height: 300px"></div></ContentWrap>
    </el-col>
    <el-col :span="12">
      <ContentWrap title="类别构成"><div ref="pieRef" style="height: 300px"></div></ContentWrap>
    </el-col>
  </el-row>
  <el-row :gutter="16" class="mb-16px">
    <el-col :span="12">
      <ContentWrap title="科室对比"><div ref="barRef" style="height: 300px"></div></ContentWrap>
    </el-col>
    <el-col :span="12">
      <ContentWrap title="等级分布"><div ref="levelRef" style="height: 300px"></div></ContentWrap>
    </el-col>
  </el-row>
  <el-row :gutter="16" class="mb-16px">
    <el-col :span="12">
      <ContentWrap title="平均处理时长（按类别）"><div ref="timeRef" style="height: 300px"></div></ContentWrap>
    </el-col>
    <el-col :span="12">
      <ContentWrap title="原因分析"><div ref="causeRef" style="height: 300px"></div></ContentWrap>
    </el-col>
  </el-row>
  <el-row :gutter="16">
    <el-col :span="24">
      <ContentWrap title="等级-类别交叉分析"><div ref="crossRef" style="height: 350px"></div></ContentWrap>
    </el-col>
  </el-row>
</template>

<script setup lang="ts">
import { Download } from '@element-plus/icons-vue'
import { getCategoryDistribution, getDeptDistribution, getMonthlyTrend, getStatsOverview, getProcessingTime, getCauseAnalysis, getLevelCategoryCross } from '@/api/radiotherapy/stats'
import echarts from '@/plugins/echarts'

defineOptions({ name: 'RadiotherapyIndicatorAnalysis' })

const categoryOptions = [
  { label: '医疗', value: 'MEDICAL' }, { label: '护理', value: 'NURSING' },
  { label: '院感', value: 'INFECTION' }, { label: '信息', value: 'INFO' },
  { label: '器械', value: 'DEVICE' }, { label: '后勤', value: 'LOGISTICS' }
]
const category = ref(''), level = ref<number>()

const statCards = ref([
  { label: '本月上报', value: 0, color: '#0891B2' },
  { label: '待处理', value: 0, color: '#F59E0B' },
  { label: '已完成', value: 0, color: '#22C55E' },
  { label: '平均处理时长', value: '-', color: '#6366F1' }
])

const lineRef = ref(), pieRef = ref(), barRef = ref(), levelRef = ref()
const timeRef = ref(), causeRef = ref(), crossRef = ref()
const charts: echarts.ECharts[] = []

const disposeAll = () => { charts.forEach(c => c.dispose()); charts.length = 0 }
const initChart = (el: HTMLElement, option: any) => {
  const chart = echarts.init(el)
  chart.setOption(option)
  charts.push(chart)
  return chart
}

const refresh = async () => {
  const [overview, categoryData, deptData, trendData, timeData, causeData, crossData] = await Promise.all([
    getStatsOverview(), getCategoryDistribution(), getDeptDistribution(),
    getMonthlyTrend(), getProcessingTime(), getCauseAnalysis(), getLevelCategoryCross()
  ])

  // 统计卡片
  statCards.value[0].value = overview.totalThisMonth || 0
  statCards.value[1].value = overview.pendingCount || 0
  statCards.value[2].value = overview.completedCount || 0
  statCards.value[3].value = timeData.avgHours ? `${timeData.avgHours}h` : '-'

  disposeAll()

  // 月度趋势
  if (lineRef.value) initChart(lineRef.value, {
    tooltip: { trigger: 'axis' }, grid: { left: '3%', right: '4%', bottom: '3%', containLabel: true },
    xAxis: { type: 'category', data: trendData.map((d: any) => d.month) },
    yAxis: { type: 'value', minInterval: 1 },
    series: [{ type: 'line', smooth: true, data: trendData.map((d: any) => d.count), itemStyle: { color: '#0891B2' }, areaStyle: { color: 'rgba(8,145,178,0.15)' } }]
  })

  // 类别饼图
  if (pieRef.value) initChart(pieRef.value, {
    tooltip: { trigger: 'item', formatter: '{b}: {c} ({d}%)' },
    legend: { orient: 'vertical', right: '5%', top: 'center' },
    color: ['#0891B2', '#14B8A6', '#22D3EE', '#6366F1', '#F59E0B', '#EF4444'],
    series: [{ type: 'pie', radius: ['40%', '70%'], data: categoryData, label: { formatter: '{b}: {c}' } }]
  })

  // 科室柱状图
  if (barRef.value) initChart(barRef.value, {
    tooltip: { trigger: 'axis' }, grid: { left: '3%', right: '4%', bottom: '3%', containLabel: true },
    xAxis: { type: 'category', data: deptData.map((d: any) => d.name), axisLabel: { rotate: 30 } },
    yAxis: { type: 'value', minInterval: 1 },
    series: [{ type: 'bar', data: deptData.map((d: any) => d.value), itemStyle: { color: '#0891B2', borderRadius: [4, 4, 0, 0] } }]
  })

  // 等级分布
  if (levelRef.value) {
    const ld = overview.levelDistribution || [0, 0, 0, 0]
    initChart(levelRef.value, {
      tooltip: { trigger: 'axis' },
      xAxis: { type: 'category', data: ['I级', 'II级', 'III级', 'IV级'] },
      yAxis: { type: 'value', minInterval: 1 },
      color: ['#EF4444', '#F59E0B', '#3B82F6', '#6B7280'],
      series: [{ type: 'bar', data: ld, itemStyle: { borderRadius: [4, 4, 0, 0] } }]
    })
  }

  // 处理时长（按类别）
  if (timeRef.value && timeData.byCategory) initChart(timeRef.value, {
    tooltip: { trigger: 'axis' },
    xAxis: { type: 'category', data: timeData.byCategory.map((d: any) => d.category) },
    yAxis: { type: 'value', name: '小时' },
    series: [{ type: 'bar', data: timeData.byCategory.map((d: any) => d.avgHours), itemStyle: { color: '#6366F1', borderRadius: [4, 4, 0, 0] } }]
  })

  // 原因分析
  if (causeRef.value && causeData.length > 0) initChart(causeRef.value, {
    tooltip: { trigger: 'item' },
    series: [{ type: 'pie', radius: '60%', data: causeData, label: { formatter: '{b}: {c}' } }]
  })

  // 等级-类别交叉分析
  if (crossRef.value && crossData.length > 0) initChart(crossRef.value, {
    tooltip: { trigger: 'axis' },
    legend: { data: ['I级', 'II级', 'III级', 'IV级'] },
    grid: { left: '3%', right: '4%', bottom: '3%', containLabel: true },
    xAxis: { type: 'category', data: crossData.map((d: any) => d.category) },
    yAxis: { type: 'value', minInterval: 1 },
    color: ['#EF4444', '#F59E0B', '#3B82F6', '#6B7280'],
    series: [1, 2, 3, 4].map(l => ({
      name: `${l}级`, type: 'bar', stack: 'total',
      data: crossData.map((d: any) => d[l] || 0)
    }))
  })
}

const handleExport = async () => {
  const [overview, trendData, categoryData, deptData] = await Promise.all([
    getStatsOverview(), getMonthlyTrend(), getCategoryDistribution(), getDeptDistribution()
  ])
  const rows = [
    ['指标', '值'],
    ['本月上报', overview.totalThisMonth],
    ['待处理', overview.pendingCount],
    ['已完成', overview.completedCount],
    ['总事件数', overview.totalCount],
    ['', ''],
    ['月份', '事件数'],
    ...trendData.map((d: any) => [d.month, d.count]),
    ['', ''],
    ['类别', '数量'],
    ...categoryData.map((d: any) => [d.name, d.value]),
    ['', ''],
    ['科室', '数量'],
    ...deptData.map((d: any) => [d.name, d.value])
  ]
  const csv = rows.map(r => r.join(',')).join('\n')
  const blob = new Blob(['﻿' + csv], { type: 'text/csv;charset=utf-8;' })
  const url = URL.createObjectURL(blob)
  const a = document.createElement('a')
  a.href = url
  a.download = `事件统计_${new Date().toISOString().slice(0, 10)}.csv`
  a.click()
  URL.revokeObjectURL(url)
}

const handleResize = () => charts.forEach(c => c.resize())

onMounted(() => { refresh(); window.addEventListener('resize', handleResize) })
onBeforeUnmount(() => { window.removeEventListener('resize', handleResize); disposeAll() })
</script>
