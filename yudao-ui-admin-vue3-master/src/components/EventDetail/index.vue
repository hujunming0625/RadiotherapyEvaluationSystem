<template>
  <el-dialog :model-value="visible" title="事件详情" width="800px" @update:model-value="$emit('update:visible', $event)">
    <template v-if="eventData">
      <div ref="printArea">
        <el-descriptions :column="2" border size="small" class="mb-16px">
          <el-descriptions-item label="事件编号">{{ eventData.eventNo }}</el-descriptions-item>
          <el-descriptions-item label="事件类别">
            <el-tag size="small">{{ categoryLabel(eventData.category) }}</el-tag>
          </el-descriptions-item>
          <el-descriptions-item label="事件等级">
            <el-tag :type="levelTag(eventData.level)" size="small">{{ ['','I','II','III','IV'][eventData.level] }}级</el-tag>
          </el-descriptions-item>
          <el-descriptions-item label="当前状态">
            <el-tag :type="statusTag(eventData.status)" size="small">{{ statusLabel(eventData.status) }}</el-tag>
          </el-descriptions-item>
          <el-descriptions-item label="上报时间">{{ formatDate(eventData.reportTime) }}</el-descriptions-item>
          <el-descriptions-item label="上报方式">{{ eventData.reporterType === 1 ? '实名' : '匿名' }}</el-descriptions-item>
          <el-descriptions-item v-if="eventData.deptName" label="发生科室">{{ eventData.deptName }}</el-descriptions-item>
          <el-descriptions-item v-if="eventData.description" label="事件描述" :span="2">{{ eventData.description }}</el-descriptions-item>
        </el-descriptions>

        <!-- 动态表单数据 -->
        <div v-if="formFields.length > 0" class="mb-16px">
          <div class="text-15px font-600 mb-12px">填报内容</div>
          <el-descriptions :column="2" border size="small">
            <el-descriptions-item v-for="field in formFields" :key="field.itemId" :label="field.label">
              <template v-if="Array.isArray(field.value)">
                <span v-for="(v, i) in field.value" :key="i">{{ v }}{{ i < field.value.length - 1 ? '、' : '' }}</span>
              </template>
              <template v-else>{{ field.value ?? '-' }}</template>
            </el-descriptions-item>
          </el-descriptions>
        </div>

        <!-- 附件 -->
        <div v-if="attachments.length > 0" class="mb-16px">
          <div class="text-15px font-600 mb-12px">附件材料</div>
          <div v-for="att in attachments" :key="att.id" class="flex items-center py-4px">
            <el-icon class="mr-8px text-gray-400"><Document /></el-icon>
            <span class="text-14px">{{ att.fileName }}</span>
            <span class="text-12px text-gray-400 ml-8px">({{ formatSize(att.fileSize) }})</span>
          </div>
        </div>

        <!-- 流程记录 -->
        <div class="text-15px font-600 mb-12px">处理流程</div>
        <FlowTimeline :flows="eventData.flows" />
      </div>
    </template>
    <el-empty v-else description="加载中..." />
    <template #footer>
      <el-button v-if="eventData" @click="notifyVisible = true">
        <el-icon class="mr-4px"><Promotion /></el-icon>告知
      </el-button>
      <el-button v-if="eventData" type="primary" plain @click="handlePrint">
        <el-icon class="mr-4px"><Printer /></el-icon>打印
      </el-button>
      <el-button @click="$emit('update:visible', false)">关闭</el-button>
    </template>
  </el-dialog>
  <EventNotify v-if="eventData" v-model:visible="notifyVisible" :event-id="eventData.id" :dept-options="deptOptions" />
</template>

<script setup lang="ts">
import { computed, ref, watch } from 'vue'
import dayjs from 'dayjs'
import { Printer, Promotion, Document } from '@element-plus/icons-vue'
import FlowTimeline from '@/components/FlowTimeline/index.vue'
import EventNotify from '@/components/EventNotify/index.vue'
import * as attachmentApi from '@/api/radiotherapy/attachment'

