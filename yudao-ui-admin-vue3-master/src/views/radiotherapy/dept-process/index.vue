<template>
  <ContentWrap title="科室处理">
    <el-table v-loading="loading" :data="list">
      <el-table-column align="center" label="事件编号" prop="eventNo" width="180">
        <template #default="scope"><el-button link type="primary" @click="openDetail(scope.row)">{{ scope.row.eventNo }}</el-button></template>
      </el-table-column>
      <el-table-column align="center" label="类别" prop="category" width="80"><template #default="scope"><el-tag size="small">{{ scope.row.category }}</el-tag></template></el-table-column>
      <el-table-column align="center" label="等级" prop="level" width="80"><template #default="scope"><el-tag :type="levelTag(scope.row.level)" size="small">{{ ['','I','II','III','IV'][scope.row.level] }}级</el-tag></template></el-table-column>
      <el-table-column align="center" label="上报时间" prop="reportTime" width="170" :formatter="dateFormatter" />
      <el-table-column align="center" label="操作" width="220">
        <template #default="scope">
          <el-button link type="primary" @click="openProcess(scope.row)">处理</el-button>
          <el-button link type="warning" @click="doAction(scope.row.id, 'RETURN')">退回</el-button>
          <el-button link type="danger" @click="doAction(scope.row.id, 'VOID')">作废</el-button>
        </template>
      </el-table-column>
    </el-table>
    <Pagination v-model:current-page="queryParams.pageNo" v-model:page-size="queryParams.pageSize" :total="total" @change="getList" />
  </ContentWrap>

  <el-dialog v-model="dialogVisible" title="处理事件" width="500px">
    <el-form :model="form" label-width="100px">
      <el-form-item label="处理意见"><el-input v-model="form.opinion" type="textarea" :rows="3" /></el-form-item>
      <el-form-item label="事件原因"><el-input v-model="form.cause" placeholder="如: medication_error" /></el-form-item>
      <el-form-item label="下一处理人ID"><el-input-number v-model="form.nextHandlerId" :min="1" /></el-form-item>
    </el-form>
    <template #footer>
      <el-button @click="dialogVisible = false">取消</el-button>
      <el-button :loading="submitting" type="primary" @click="handleProcess">确定处理</el-button>
    </template>
  </el-dialog>

  <el-dialog v-model="actionDialogVisible" title="操作确认" width="400px">
    <el-input v-model="form.opinion" type="textarea" :rows="2" :placeholder="'请输入' + currentAction + '原因'" />
    <template #footer>
      <el-button @click="actionDialogVisible = false">取消</el-button>
      <el-button :loading="submitting" type="primary" @click="handleAction">确定</el-button>
    </template>
  </el-dialog>

  <EventDetail :visible="detailVisible" :event="detailEvent" @update:visible="detailVisible = $event" />
</template>

<script setup lang="ts">
import { getEventPage, getEvent } from '@/api/radiotherapy/event'
import { handleEvent } from '@/api/radiotherapy/process'
import { dateFormatter } from '@/utils/formatTime'
import EventDetail from '@/components/EventDetail/index.vue'

defineOptions({ name: 'RadiotherapyDeptProcess' })

const message = useMessage()
const levelTag = (l: number) => ({ 1: 'danger', 2: 'warning', 3: '', 4: 'info' } as any)[l] || 'info'

const loading = ref(false), list = ref([]), total = ref(0)
const queryParams = reactive({ pageNo: 1, pageSize: 10 })
const getList = async () => {
  loading.value = true
  try { const res = await getEventPage({ ...queryParams, status: 10 }); list.value = res.list; total.value = res.total } finally { loading.value = false }
}

const dialogVisible = ref(false), submitting = ref(false), currentEvent = ref<any>(null)
const form = reactive({ eventId: 0, opinion: '', cause: '', nextHandlerId: 0 })

const openProcess = (row: any) => { currentEvent.value = row; form.eventId = row.id; form.opinion = ''; form.cause = ''; form.nextHandlerId = 0; dialogVisible.value = true }
const handleProcess = async () => { submitting.value = true; try { await handleEvent({ eventId: form.eventId, action: 'PROCESS', opinion: form.opinion, cause: form.cause, nextHandlerId: form.nextHandlerId || undefined }); message.success('处理完成'); dialogVisible.value = false; getList() } finally { submitting.value = false } }

const actionDialogVisible = ref(false), currentAction = ref('')
const doAction = (eventId: number, action: string) => { form.eventId = eventId; currentAction.value = action; form.opinion = ''; actionDialogVisible.value = true }
const handleAction = async () => { submitting.value = true; try { await handleEvent({ eventId: form.eventId, action: currentAction.value, opinion: form.opinion }); message.success('操作完成'); actionDialogVisible.value = false; getList() } finally { submitting.value = false } }

const detailVisible = ref(false), detailEvent = ref<any>(null)
const openDetail = async (row: any) => { detailEvent.value = await getEvent(row.id); detailVisible.value = true }

onMounted(() => getList())
</script>
