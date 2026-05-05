<template>
  <ContentWrap title="院领导处理">
    <el-table v-loading="loading" :data="list">
      <el-table-column align="center" label="事件编号" prop="eventNo" width="180">
        <template #default="scope"><el-button link type="primary" @click="openDetail(scope.row)">{{ scope.row.eventNo }}</el-button></template>
      </el-table-column>
      <el-table-column align="center" label="类别" prop="category" width="80"><template #default="scope"><el-tag size="small">{{ scope.row.category }}</el-tag></template></el-table-column>
      <el-table-column align="center" label="等级" prop="level" width="80"><template #default="scope"><el-tag :type="levelTag(scope.row.level)" size="small">{{ ['','I','II','III','IV'][scope.row.level] }}级</el-tag></template></el-table-column>
      <el-table-column align="center" label="上报时间" prop="reportTime" width="170" :formatter="dateFormatter" />
      <el-table-column align="center" label="操作" width="300">
        <template #default="scope">
          <el-button link type="primary" @click="openProcess(scope.row)">处理完毕</el-button>
          <el-button link type="warning" @click="openCommittee(scope.row)">上报委员会</el-button>
        </template>
      </el-table-column>
    </el-table>
    <Pagination v-model:current-page="queryParams.pageNo" v-model:page-size="queryParams.pageSize" :total="total" @change="getList" />
  </ContentWrap>

  <el-dialog v-model="dialogVisible" title="院领导处理" width="500px">
    <el-form-item label="处理意见"><el-input v-model="form.opinion" type="textarea" :rows="3" /></el-form-item>
    <template #footer><el-button @click="dialogVisible = false">取消</el-button><el-button :loading="submitting" type="primary" @click="handleProcess">确定</el-button></template>
  </el-dialog>

  <el-dialog v-model="committeeVisible" title="上报委员会" width="400px">
    <el-form-item label="委员会ID"><el-input-number v-model="form.committeeId" :min="1" class="w-full" /></el-form-item>
    <el-form-item label="处理意见"><el-input v-model="form.opinion" type="textarea" :rows="2" /></el-form-item>
    <template #footer><el-button @click="committeeVisible = false">取消</el-button><el-button :loading="submitting" type="primary" @click="handleCommittee">确定</el-button></template>
  </el-dialog>

  <EventDetail :visible="detailVisible" :event="detailEvent" @update:visible="detailVisible = $event" />
</template>

<script setup lang="ts">
import { getEventPage, getEvent } from '@/api/radiotherapy/event'
import { handleEvent } from '@/api/radiotherapy/process'
import { dateFormatter } from '@/utils/formatTime'
import EventDetail from '@/components/EventDetail/index.vue'

defineOptions({ name: 'RadiotherapyLeaderProcess' })
const message = useMessage()
const levelTag = (l: number) => ({ 1: 'danger', 2: 'warning', 3: '', 4: 'info' } as any)[l] || 'info'

const loading = ref(false), list = ref([]), total = ref(0)
const queryParams = reactive({ pageNo: 1, pageSize: 10 })
const getList = async () => { loading.value = true; try { const res = await getEventPage({ ...queryParams, status: 30 }); list.value = res.list; total.value = res.total } finally { loading.value = false } }

const dialogVisible = ref(false), submitting = ref(false)
const form = reactive({ eventId: 0, opinion: '', committeeId: 0 })

const openProcess = (row: any) => { form.eventId = row.id; form.opinion = ''; dialogVisible.value = true }
const handleProcess = async () => { submitting.value = true; try { await handleEvent({ eventId: form.eventId, action: 'PROCESS', opinion: form.opinion }); message.success('处理完毕'); dialogVisible.value = false; getList() } finally { submitting.value = false } }

const committeeVisible = ref(false)
const openCommittee = (row: any) => { form.eventId = row.id; form.opinion = ''; form.committeeId = 0; committeeVisible.value = true }
const handleCommittee = async () => { submitting.value = true; try { await handleEvent({ eventId: form.eventId, action: 'TO_COMMITTEE', opinion: form.opinion, committeeId: form.committeeId }); message.success('已上报'); committeeVisible.value = false; getList() } finally { submitting.value = false } }

const detailVisible = ref(false), detailEvent = ref<any>(null)
const openDetail = async (row: any) => { detailEvent.value = await getEvent(row.id); detailVisible.value = true }
onMounted(() => getList())
</script>