defineOptions({ name: 'EventDetail' })

const props = defineProps<{
  visible: boolean
  event?: any
}>()

defineEmits<{ 'update:visible': [boolean] }>()

const printArea = ref<HTMLElement>()
const notifyVisible = ref(false)
const attachments = ref<attachmentApi.AttachmentVO[]>([])

watch(() => props.event, async (ev) => {
  if (ev?.id) {
    try { attachments.value = await attachmentApi.getAttachments(ev.id) } catch { attachments.value = [] }
  } else {
    attachments.value = []
  }
}, { immediate: true })

// 科室选项
const deptOptions = [
  { label: '肿瘤放疗科', value: 200 },
  { label: '肿瘤内科', value: 201 },
  { label: '肿瘤外科', value: 202 },
  { label: '护理部', value: 203 },
  { label: '药剂科', value: 204 },
  { label: '医务处', value: 205 },
  { label: '质管办', value: 206 },
  { label: '院感管理科', value: 207 },
  { label: '设备科', value: 208 },
  { label: '后勤保障科', value: 209 }
]
const eventData = computed(() => props.event || null)

const formFields = computed(() => {
  if (!eventData.value?.formData) return []
  try {
    const parsed = JSON.parse(eventData.value.formData)
    if (Array.isArray(parsed)) return parsed
    return []
  } catch {
    return []
  }
})

const handlePrint = () => {
  if (!printArea.value) return
  const printWindow = window.open('', '_blank')
  if (!printWindow) return
  printWindow.document.write(`
    <html><head><title>事件详情 - ${eventData.value?.eventNo || ''}</title>
    <style>
      body { font-family: "Microsoft YaHei", sans-serif; padding: 20px; color: #333; }
      table { width: 100%; border-collapse: collapse; margin-bottom: 16px; }
      th, td { border: 1px solid #ddd; padding: 8px 12px; text-align: left; font-size: 13px; }
      th { background: #f5f5f5; font-weight: 600; width: 140px; }
      .title { font-size: 16px; font-weight: 600; margin-bottom: 12px; }
      .flow-item { margin-bottom: 8px; font-size: 13px; }
      .flow-action { font-weight: 600; }
      @media print { body { padding: 0; } }
    </style></head><body>
    <h2 style="text-align:center;margin-bottom:20px;">不良事件报告 - ${eventData.value?.eventNo || ''}</h2>
    ${printArea.value.innerHTML}
    </body></html>`)
  printWindow.document.close()
  printWindow.print()
}

const formatDate = (v: any) => v ? dayjs(v).format('YYYY-MM-DD HH:mm:ss') : ''
const formatSize = (bytes: number) => {
  if (bytes < 1024) return bytes + ' B'
  if (bytes < 1048576) return (bytes / 1024).toFixed(1) + ' KB'
  return (bytes / 1048576).toFixed(1) + ' MB'
}

const categoryLabel = (c: string) => ({ MEDICAL: '医疗', NURSING: '护理', INFECTION: '院感', INFO: '信息', DEVICE: '器械', LOGISTICS: '后勤' } as any)[c] || c
const levelTag = (l: number) => ({ 1: 'danger', 2: 'warning', 3: '', 4: 'info' } as any)[l] || 'info'
const statusLabel = (s: number) => ({ 0: '草稿', 10: '待科室', 20: '待职能部门', 30: '待院领导', 40: '待委员会', 50: '完成', 60: '已退回', 70: '已作废', 80: '不属实' } as any)[s] || '未知'
const statusTag = (s: number) => ({ 0: 'info', 10: 'warning', 20: 'warning', 30: 'warning', 40: 'warning', 50: 'success', 60: 'info', 70: 'info', 80: 'info' } as any)[s] || 'info'
</script>
