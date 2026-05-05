<template>
  <el-dialog :model-value="visible" title="事件详情" width="800px" @update:model-value="$emit('update:visible', $event)">
    <template v-if="eventData">
      <el-descriptions :column="2" border size="small" class="mb-16px">
        <el-descriptions-item label="事件编号">{{ eventData.eventNo }}</el-descriptions-item>
        <el-descriptions-item label="事件类别">
          <el-tag size="small">{{ eventData.category }}</el-tag>
        </el-descriptions-item>
        <el-descriptions-item label="事件等级">
          <el-tag :type="levelTag(eventData.level)" size="small">{{ ['','I','II','III','IV'][eventData.level] }}级</el-tag>
        </el-descriptions-item>
        <el-descriptions-item label="当前状态">
          <el-tag size="small">{{ statusLabel(eventData.status) }}</el-tag>
        </el-descriptions-item>
        <el-descriptions-item label="上报时间">{{ formatDate(eventData.reportTime) }}</el-descriptions-item>
        <el-descriptions-item label="上报方式">{{ eventData.reporterType === 1 ? '实名' : '匿名' }}</el-descriptions-item>
        <el-descriptions-item v-if="eventData.description" label="事件描述" :span="2">{{ eventData.description }}</el-descriptions-item>
      </el-descriptions>
      <FlowTimeline :flows="eventData.flows" />
    </template>
    <el-empty v-else description="加载中..." />
  </el-dialog>
</template>

<script setup lang="ts">
import { computed } from 'vue'
import dayjs from 'dayjs'
import FlowTimeline from '@/components/FlowTimeline/index.vue'

defineOptions({ name: 'EventDetail' })

const formatDate = (v: any) => {
  if (!v) return ''
  return dayjs(v).format('YYYY-MM-DD HH:mm:ss')
}

const props = defineProps<{
  visible: boolean
  event?: any
  templateItems?: any[]
}>()

defineEmits<{ 'update:visible': [boolean] }>()

const eventData = computed(() => props.event || null)

const levelTag = (l: number) => ({ 1: 'danger', 2: 'warning', 3: '', 4: 'info' } as any)[l] || 'info'
const statusLabel = (s: number) => ({ 0: '草稿', 10: '待科室', 20: '待职能部门', 30: '待院领导', 40: '待委员会', 50: '完成', 60: '已退回', 70: '已作废', 80: '不属实' } as any)[s] || '未知'
</script>
