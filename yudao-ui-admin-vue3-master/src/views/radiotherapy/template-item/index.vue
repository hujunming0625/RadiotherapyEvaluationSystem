<template>
  <div class="mb-16px flex items-center gap-12px">
    <el-button @click="goBack"><Icon class="mr-5px" icon="ep:arrow-left" />返回模板列表</el-button>
    <span class="text-16px font-600">模板：{{ templateName }}</span>
  </div>

  <el-row :gutter="16">
    <el-col :span="8">
      <ContentWrap title="字段列表">
        <div v-loading="loading">
          <div
            v-for="(item, index) in itemList"
            :key="item.id"
            class="flex items-center gap-8px p-10px mb-6px rounded-6px cursor-pointer border border-[var(--el-border-color)]"
            :class="{ 'border-[var(--el-color-primary)] bg-[var(--el-color-primary-light-9)]': selectedId === item.id }"
            @click="selectItem(item)"
          >
            <Icon icon="ep:rank" class="text-[var(--el-text-color-secondary)]" />
            <span class="flex-1 text-14px">{{ item.label }}</span>
            <el-tag size="small" type="info">{{ item.fieldType }}</el-tag>
            <span v-if="item.required === 1" class="text-[var(--el-color-danger)]">*</span>
            <span class="text-12px text-[var(--el-text-color-disabled)]">#{{ index }}</span>
          </div>
          <el-empty v-if="!loading && itemList.length === 0" description="暂无字段" />
          <el-button class="mt-8px w-full" @click="addItem">+ 新增字段</el-button>
        </div>
      </ContentWrap>
    </el-col>
    <el-col :span="16">
      <ContentWrap title="字段配置">
        <el-form v-if="selectedItem" :model="editForm" label-width="100px">
          <el-form-item label="字段标签" required>
            <el-input v-model="editForm.label" placeholder="请输入字段标签" />
          </el-form-item>
          <el-form-item label="字段类型" required>
            <el-select v-model="editForm.fieldType" class="w-full" @change="onFieldTypeChange">
              <el-option v-for="ft in fieldTypeOptions" :key="ft.value" :label="ft.label" :value="ft.value" />
            </el-select>
          </el-form-item>
          <el-form-item label="是否必填">
            <el-switch v-model="editForm.required" :active-value="1" :inactive-value="0" />
          </el-form-item>
          <el-form-item label="占位提示">
            <el-input v-model="editForm.placeholder" placeholder="输入占位提示文字" />
          </el-form-item>
          <el-form-item label="默认值">
            <el-input v-model="editForm.defaultValue" placeholder="输入默认值" />
          </el-form-item>
          <el-form-item v-if="needsOptions" label="选项配置">
            <el-tabs v-model="optionsTab">
              <el-tab-pane label="自定义选项" name="custom">
                <div v-for="(opt, idx) in parsedOptions" :key="idx" class="flex items-center gap-8px mb-8px">
                  <el-input v-model="opt.label" placeholder="标签" size="small" class="w-120px" />
                  <el-input v-model="opt.value" placeholder="值" size="small" class="w-120px" />
                  <el-button link type="danger" size="small" @click="removeOption(idx)"><Icon icon="ep:delete" /></el-button>
                </div>
                <el-button size="small" @click="addOption">+ 添加选项</el-button>
              </el-tab-pane>
              <el-tab-pane label="字典数据" name="dict">
                <el-select v-model="editForm.dictType" class="w-full" clearable placeholder="选择字典类型" />
              </el-tab-pane>
            </el-tabs>
          </el-form-item>
          <div class="flex gap-12px">
            <el-button type="primary" @click="saveItem">保存</el-button>
            <el-button v-if="selectedItem.id" type="danger" @click="deleteSelectedItem">删除</el-button>
          </div>
        </el-form>
        <el-empty v-else description="请选择左侧字段进行编辑" />
      </ContentWrap>
    </el-col>
  </el-row>
</template>

