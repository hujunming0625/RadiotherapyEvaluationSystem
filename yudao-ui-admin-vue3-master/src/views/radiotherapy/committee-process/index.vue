<template>
  <ContentWrap title="质量委员会处理">
    <el-table v-loading="loading" :data="list">
      <el-table-column align="center" label="事件编号" prop="eventNo" width="180">
        <template #default="scope"><el-button link type="primary" @click="openDetail(scope.row)">{{ scope.row.eventNo }}</el-button></template>
      </el-table-column>
      <el-table-column align="center" label="类别" prop="category" width="80"><template #default="scope"><el-tag size="small">{{ scope.row.category }}</el-tag></template></el-table-column>
      <el-table-column align="center" label="等级" prop="level" width="80"><template #default="scope"><el-tag :type="levelTag(scope.row.level)" size="small">{{ ['','I','II','III','IV'][scope.row.level] }}级</el-tag></template></el-table-column>
      <el-table-column align="center" label="上报时间" prop="reportTime" width="170" :formatter="dateFormatter" />
      <el-table-column align="center" label="操作" width="150">
        <template #default="scope">
          <el-button link type="primary" @click="openProcess(scope.row)">汇总处理</el-button>
        </template>
      </el-table-column>
    </el-table>
    <Pagination v-model:current-page="queryParams.pageNo" v-model:page-size="queryParams.pageSize" :total="total" @change="getList" />
  </ContentWrap>

  <el-dialog v-model="dialogVisible" title="委员会汇总处理" width="500px">
    <el-form-item label="最终意见"><el-input v-model="form.opinion" type="textarea" :rows="3" /></el-form-item>
    <template #footer><el-button @click="dialogVisible = false">取消</el-button><el-button :loading="submitting" type="primary" @click="handleProcess">确定处理完毕</el-button></template>
  </el-dialog>

  <EventDetail :visible="detailVisible" :event="detailEvent" @update:visible="detailVisible = $event" />
</template>

<script setup lang="ts">
import { getEventPage, getEvent } from '@/api/radiotherapy/event'
import { handleEvent } from '@/api/radiotherapy/process'
import { dateFormatter } from '@/utils/formatTime'
import EventDetail from '@/components/EventDetail/index.vue'

defineOptions({ name: 'RadiotherapyCommitteeProcess' })
const message = useMessage()
const levelTag = (l: number) => ({ 1: 'danger', 2: 'warning', 3: '', 4: 'info' } as any)[l] || 'info'

const loading = ref(false), list = ref([]), total = ref(0)
const queryParams = reactive({ pageNo: 1, pageSize: 10 })
const getList = async () => { loading.value = true; try { const res = await getEventPage({ ...queryParams, status: 40 }); list.value = res.list; total.value = res.total } finally { loading.value = false } }

const dialogVisible = ref(false), submitting = ref(false)
const form = reactive({ eventId: 0, opinion: '' })

const openProcess = (row: any) => { form.eventId = row.id; form.opinion = ''; dialogVisible.value = true }
const handleProcess = async () => { submitting.value = true; try { await handleEvent({ eventId: form.eventId, action: 'PROCESS', opinion: form.opinion }); message.success('处理完毕'); dialogVisible.value = false; getList() } finally { submitting.value = false } }

const detailVisible = ref(false), detailEvent = ref<any>(null)
const openDetail = async (row: any) => { detailEvent.value = await getEvent(row.id); detailVisible.value = true }
onMounted(() => getList())
</script>
