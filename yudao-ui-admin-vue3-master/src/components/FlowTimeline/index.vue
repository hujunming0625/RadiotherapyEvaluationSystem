<template>
  <el-timeline v-if="flows && flows.length > 0">
    <el-timeline-item
      v-for="flow in flows"
      :key="flow.id"
      :timestamp="formatTime(flow.handleTime || flow.createTime)"
      :color="actionColor(flow.action)"
      placement="top"
    >
      <div class="text-14px">
        <span class="font-600">{{ actionLabel(flow.action) }}</span>
        <span class="text-[var(--el-text-color-secondary)] ml-8px">({{ statusLabel(flow.toStatus) }})</span>
      </div>
      <div v-if="flow.opinion" class="text-13px mt-4px text-[var(--el-text-color-regular)]">{{ flow.opinion }}</div>
      <div v-if="flow.cause" class="text-12px text-[var(--el-text-color-secondary)]">原因: {{ flow.cause }}</div>
    </el-timeline-item>
  </el-timeline>
  <el-empty v-else description="暂无流程记录" />
</template>

<script setup lang="ts">
import dayjs from 'dayjs'

defineOptions({ name: 'FlowTimeline' })
defineProps<{ flows?: any[] }>()

const formatTime = (v: any) => {
  if (!v) return ''
  return dayjs(v).format('YYYY-MM-DD HH:mm:ss')
}

const actionLabel = (a: string) => ({ SUBMIT: '提交上报', PROCESS: '处理', RETURN: '退回', VOID: '作废', NOT_TRUE: '认定不属实', TRANSFER: '批转', TO_COMMITTEE: '上报委员会', INTERVENE: '领导干预' } as any)[a] || a
const actionColor = (a: string) => ({ SUBMIT: '#0891B2', PROCESS: '#22C55E', RETURN: '#F59E0B', VOID: '#DC2626', NOT_TRUE: '#6B7280', TRANSFER: '#8B5CF6', TO_COMMITTEE: '#EC4899', INTERVENE: '#F97316' } as any)[a] || '#6B7280'
const statusLabel = (s: number) => ({ 0: '草稿', 10: '待科室', 20: '待职能部门', 30: '待院领导', 40: '待委员会', 50: '完成', 60: '已退回', 70: '已作废', 80: '不属实' } as any)[s] || '未知'
</script>
