<template>
  <el-row :gutter="16">
    <!-- 左侧分类树 -->
    <el-col :span="5">
      <ContentWrap title="事件分类">
        <el-tree
          :data="categoryTree"
          :props="{ label: 'label', children: 'children' }"
          default-expand-all
          highlight-current
          @node-click="handleCategoryClick"
        />
      </ContentWrap>
    </el-col>

    <!-- 右侧查询结果 -->
    <el-col :span="19">
      <!-- 状态 Tab -->
      <ContentWrap class="mb-16px">
        <el-tabs v-model="activeStatusTab" @tab-change="handleStatusChange">
          <el-tab-pane label="全部" name="all" />
          <el-tab-pane name="pending">
            <template #label>
              <el-badge :value="pendingCount" :hidden="pendingCount === 0" class="mr-4px">待处理</el-badge>
            </template>
          </el-tab-pane>
          <el-tab-pane label="已完成" name="completed" />
          <el-tab-pane label="已退回" name="returned" />
          <el-tab-pane label="已作废" name="voided" />
        </el-tabs>
      </ContentWrap>

      <!-- 搜索条件 -->
      <ContentWrap class="mb-16px">
        <el-form :inline="true" :model="queryParams">
          <el-form-item label="编号">
            <el-input v-model="queryParams.eventNo" class="!w-180px" clearable />
          </el-form-item>
          <el-form-item label="等级">
            <el-select v-model="queryParams.level" class="!w-100px" clearable>
              <el-option :value="1" label="I级" /><el-option :value="2" label="II级" />
              <el-option :value="3" label="III级" /><el-option :value="4" label="IV级" />
            </el-select>
          </el-form-item>
          <el-form-item label="时间">
            <el-date-picker v-model="queryParams.reportTime" type="daterange"
              start-placeholder="开始" end-placeholder="结束" value-format="YYYY-MM-DD HH:mm:ss" />
          </el-form-item>
          <el-form-item>
            <el-button type="primary" @click="handleQuery"><Icon icon="ep:search" />查询</el-button>
            <el-button @click="resetQuery"><Icon icon="ep:refresh" />重置</el-button>
          </el-form-item>
        </el-form>
      </ContentWrap>

      <!-- 结果表格 -->
      <ContentWrap>
        <el-table v-loading="loading" :data="list" stripe>
          <el-table-column align="center" label="事件编号" prop="eventNo" width="180">
            <template #default="scope">
              <el-button link type="primary" @click="openDetail(scope.row)">{{ scope.row.eventNo }}</el-button>
            </template>
          </el-table-column>
          <el-table-column align="center" label="类别" prop="category" width="80">
            <template #default="{ row }">
              <el-tag size="small">{{ categoryLabel(row.category) }}</el-tag>
            </template>
          </el-table-column>
          <el-table-column align="center" label="等级" prop="level" width="80">
            <template #default="{ row }">
              <el-tag :type="levelTag(row.level)" size="small">{{ ['','I','II','III','IV'][row.level] }}级</el-tag>
            </template>
          </el-table-column>
          <el-table-column align="center" label="状态" prop="status" width="120">
            <template #default="{ row }">
              <el-tag :type="statusTag(row.status)" size="small">{{ statusName(row.status) }}</el-tag>
            </template>
          </el-table-column>
          <el-table-column align="center" label="上报时间" prop="reportTime" width="170" :formatter="dateFormatter" />
          <el-table-column align="center" label="操作" width="80">
            <template #default="scope">
              <el-button link type="primary" @click="openDetail(scope.row)">详情</el-button>
            </template>
          </el-table-column>
        </el-table>
        <Pagination v-model:current-page="queryParams.pageNo" v-model:page-size="queryParams.pageSize"
          :total="total" @change="getList" />
      </ContentWrap>
    </el-col>
  </el-row>

  <EventDetail :visible="detailVisible" :event="detailEvent" @update:visible="detailVisible = $event" />
</template>

<script setup lang="ts">
import { getEventPage, getEvent } from '@/api/radiotherapy/event'
import { dateFormatter } from '@/utils/formatTime'
import EventDetail from '@/components/EventDetail/index.vue'

defineOptions({ name: 'RadiotherapyEventQuery' })

const categoryLabel = (c: string) => ({ MEDICAL: '医疗', NURSING: '护理', INFECTION: '院感', INFO: '信息', DEVICE: '器械', LOGISTICS: '后勤' } as any)[c] || c
const statusOptions = [
  { label: '草稿', value: 0 }, { label: '待科室', value: 10 }, { label: '待职能部门', value: 20 },
  { label: '待院领导', value: 30 }, { label: '待委员会', value: 40 }, { label: '已完成', value: 50 },
  { label: '已退回', value: 60 }, { label: '已作废', value: 70 }, { label: '不属实', value: 80 }
]
const levelTag = (l: number) => ({ 1: 'danger', 2: 'warning', 3: '', 4: 'info' } as any)[l] || 'info'
const statusName = (s: number) => statusOptions.find(v => v.value === s)?.label || '未知'
const statusTag = (s: number) => ({ 0: 'info', 10: 'warning', 20: 'warning', 30: 'warning', 40: 'warning', 50: 'success', 60: 'info', 70: 'info', 80: 'info' } as any)[s] || 'info'

// 分类树
const categoryTree = [
  { label: '全部分类', value: '' },
  { label: '医疗事件', value: 'MEDICAL' },
  { label: '护理事件', value: 'NURSING' },
  { label: '院感事件', value: 'INFECTION' },
  { label: '信息事件', value: 'INFO' },
  { label: '器械事件', value: 'DEVICE' },
  { label: '后勤事件', value: 'LOGISTICS' }
]

const activeStatusTab = ref('all')
const pendingCount = ref(0)
const selectedCategory = ref('')

const loading = ref(false), list = ref([]), total = ref(0)
const queryParams = reactive({
  pageNo: 1, pageSize: 10,
  eventNo: '', category: '', level: undefined as number | undefined,
  status: undefined as number | undefined, reportTime: [] as string[]
})

const handleCategoryClick = (data: any) => {
  selectedCategory.value = data.value || ''
  queryParams.category = selectedCategory.value
  handleQuery()
}

const handleStatusChange = (tab: string) => {
  const statusMap: Record<string, number | undefined> = {
    all: undefined, pending: 10, completed: 50, returned: 60, voided: 70
  }
  queryParams.status = statusMap[tab]
  handleQuery()
}

const handleQuery = () => { queryParams.pageNo = 1; getList() }
const resetQuery = () => {
  queryParams.eventNo = ''; queryParams.level = undefined; queryParams.reportTime = []
  queryParams.category = selectedCategory.value
  activeStatusTab.value = 'all'
  queryParams.status = undefined
  handleQuery()
}

const getList = async () => {
  loading.value = true
  try {
    const params: any = { ...queryParams }
    if (queryParams.reportTime?.length === 2) params.reportTime = queryParams.reportTime
    else delete params.reportTime
    const res = await getEventPage(params)
    list.value = res.list; total.value = res.total
  } finally { loading.value = false }
}

// 加载待处理数
const loadPendingCount = async () => {
  try {
    const res = await getEventPage({ pageNo: 1, pageSize: 1, status: 10 })
    pendingCount.value = res.total || 0
  } catch { /* ignore */ }
}

const detailVisible = ref(false), detailEvent = ref<any>(null)
const openDetail = async (row: any) => { detailEvent.value = await getEvent(row.id); detailVisible.value = true }

onMounted(() => { getList(); loadPendingCount() })
</script>
