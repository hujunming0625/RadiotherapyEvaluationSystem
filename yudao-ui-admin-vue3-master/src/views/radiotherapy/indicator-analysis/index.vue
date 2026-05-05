<template>
  <ContentWrap title="指标分析">
    <el-form :inline="true" class="mb-16px">
      <el-form-item label="类别"><el-select v-model="category" class="!w-140px" clearable placeholder="全部"><el-option v-for="c in categoryOptions" :key="c.value" :label="c.label" :value="c.value"/></el-select></el-form-item>
      <el-form-item label="等级"><el-select v-model="level" class="!w-100px" clearable placeholder="全部"><el-option :value="1" label="I级"/><el-option :value="2" label="II级"/><el-option :value="3" label="III级"/><el-option :value="4" label="IV级"/></el-select></el-form-item>
      <el-form-item><el-button type="primary" @click="refresh">查询</el-button></el-form-item>
    </el-form>
  </ContentWrap>

  <div class="grid grid-cols-2 gap-16px mb-16px">
    <ContentWrap title="月度趋势（折线图）"><div ref="lineRef" style="height: 300px"></div></ContentWrap>
    <ContentWrap title="类别构成（饼图）"><div ref="pieRef" style="height: 300px"></div></ContentWrap>
  </div>
  <div class="grid grid-cols-2 gap-16px">
    <ContentWrap title="科室对比（柱状图）"><div ref="barRef" style="height: 300px"></div></ContentWrap>
    <ContentWrap title="等级分布（柱状图）"><div ref="levelRef" style="height: 300px"></div></ContentWrap>
  </div>
</template>

<script setup lang="ts">
import { getCategoryDistribution, getDeptDistribution, getMonthlyTrend, getStatsOverview } from '@/api/radiotherapy/stats'
import echarts from '@/plugins/echarts'

defineOptions({ name: 'RadiotherapyIndicatorAnalysis' })

const categoryOptions = [{ label: '医疗', value: 'MEDICAL' },{ label: '护理', value: 'NURSING' },{ label: '院感', value: 'INFECTION' },{ label: '信息', value: 'INFO' },{ label: '器械', value: 'DEVICE' },{ label: '后勤', value: 'LOGISTICS' }]
const category = ref(''), level = ref<number>()

const lineRef = ref(), pieRef = ref(), barRef = ref(), levelRef = ref()
let lineChart: echarts.ECharts | null = null
let pieChart: echarts.ECharts | null = null
let barChart: echarts.ECharts | null = null
let levelChart: echarts.ECharts | null = null

const disposeChart = (chart: echarts.ECharts | null) => { chart?.dispose() }

const refresh = async () => {
  let categoryData: any[] = [], deptData: any[] = [], trendData: any[] = [], overview: any = {}
  try {
    ;[categoryData, deptData, trendData, overview] = await Promise.all([
      getCategoryDistribution(), getDeptDistribution(), getMonthlyTrend(), getStatsOverview()
    ])
  } catch (e) {
    console.error('[IndicatorAnalysis] API 请求失败:', e)
    return
  }

  if (lineRef.value) {
    disposeChart(lineChart)
    lineChart = echarts.init(lineRef.value)
    lineChart.setOption({ tooltip:{trigger:'axis'}, xAxis:{type:'category',data:trendData.map((d:any)=>d.month)}, yAxis:{type:'value'}, series:[{type:'line',smooth:true,data:trendData.map((d:any)=>d.count),itemStyle:{color:'#0891B2'},areaStyle:{color:'rgba(8,145,178,0.2)'}}] })
  }
  if (pieRef.value) {
    disposeChart(pieChart)
    pieChart = echarts.init(pieRef.value)
    pieChart.setOption({ tooltip:{trigger:'item'}, series:[{type:'pie',radius:['40%','70%'],data:categoryData,label:{formatter:'{b}: {c}'}}] })
  }
  if (barRef.value) {
    disposeChart(barChart)
    barChart = echarts.init(barRef.value)
    barChart.setOption({ tooltip:{trigger:'axis'}, xAxis:{type:'category',data:deptData.map((d:any)=>d.name)}, yAxis:{type:'value'}, series:[{type:'bar',data:deptData.map((d:any)=>d.value),itemStyle:{color:'#0891B2'}}] })
  }
  if (levelRef.value) {
    disposeChart(levelChart)
    levelChart = echarts.init(levelRef.value)
    const levelData = overview.levelDistribution || [0, 0, 0, 0]
    levelChart.setOption({ tooltip:{trigger:'axis'}, xAxis:{type:'category',data:['I级','II级','III级','IV级']}, yAxis:{type:'value'}, series:[{type:'bar',data:levelData,itemStyle:{color:'#22D3EE'}}] })
  }
}

const handleResize = () => {
  lineChart?.resize()
  pieChart?.resize()
  barChart?.resize()
  levelChart?.resize()
}

onMounted(() => {
  refresh()
  window.addEventListener('resize', handleResize)
})

onBeforeUnmount(() => {
  window.removeEventListener('resize', handleResize)
  disposeChart(lineChart)
  disposeChart(pieChart)
  disposeChart(barChart)
  disposeChart(levelChart)
})
</script>