<script setup lang="ts">
import { getTemplate } from '@/api/radiotherapy/template'
import { getItemsByTemplateId, createItem, updateItem, deleteItem, TemplateItemVO } from '@/api/radiotherapy/template-item'

defineOptions({ name: 'RadiotherapyTemplateItem' })

const message = useMessage()
const { push } = useRouter()
const route = useRoute()

const templateId = Number(route.query.templateId) || 0
const templateName = ref((route.query.templateName as string) || '未知模板')

const fieldTypeOptions = [
  { label: '单行文本', value: 'TEXT' }, { label: '多行文本', value: 'TEXTAREA' },
  { label: '日期选择', value: 'DATE' }, { label: '日期时间', value: 'DATETIME' },
  { label: '单选', value: 'RADIO' }, { label: '多选', value: 'CHECKBOX' },
  { label: '下拉选择', value: 'SELECT' }, { label: '数字', value: 'NUMBER' },
  { label: '文件上传', value: 'FILE' }, { label: '富文本', value: 'RICH_TEXT' }
]

const needsOptions = computed(() => ['RADIO', 'CHECKBOX', 'SELECT'].includes(editForm.fieldType))
const parsedOptions = computed({
  get: () => { try { return JSON.parse(editForm.options || '[]') } catch { return [] } },
  set: (v) => { editForm.options = JSON.stringify(v) }
})

// Item list
const loading = ref(false)
const itemList = ref<TemplateItemVO[]>([])
const selectedId = ref(0)
const selectedItem = ref<TemplateItemVO | null>(null)
const editForm = reactive({ id: 0, label: '', fieldType: 'TEXT', required: 0, placeholder: '', defaultValue: '', options: '', dictType: '', sort: 0 })
const optionsTab = ref('custom')

const fetchItems = async () => {
  loading.value = true
  try { itemList.value = await getItemsByTemplateId(templateId) } finally { loading.value = false }
}

const selectItem = (item: TemplateItemVO) => {
  selectedId.value = item.id!
  selectedItem.value = item
  Object.assign(editForm, {
    id: item.id, label: item.label, fieldType: item.fieldType,
    required: item.required || 0, placeholder: item.placeholder || '',
    defaultValue: item.defaultValue || '', options: item.options || '', dictType: item.dictType || ''
  })
  optionsTab.value = item.dictType ? 'dict' : 'custom'
}

const onFieldTypeChange = () => {
  if (!needsOptions.value) {
    editForm.options = ''
    editForm.dictType = ''
  }
}

const addItem = async () => {
  try {
    await createItem({ templateId, label: '新字段', fieldType: 'TEXT', required: 0, sort: itemList.value.length })
    message.success('新增字段')
    fetchItems()
  } catch { /* handled by interceptor */ }
}

const saveItem = async () => {
  if (!editForm.label.trim()) { message.warning('请输入字段标签'); return }
  try {
    if (editForm.id) {
      await updateItem({ ...editForm, templateId })
      message.success('保存成功')
    } else {
      await createItem({ ...editForm, templateId, sort: itemList.value.length })
      message.success('创建成功')
    }
    fetchItems()
  } catch { /* handled by interceptor */ }
}

const deleteSelectedItem = async () => {
  if (!selectedItem.value?.id) return
  await message.delConfirm('确认删除该字段？')
  await deleteItem(selectedItem.value.id)
  message.success('删除成功')
  selectedItem.value = null; selectedId.value = 0
  fetchItems()
}

const addOption = () => { parsedOptions.value = [...parsedOptions.value, { label: '', value: '' }] }
const removeOption = (idx: number) => { const opts = parsedOptions.value; opts.splice(idx, 1); parsedOptions.value = opts }

const goBack = () => { push('/radiotherapy/template') }

onMounted(async () => {
  if (!templateId) { message.warning('缺少模板参数'); goBack(); return }
  try {
    const t = await getTemplate(templateId)
    templateName.value = t.name
  } catch { /* ignore */ }
  fetchItems()
})
</script>
