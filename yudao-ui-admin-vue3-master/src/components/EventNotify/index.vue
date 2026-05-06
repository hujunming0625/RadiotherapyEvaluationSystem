<template>
  <el-dialog :model-value="visible" title="事件告知" width="500px" @update:model-value="$emit('update:visible', $event)">
    <el-form ref="formRef" :model="formData" :rules="rules" label-width="100px">
      <el-form-item label="告知科室" prop="deptId">
        <el-select v-model="formData.deptId" placeholder="选择要告知的科室" class="w-full">
          <el-option v-for="d in deptOptions" :key="d.value" :label="d.label" :value="d.value" />
        </el-select>
      </el-form-item>
      <el-form-item label="告知内容">
        <el-input v-model="formData.content" type="textarea" :rows="3" placeholder="请输入告知内容（选填）" />
      </el-form-item>
    </el-form>

    <!-- 已告知列表 -->
    <div v-if="notifies.length > 0" class="mt-16px">
      <div class="text-14px font-600 mb-8px">已告知科室</div>
      <el-table :data="notifies" size="small" stripe>
        <el-table-column prop="deptName" label="科室" width="120" />
        <el-table-column prop="content" label="内容" show-overflow-tooltip />
        <el-table-column prop="status" label="状态" width="80">
          <template #default="{ row }">
            <el-tag :type="row.status === 1 ? 'success' : 'warning'" size="small">
              {{ row.status === 1 ? '已读' : '未读' }}
            </el-tag>
          </template>
        </el-table-column>
        <el-table-column prop="createTime" label="时间" width="160" />
      </el-table>
    </div>

    <template #footer>
      <el-button @click="$emit('update:visible', false)">取消</el-button>
      <el-button :loading="submitting" type="primary" @click="handleSubmit">发送告知</el-button>
    </template>
  </el-dialog>
</template>

<script setup lang="ts">
import { ref, reactive, watch } from 'vue'
import { createEventNotify, getEventNotifies } from '@/api/radiotherapy/notify'

const props = defineProps<{
  visible: boolean
  eventId: number
  deptOptions: { label: string; value: number }[]
}>()

const emit = defineEmits<{ 'update:visible': [boolean] }>()

const message = useMessage()
const formRef = ref()
const submitting = ref(false)
const notifies = ref<any[]>([])

const formData = reactive({
  deptId: undefined as number | undefined,
  content: ''
})

const rules = {
  deptId: [{ required: true, message: '请选择告知科室', trigger: 'change' }]
}

const loadNotifies = async () => {
  if (!props.eventId) return
  try {
    notifies.value = await getEventNotifies(props.eventId) || []
  } catch { /* ignore */ }
}

const handleSubmit = async () => {
  const valid = await formRef.value?.validate().catch(() => false)
  if (!valid) return
  submitting.value = true
  try {
    await createEventNotify(props.eventId, formData.deptId!, formData.content || undefined)
    message.success('告知发送成功')
    formData.deptId = undefined
    formData.content = ''
    await loadNotifies()
  } catch (e: any) {
    message.error(e?.message || '发送失败')
  } finally {
    submitting.value = false
  }
}

watch(() => props.visible, (v) => { if (v) loadNotifies() })
</script>
