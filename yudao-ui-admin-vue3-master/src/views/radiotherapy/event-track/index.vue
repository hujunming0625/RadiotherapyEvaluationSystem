<template>
  <ContentWrap title="事件追踪">
    <el-form :inline="true" :model="queryParams" class="mb-16px">
      <el-form-item label="事件编号"><el-input v-model="queryParams.eventNo" class="!w-180px" clearable /></el-form-item>
      <el-form-item label="追踪状态"><el-select v-model="queryParams.status" class="!w-120px" clearable><el-option :value="1" label="追踪中"/><el-option :value="2" label="已完成"/></el-select></el-form-item>
      <el-form-item><el-button type="primary" @click="handleQuery"><Icon icon="ep:search" />查询</el-button></el-form-item>
    </el-form>
  </ContentWrap>

  <ContentWrap>
    <el-table v-loading="loading" :data="list">
      <el-table-column align="center" label="事件编号" prop="eventNo" width="180" />
      <el-table-column align="center" label="追踪时间" prop="trackTime" width="170" :formatter="dateFormatter" />
      <el-table-column align="center" label="提醒时间" prop="remindTime" width="170" :formatter="dateFormatter" />
      <el-table-column align="center" label="状态" prop="status" width="100">
        <template #default="scope"><el-tag :type="scope.row.status === 1 ? 'warning' : 'success'" size="small">{{ scope.row.status === 1 ? '追踪中' : '已完成' }}</el-tag></template>
      </el-table-column>
      <el-table-column align="center" label="内容" prop="content" show-overflow-tooltip />
      <el-table-column align="center" label="操作" width="200">
        <template #default="scope">
          <el-button link type="primary" @click="openForm('edit', scope.row)">编辑</el-button>
          <el-button link type="danger" @click="handleDelete(scope.row.id)">删除</el-button>
        </template>
      </el-table-column>
    </el-table>
    <Pagination v-model:current-page="queryParams.pageNo" v-model:page-size="queryParams.pageSize" :total="total" @change="getList" />
  </ContentWrap>

  <el-dialog v-model="dialogVisible" :title="isEdit ? '编辑追踪' : '新增追踪'" width="500px">
    <el-form :model="form" label-width="100px">
      <el-form-item label="事件ID" required><el-input-number v-model="form.eventId" :min="1" class="w-full" /></el-form-item>
      <el-form-item label="追踪时间"><el-date-picker v-model="form.trackTime" type="datetime" value-format="YYYY-MM-DD HH:mm:ss" class="w-full" /></el-form-item>
      <el-form-item label="提醒时间"><el-date-picker v-model="form.remindTime" type="datetime" value-format="YYYY-MM-DD HH:mm:ss" class="w-full" /></el-form-item>
      <el-form-item label="追踪记录"><el-input v-model="form.content" type="textarea" :rows="3" /></el-form-item>
    </el-form>
    <template #footer><el-button @click="dialogVisible = false">取消</el-button><el-button :loading="submitting" type="primary" @click="handleSubmit">确定</el-button></template>
  </el-dialog>
</template>

<script setup lang="ts">
import { getTrackPage, createTrack, updateTrack, deleteTrack } from '@/api/radiotherapy/track'
import { dateFormatter } from '@/utils/formatTime'

defineOptions({ name: 'RadiotherapyEventTrack' })
const message = useMessage()

const loading = ref(false), list = ref([]), total = ref(0)
const queryParams = reactive({ pageNo: 1, pageSize: 10, eventNo: '', status: undefined as number|undefined })
const handleQuery = () => { queryParams.pageNo = 1; getList() }
const getList = async () => { loading.value = true; try { const res = await getTrackPage(queryParams); list.value = res.list; total.value = res.total } finally { loading.value = false } }

const dialogVisible = ref(false), submitting = ref(false), isEdit = ref(false)
const form = reactive({ id: 0, eventId: 0, trackTime: '', remindTime: '', content: '' })

const openForm = (type: string, row?: any) => { isEdit.value = type === 'edit'; if (row) { Object.assign(form, { id: row.id, eventId: row.eventId, trackTime: row.trackTime||'', remindTime: row.remindTime||'', content: row.content||'' }) } else { Object.assign(form, { id: 0, eventId: 0, trackTime: '', remindTime: '', content: '' }) } dialogVisible.value = true }
const handleSubmit = async () => { submitting.value = true; try { isEdit.value ? await updateTrack({ ...form }) : await createTrack({ ...form, status: 1 }); message.success(isEdit.value?'更新成功':'创建成功'); dialogVisible.value = false; getList() } finally { submitting.value = false } }
const handleDelete = async (id: number) => { await message.delConfirm(); await deleteTrack(id); message.success('删除成功'); getList() }

onMounted(() => getList())
</script>
