<template>
  <ContentWrap title="职能部门处理">
    <el-table v-loading="loading" :data="list">
      <el-table-column align="center" label="事件编号" prop="eventNo" width="180">
        <template #default="scope"><el-button link type="primary" @click="openDetail(scope.row)">{{ scope.row.eventNo }}</el-button></template>
      </el-table-column>
      <el-table-column align="center" label="类别" prop="category" width="80"><template #default="scope"><el-tag size="small">{{ scope.row.category }}</el-tag></template></el-table-column>
      <el-table-column align="center" label="等级" prop="level" width="80"><template #default="scope"><el-tag :type="levelTag(scope.row.level)" size="small">{{ ['','I','II','III','IV'][scope.row.level] }}级</el-tag></template></el-table-column>
      <el-table-column align="center" label="上报时间" prop="reportTime" width="170" :formatter="dateFormatter" />
      <el-table-column align="center" label="操作" width="320">
        <template #default="scope">
          <el-button link type="primary" @click="openProcess(scope.row)">处理</el-button>
          <el-button link type="warning" @click="doAction(scope.row.id, 'RETURN')">退回</el-button>
          <el-button link type="danger" @click="doAction(scope.row.id, 'VOID')">作废</el-button>
          <el-button link @click="doAction(scope.row.id, 'NOT_TRUE')">不属实</el-button>
          <el-button link @click="openTransfer(scope.row)">批转</el-button>
        </template>
      </el-table-column>
    </el-table>
    <Pagination v-model:current-page="queryParams.pageNo" v-model:page-size="queryParams.pageSize" :total="total" @change="getList" />
  </ContentWrap>

  <el-dialog v-model="dialogVisible" title="处理事件" width="500px">
    <el-form :model="form" label-width="100px">
      <el-form-item label="损害程度"><el-select v-model="form.damageLevel" class="w-full"><el-option :value="0" label="无伤害"/><el-option :value="1" label="轻度"/><el-option :value="2" label="中度"/><el-option :value="3" label="重度"/><el-option :value="4" label="死亡"/></el-select></el-form-item>
      <el-form-item label="事件原因"><el-input v-model="form.cause" /></el-form-item>
      <el-form-item label="处理意见"><el-input v-model="form.opinion" type="textarea" :rows="3" /></el-form-item>
      <el-form-item label="是否追踪"><el-switch v-model="form.needTrack" :active-value="1" :inactive-value="0" /></el-form-item>
    </el-form>
    <template #footer><el-button @click="dialogVisible = false">取消</el-button><el-button :loading="submitting" type="primary" @click="handleProcess">确定处理</el-button></template>
  </el-dialog>

  <el-dialog v-model="actionDialogVisible" title="操作确认" width="400px">
    <el-input v-model="form.opinion" type="textarea" :rows="2" :placeholder="'请输入' + currentAction + '原因'" />
    <template #footer><el-button @click="actionDialogVisible = false">取消</el-button><el-button :loading="submitting" type="primary" @click="handleAction">确定</el-button></template>
  </el-dialog>

  <el-dialog v-model="transferVisible" title="批转" width="400px">
    <el-form-item label="目标部门ID"><el-input-number v-model="form.transferDeptId" :min="1" class="w-full" /></el-form-item>
    <el-form-item label="批转原因"><el-input v-model="form.opinion" type="textarea" :rows="2" /></el-form-item>
    <template #footer><el-button @click="transferVisible = false">取消</el-button><el-button :loading="submitting" type="primary" @click="handleTransfer">确定</el-button></template>
  </el-dialog>

  <EventDetail :visible="detailVisible" :event="detailEvent" @update:visible="detailVisible = $event" />
</template>

<script setup lang="ts">
import { getEventPage, getEvent } from '@/api/radiotherapy/event'
import { handleEvent } from '@/api/radiotherapy/process'
import { dateFormatter } from '@/utils/formatTime'
import EventDetail from '@/components/EventDetail/index.vue'

defineOptions({ name: 'RadiotherapyFuncProcess' })
const message = useMessage()
const levelTag = (l: number) => ({ 1: 'danger', 2: 'warning', 3: '', 4: 'info' } as any)[l] || 'info'

const loading = ref(false), list = ref([]), total = ref(0)
const queryParams = reactive({ pageNo: 1, pageSize: 10 })
const getList = async () => { loading.value = true; try { const res = await getEventPage({ ...queryParams, status: 20 }); list.value = res.list; total.value = res.total } finally { loading.value = false } }

const dialogVisible = ref(false), submitting = ref(false)
const form = reactive({ eventId: 0, opinion: '', cause: '', damageLevel: 0, needTrack: 0, transferDeptId: 0 })

const openProcess = (row: any) => { Object.assign(form, { eventId: row.id, opinion: '', cause: '', damageLevel: 0, needTrack: 0 }); dialogVisible.value = true }
const handleProcess = async () => { submitting.value = true; try { await handleEvent({ eventId: form.eventId, action: 'PROCESS', opinion: form.opinion, cause: form.cause, damageLevel: form.damageLevel, needTrack: form.needTrack }); message.success('处理完成'); dialogVisible.value = false; getList() } finally { submitting.value = false } }

const actionDialogVisible = ref(false), currentAction = ref('')
const doAction = (eventId: number, action: string) => { form.eventId = eventId; currentAction.value = action; form.opinion = ''; actionDialogVisible.value = true }
const handleAction = async () => { submitting.value = true; try { await handleEvent({ eventId: form.eventId, action: currentAction.value, opinion: form.opinion }); message.success('操作完成'); actionDialogVisible.value = false; getList() } finally { submitting.value = false } }

const transferVisible = ref(false)
const openTransfer = (row: any) => { form.eventId = row.id; form.opinion = ''; form.transferDeptId = 0; transferVisible.value = true }
const handleTransfer = async () => { submitting.value = true; try { await handleEvent({ eventId: form.eventId, action: 'TRANSFER', opinion: form.opinion, transferDeptId: form.transferDeptId }); message.success('批转完成'); transferVisible.value = false; getList() } finally { submitting.value = false } }

const detailVisible = ref(false), detailEvent = ref<any>(null)
const openDetail = async (row: any) => { detailEvent.value = await getEvent(row.id); detailVisible.value = true }
onMounted(() => getList())
</script>
