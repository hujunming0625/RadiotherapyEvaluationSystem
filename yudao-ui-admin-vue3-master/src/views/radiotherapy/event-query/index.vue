<template>
  <ContentWrap title="事件查询">
    <el-form :inline="true" :model="queryParams" class="mb-16px">
      <el-form-item label="编号"><el-input v-model="queryParams.eventNo" class="!w-180px" clearable /></el-form-item>
      <el-form-item label="类别"><el-select v-model="queryParams.category" class="!w-120px" clearable><el-option v-for="c in categoryOptions" :key="c.value" :label="c.label" :value="c.value" /></el-select></el-form-item>
      <el-form-item label="等级"><el-select v-model="queryParams.level" class="!w-100px" clearable><el-option :value="1" label="I级"/><el-option :value="2" label="II级"/><el-option :value="3" label="III级"/><el-option :value="4" label="IV级"/></el-select></el-form-item>
      <el-form-item label="状态"><el-select v-model="queryParams.status" class="!w-140px" clearable><el-option v-for="s in statusOptions" :key="s.value" :label="s.label" :value="s.value" /></el-select></el-form-item>
      <el-form-item label="时间"><el-date-picker v-model="queryParams.reportTime" type="daterange" start-placeholder="开始" end-placeholder="结束" value-format="YYYY-MM-DD HH:mm:ss" /></el-form-item>
      <el-form-item><el-button type="primary" @click="handleQuery"><Icon icon="ep:search" />查询</el-button><el-button @click="resetQuery"><Icon icon="ep:refresh" />重置</el-button></el-form-item>
    </el-form>
  </ContentWrap>

  <ContentWrap>
    <el-table v-loading="loading" :data="list">
      <el-table-column align="center" label="事件编号" prop="eventNo" width="180"><template #default="scope"><el-button link type="primary" @click="openDetail(scope.row)">{{ scope.row.eventNo }}</el-button></template></el-table-column>
      <el-table-column align="center" label="类别" prop="category" width="80"><template #default="scope"><el-tag size="small">{{ scope.row.category }}</el-tag></template></el-table-column>
      <el-table-column align="center" label="等级" prop="level" width="80"><template #default="scope"><el-tag :type="levelTag(scope.row.level)" size="small">{{ ['','I','II','III','IV'][scope.row.level] }}级</el-tag></template></el-table-column>
      <el-table-column align="center" label="状态" prop="status" width="120"><template #default="scope"><el-tag :type="statusTag(scope.row.status)" size="small">{{ statusName(scope.row.status) }}</el-tag></template></el-table-column>
      <el-table-column align="center" label="上报时间" prop="reportTime" width="170" :formatter="dateFormatter" />
      <el-table-column align="center" label="操作" width="80"><template #default="scope"><el-button link type="primary" @click="openDetail(scope.row)">详情</el-button></template></el-table-column>
    </el-table>
    <Pagination v-model:current-page="queryParams.pageNo" v-model:page-size="queryParams.pageSize" :total="total" @change="getList" />
  </ContentWrap>

  <EventDetail :visible="detailVisible" :event="detailEvent" @update:visible="detailVisible = $event" />
</template>

<script setup lang="ts">
import { getEventPage, getEvent } from '@/api/radiotherapy/event'
import { dateFormatter } from '@/utils/formatTime'
import EventDetail from '@/components/EventDetail/index.vue'

defineOptions({ name: 'RadiotherapyEventQuery' })

const categoryOptions = [{ label: '医疗', value: 'MEDICAL' },{ label: '护理', value: 'NURSING' },{ label: '院感', value: 'INFECTION' },{ label: '信息', value: 'INFO' },{ label: '器械', value: 'DEVICE' },{ label: '后勤', value: 'LOGISTICS' }]
const statusOptions = [{ label: '草稿', value: 0 },{ label: '待科室', value: 10 },{ label: '待职能部门', value: 20 },{ label: '待院领导', value: 30 },{ label: '待委员会', value: 40 },{ label: '已完成', value: 50 },{ label: '已退回', value: 60 },{ label: '已作废', value: 70 },{ label: '不属实', value: 80 }]
const levelTag = (l: number) => ({ 1: 'danger', 2: 'warning', 3: '', 4: 'info' } as any)[l] || 'info'
const statusName = (s: number) => statusOptions.find(v => v.value === s)?.label || '未知'
const statusTag = (s: number) => ({ 0: 'info', 10: 'warning', 20: 'warning', 30: 'warning', 40: 'warning', 50: 'success', 60: 'info', 70: 'info', 80: 'info' } as any)[s] || 'info'

const loading = ref(false), list = ref([]), total = ref(0)
const queryParams = reactive({ pageNo: 1, pageSize: 10, eventNo: '', category: '', level: undefined as number|undefined, status: undefined as number|undefined, reportTime: [] as string[] })

const handleQuery = () => { queryParams.pageNo = 1; getList() }
const resetQuery = () => { queryParams.eventNo = ''; queryParams.category = ''; queryParams.level = undefined; queryParams.status = undefined; queryParams.reportTime = []; handleQuery() }
const getList = async () => { loading.value = true; try { const res = await getEventPage({ ...queryParams, reportTime: queryParams.reportTime.length === 2 ? queryParams.reportTime : undefined }); list.value = res.list; total.value = res.total } finally { loading.value = false } }

const detailVisible = ref(false), detailEvent = ref<any>(null)
const openDetail = async (row: any) => { detailEvent.value = await getEvent(row.id); detailVisible.value = true }

onMounted(() => getList())
</script>
