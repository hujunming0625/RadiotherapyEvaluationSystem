<template>
  <ContentWrap>
    <el-form :inline="true" :model="queryParams" class="-mb-15px" label-width="68px">
      <el-form-item label="模板名称" prop="name">
        <el-input v-model="queryParams.name" clearable placeholder="请输入模板名称" @keyup.enter="handleQuery" />
      </el-form-item>
      <el-form-item label="类别" prop="category">
        <el-select v-model="queryParams.category" class="!w-160px" clearable placeholder="请选择类别">
          <el-option v-for="item in categoryOptions" :key="item.value" :label="item.label" :value="item.value" />
        </el-select>
      </el-form-item>
      <el-form-item label="状态" prop="status">
        <el-select v-model="queryParams.status" class="!w-120px" clearable placeholder="请选择状态">
          <el-option label="启用" :value="1" />
          <el-option label="禁用" :value="0" />
        </el-select>
      </el-form-item>
      <el-form-item>
        <el-button @click="handleQuery">
          <Icon class="mr-5px" icon="ep:search" />搜索
        </el-button>
        <el-button @click="resetQuery">
          <Icon class="mr-5px" icon="ep:refresh" />重置
        </el-button>
        <el-button plain type="primary" @click="openDialog('create')">
          <Icon class="mr-5px" icon="ep:plus" />新增
        </el-button>
      </el-form-item>
    </el-form>
  </ContentWrap>

  <ContentWrap>
    <el-table v-loading="loading" :data="list">
      <el-table-column align="center" label="模板名称" prop="name" show-overflow-tooltip min-width="160" />
      <el-table-column align="center" label="类别" prop="category" width="100">
        <template #default="scope">
          <el-tag size="small">{{ categoryMap[scope.row.category] || scope.row.category }}</el-tag>
        </template>
      </el-table-column>
      <el-table-column align="center" label="状态" prop="status" width="80">
        <template #default="scope">
          <el-tag :type="scope.row.status === 1 ? 'success' : 'info'" size="small">
            {{ scope.row.status === 1 ? '启用' : '禁用' }}
          </el-tag>
        </template>
      </el-table-column>
      <el-table-column align="center" label="排序" prop="sort" width="70" />
      <el-table-column align="center" label="创建时间" prop="createTime" width="170" :formatter="dateFormatter" />
      <el-table-column align="center" label="操作" width="280" fixed="right">
        <template #default="scope">
          <el-button link type="primary" @click="openDialog('edit', scope.row)">编辑</el-button>
          <el-button link type="primary" @click="goTemplateItem(scope.row)">配置项</el-button>
          <el-button link type="danger" @click="handleDelete(scope.row.id)">删除</el-button>
        </template>
      </el-table-column>
    </el-table>
    <Pagination v-model:current-page="queryParams.pageNo" v-model:page-size="queryParams.pageSize" :total="total" @change="getList" />
  </ContentWrap>

  <el-dialog v-model="dialogVisible" :title="dialogTitle" width="500px">
    <el-form ref="formRef" :model="form" :rules="rules" label-width="100px">
      <el-form-item label="模板名称" prop="name">
        <el-input v-model="form.name" placeholder="请输入模板名称" />
      </el-form-item>
      <el-form-item label="类别" prop="category">
        <el-select v-model="form.category" class="w-full" placeholder="请选择类别">
          <el-option v-for="item in categoryOptions" :key="item.value" :label="item.label" :value="item.value" />
        </el-select>
      </el-form-item>
      <el-form-item label="描述" prop="description">
        <el-input v-model="form.description" placeholder="请输入模板说明" />
      </el-form-item>
      <el-form-item label="状态" prop="status">
        <el-radio-group v-model="form.status">
          <el-radio :value="1">启用</el-radio>
          <el-radio :value="0">禁用</el-radio>
        </el-radio-group>
      </el-form-item>
      <el-form-item label="排序号" prop="sort">
        <el-input-number v-model="form.sort" :min="0" :max="999" />
      </el-form-item>
    </el-form>
    <template #footer>
      <el-button @click="dialogVisible = false">取消</el-button>
      <el-button :loading="submitting" type="primary" @click="handleSubmit">确定</el-button>
    </template>
  </el-dialog>
</template>

<script setup lang="ts">
import { getTemplatePage, getTemplate, createTemplate, updateTemplate, deleteTemplate } from '@/api/radiotherapy/template'
import { dateFormatter } from '@/utils/formatTime'

defineOptions({ name: 'RadiotherapyTemplate' })

const message = useMessage()

const categoryOptions = [
  { label: '医疗', value: 'MEDICAL' },
  { label: '护理', value: 'NURSING' },
  { label: '院感', value: 'INFECTION' },
  { label: '信息', value: 'INFO' },
  { label: '器械', value: 'DEVICE' },
  { label: '后勤', value: 'LOGISTICS' }
]
const categoryMap: Record<string, string> = Object.fromEntries(categoryOptions.map((v) => [v.value, v.label]))

const loading = ref(false)
const list = ref([])
const total = ref(0)
const queryParams = reactive({ pageNo: 1, pageSize: 10, name: '', category: '', status: undefined as number | undefined })

const handleQuery = () => {
  queryParams.pageNo = 1
  getList()
}
const resetQuery = () => {
  queryParams.pageNo = 1
  queryParams.pageSize = 10
  queryParams.name = ''
  queryParams.category = ''
  queryParams.status = undefined
  getList()
}

const getList = async () => {
  loading.value = true
  try {
    const res = await getTemplatePage(queryParams)
    list.value = res.list
    total.value = res.total
  } finally {
    loading.value = false
  }
}

const dialogVisible = ref(false)
const dialogTitle = ref('新增报告单模板')
const submitting = ref(false)
const formRef = ref()
const form = reactive({ id: 0, name: '', category: '', description: '', status: 1, sort: 0 })
const isEdit = ref(false)

const rules = {
  name: [{ required: true, message: '请输入模板名称', trigger: 'blur' }],
  category: [{ required: true, message: '请选择类别', trigger: 'change' }]
}

const openDialog = async (type: string, row?: any) => {
  isEdit.value = type === 'edit'
  dialogTitle.value = isEdit.value ? '编辑报告单模板' : '新增报告单模板'
  if (row) {
    const res = await getTemplate(row.id)
    form.id = res.id
    form.name = res.name
    form.category = res.category
    form.description = res.description || ''
    form.status = res.status
    form.sort = res.sort || 0
  } else {
    form.id = 0
    form.name = ''
    form.category = ''
    form.description = ''
    form.status = 1
    form.sort = 0
  }
  dialogVisible.value = true
}

const handleSubmit = async () => {
  const valid = await formRef.value?.validate().catch(() => false)
  if (!valid) return
  submitting.value = true
  try {
    if (isEdit.value) {
      await updateTemplate({ ...form })
      message.success('更新成功')
    } else {
      await createTemplate({ ...form })
      message.success('新增成功')
    }
    dialogVisible.value = false
    getList()
  } finally {
    submitting.value = false
  }
}

const handleDelete = async (id: number) => {
  await message.delConfirm('确认删除该模板？删除后不可恢复。')
  await deleteTemplate(id)
  message.success('删除成功')
  getList()
}

const { push } = useRouter()
const goTemplateItem = (row: any) => {
  push({ name: 'RadiotherapyTemplateItem', query: { templateId: row.id, templateName: row.name } })
}

onMounted(() => { getList() })
</script>
