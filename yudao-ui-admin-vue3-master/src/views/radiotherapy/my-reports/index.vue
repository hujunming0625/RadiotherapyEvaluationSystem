<template>
  <ContentWrap>
    <el-tabs v-model="activeTab" @tab-change="handleTabChange">
      <el-tab-pane v-for="tab in tabs" :key="tab.status" :name="String(tab.status)">
        <template #label>
          <span>{{ tab.label }}<el-badge v-if="tab.count !== undefined" :value="tab.count" class="ml-8px" /></span>
        </template>
      </el-tab-pane>
    </el-tabs>

    <el-form :inline="true" :model="queryParams" class="mt-16px">
      <el-form-item label="类别">
        <el-select v-model="queryParams.category" class="!w-140px" clearable placeholder="全部" @change="handleQuery">
          <el-option v-for="c in categoryOptions" :key="c.value" :label="c.label" :value="c.value" />
        </el-select>
      </el-form-item>
      <el-form-item label="等级">
        <el-select v-model="queryParams.level" class="!w-140px" clearable placeholder="全部" @change="handleQuery">
          <el-option :value="1" label="I级" />
          <el-option :value="2" label="II级" />
          <el-option :value="3" label="III级" />
          <el-option :value="4" label="IV级" />
        </el-select>
      </el-form-item>
      <el-form-item label="时间">
        <el-date-picker v-model="queryParams.reportTime" type="daterange" start-placeholder="开始" end-placeholder="结束" value-format="YYYY-MM-DD HH:mm:ss" @change="handleQuery" />
      </el-form-item>
      <el-form-item>
        <el-button @click="handleQuery"><Icon class="mr-5px" icon="ep:search" />查询</el-button>
        <el-button @click="resetQuery"><Icon class="mr-5px" icon="ep:refresh" />重置</el-button>
      </el-form-item>
    </el-form>
  </ContentWrap>

  <ContentWrap>
    <el-table v-loading="loading" :data="list" @row-click="(row: any) => viewDetail(row.id)" class="cursor-pointer">
      <el-table-column align="center" label="事件编号" prop="eventNo" width="180">
        <template #default="scope">
          <el-button link type="primary">{{ scope.row.eventNo }}</el-button>
        </template>
      </el-table-column>
      <el-table-column align="center" label="类别" prop="category" width="90">
        <template #default="scope">
          <el-tag size="small">{{ categoryMap[scope.row.category] || scope.row.category }}</el-tag>
        </template>
      </el-table-column>
      <el-table-column align="center" label="等级" prop="level" width="80">
        <template #default="scope">
          <el-tag :type="levelTagType(scope.row.level)" size="small">{{ 'I'.repeat(0) }}{{ ['', 'I', 'II', 'III', 'IV'][scope.row.level] }}级</el-tag>
        </template>
      </el-table-column>
      <el-table-column align="center" label="状态" prop="status" width="120">
        <template #default="scope">
          <el-tag :type="statusTagType(scope.row.status)" size="small">{{ statusName(scope.row.status) }}</el-tag>
        </template>
      </el-table-column>
      <el-table-column align="center" label="科室" prop="deptId" width="120" />
      <el-table-column align="center" label="上报时间" prop="reportTime" width="170" :formatter="dateFormatter" />
      <el-table-column align="center" label="操作" width="140" fixed="right">
        <template #default="scope">
          <el-button link type="primary" @click.stop="viewDetail(scope.row.id)">查看</el-button>
          <el-button v-if="scope.row.status === 0 || scope.row.status === 10" link type="danger" @click.stop="handleWithdraw(scope.row.id)">撤回</el-button>
        </template>
      </el-table-column>
    </el-table>
    <Pagination v-model:current-page="queryParams.pageNo" v-model:page-size="queryParams.pageSize" :total="total" @change="getList" />
  </ContentWrap>
</template>

<script setup lang="ts">
import { getEventPage, withdrawEvent } from '@/api/radiotherapy/event'
import { dateFormatter } from '@/utils/formatTime'

defineOptions({ name: 'RadiotherapyMyReports' })

const message = useMessage()
const { push } = useRouter()

const categoryOptions = [
  { label: '医疗', value: 'MEDICAL' }, { label: '护理', value: 'NURSING' },
  { label: '院感', value: 'INFECTION' }, { label: '信息', value: 'INFO' },
  { label: '器械', value: 'DEVICE' }, { label: '后勤', value: 'LOGISTICS' }
]
const categoryMap: Record<string, string> = Object.fromEntries(categoryOptions.map((v) => [v.value, v.label]))

const levelTagType = (l: number) => ({ 1: 'danger', 2: 'warning', 3: '', 4: 'info' } as any)[l] || 'info'
const statusName = (s: number) => ({ 0: '草稿', 10: '待科室处理', 20: '待职能部门', 30: '待院领导', 40: '待委员会', 50: '已完成', 60: '已退回', 70: '已作废', 80: '不属实' } as any)[s] || '未知'
const statusTagType = (s: number) => ({ 0: 'info', 10: 'warning', 20: 'warning', 30: 'warning', 40: 'warning', 50: 'success', 60: 'info', 70: 'info', 80: 'info' } as any)[s] || 'info'

const tabs = [
  { label: '全部', status: '' },
  { label: '草稿', status: '0' },
  { label: '处理中', status: '10' },
  { label: '已完成', status: '50' },
  { label: '已退回', status: '60' }
]
const activeTab = ref('')
const loading = ref(false)
const list = ref([])
const total = ref(0)
const queryParams = reactive({ pageNo: 1, pageSize: 10, category: '', level: undefined as number | undefined, status: undefined as number | undefined, reportTime: [] as string[] })

const handleTabChange = () => {
  queryParams.status = activeTab.value ? Number(activeTab.value) : undefined
  queryParams.pageNo = 1
  getList()
}

const handleQuery = () => { queryParams.pageNo = 1; getList() }

const resetQuery = () => {
  queryParams.category = ''
  queryParams.level = undefined
  queryParams.reportTime = []
  activeTab.value = ''
  queryParams.status = undefined
  getList()
}

const getList = async () => {
  loading.value = true
  try {
    const res = await getEventPage({
      ...queryParams,
      reportTime: queryParams.reportTime.length === 2 ? queryParams.reportTime : undefined
    })
    list.value = res.list
    total.value = res.total
  } finally { loading.value = false }
}

const viewDetail = (id: number) => { push('/radiotherapy/event-query?eventId=' + id) }
const handleWithdraw = async (id: number) => {
  await message.delConfirm('确认撤回该事件？')
  await withdrawEvent(id)
  message.success('已撤回')
  getList()
}

onMounted(() => { getList() })
</script>
