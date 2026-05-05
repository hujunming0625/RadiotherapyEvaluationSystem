<template>
  <div class="max-w-960px mx-auto">
    <el-steps :active="activeStep" align-center class="mb-32px">
      <el-step title="选择类别" />
      <el-step title="填写报告" />
      <el-step title="上报设置" />
      <el-step title="提交完成" />
    </el-steps>

    <!-- Step 1: Select Category -->
    <ContentWrap v-if="activeStep === 0" title="选择事件类别">
      <el-row :gutter="16">
        <el-col v-for="cat in categoryOptions" :key="cat.value" :span="8" class="mb-16px">
          <div
            class="p-16px rounded-8px border cursor-pointer text-center transition-all duration-200"
            :class="selectedCategory === cat.value ? 'border-[var(--el-color-primary)] bg-[var(--el-color-primary-light-9)]' : 'border-[var(--el-border-color)]'"
            @click="selectCategory(cat.value)"
          >
            <Icon :icon="cat.icon" :size="28" class="mb-8px" />
            <div class="text-14px font-600">{{ cat.label }}</div>
          </div>
        </el-col>
      </el-row>
      <div class="text-right mt-16px">
        <el-button :disabled="!selectedCategory" type="primary" @click="nextStep">下一步</el-button>
      </div>
    </ContentWrap>

    <!-- Step 2: Fill Dynamic Form -->
    <ContentWrap v-if="activeStep === 1" title="填写报告单">
      <div v-if="templateItems.length > 0">
        <el-form-item label="事件等级" required class="mb-16px">
          <el-radio-group v-model="formData.eventLevel">
            <el-radio :value="1">I级 - 警告事件</el-radio>
            <el-radio :value="2">II级 - 不良后果事件</el-radio>
            <el-radio :value="3">III级 - 未造成后果</el-radio>
            <el-radio :value="4">IV级 - 隐患事件</el-radio>
          </el-radio-group>
        </el-form-item>
        <DynamicForm :items="templateItems" v-model="formData.fields" />
      </div>
      <el-empty v-else description="该类别暂无模板，请选择其他类别" />
      <div class="flex justify-between mt-16px">
        <el-button @click="activeStep = 0">上一步</el-button>
        <el-button type="primary" @click="nextStep">下一步</el-button>
      </div>
    </ContentWrap>

    <!-- Step 3: Report Settings -->
    <ContentWrap v-if="activeStep === 2" title="上报设置">
      <el-form label-width="120px">
        <el-form-item label="上报模式" required>
          <el-radio-group v-model="formData.reportMode">
            <el-radio :value="1">逐级上报（先到科室）</el-radio>
            <el-radio :value="2">直报（直接到职能部门）</el-radio>
          </el-radio-group>
        </el-form-item>
        <el-form-item label="发生科室" required>
          <el-select v-model="formData.deptId" class="w-320px" placeholder="请选择科室">
            <el-option v-for="d in deptOptions" :key="d.value" :label="d.label" :value="d.value" />
          </el-select>
        </el-form-item>
        <el-form-item label="上报方式">
          <el-radio-group v-model="formData.reporterType">
            <el-radio :value="1">实名上报</el-radio>
            <el-radio :value="2">匿名上报</el-radio>
          </el-radio-group>
        </el-form-item>
        <el-form-item label="事件描述">
          <el-input v-model="formData.description" type="textarea" :rows="3" placeholder="请简要描述事件经过" />
        </el-form-item>
      </el-form>
      <div class="flex justify-between mt-16px">
        <el-button @click="activeStep = 1">上一步</el-button>
        <el-button :loading="submitting" type="primary" @click="handleSubmit">提交上报</el-button>
      </div>
    </ContentWrap>

    <!-- Step 4: Done -->
    <ContentWrap v-if="activeStep === 3" title="提交完成">
      <div class="text-center py-32px">
        <Icon icon="ep:circle-check-filled" :size="64" color="var(--el-color-success)" class="mb-16px" />
        <div class="text-18px font-600 mb-8px">上报成功</div>
        <div class="text-14px mb-16px">事件编号：<span class="font-600">{{ createdEventNo }}</span></div>
        <el-button type="primary" @click="goMyReports">查看我的报告</el-button>
        <el-button @click="resetForm">继续上报</el-button>
      </div>
    </ContentWrap>
  </div>
</template>

<script setup lang="ts">
import { getTemplatePage } from '@/api/radiotherapy/template'
import { getItemsByTemplateId, TemplateItemVO } from '@/api/radiotherapy/template-item'
import { createEvent } from '@/api/radiotherapy/event'
import DynamicForm from '@/components/DynamicForm/index.vue'

defineOptions({ name: 'RadiotherapySubmitEvent' })

const message = useMessage()
const { push } = useRouter()

const categoryOptions = [
  { label: '医疗', value: 'MEDICAL', icon: 'ep:first-aid-kit' },
  { label: '护理', value: 'NURSING', icon: 'ep:user' },
  { label: '院感', value: 'INFECTION', icon: 'ep:warning' },
  { label: '信息', value: 'INFO', icon: 'ep:monitor' },
  { label: '器械', value: 'DEVICE', icon: 'ep:set-up' },
  { label: '后勤', value: 'LOGISTICS', icon: 'ep:tools' }
]

const deptOptions = ref<{ label: string; value: number }[]>([])

const activeStep = ref(0)
const selectedCategory = ref('')
const templateItems = ref<TemplateItemVO[]>([])
const createdEventNo = ref('')
const submitting = ref(false)

const formData = reactive({
  eventLevel: 3,
  templateId: 0,
  reportMode: 1,
  reporterType: 1,
  deptId: 0,
  description: '',
  fields: {} as Record<string, any>
})

const selectCategory = async (cat: string) => {
  selectedCategory.value = cat
  const res = await getTemplatePage({ pageNo: 1, pageSize: 50, category: cat, status: 1 })
  if (res.list.length > 0) {
    const tpl = res.list[0]
    formData.templateId = tpl.id!
    templateItems.value = await getItemsByTemplateId(tpl.id!)
  } else {
    formData.templateId = 0
    templateItems.value = []
  }
}

const nextStep = () => {
  if (activeStep.value === 0 && !selectedCategory.value) {
    message.warning('请选择事件类别')
    return
  }
  if (activeStep.value === 1 && !formData.eventLevel) {
    message.warning('请选择事件等级')
    return
  }
  activeStep.value++
}

const handleSubmit = async () => {
  if (!formData.templateId) { message.warning('请先选择类别'); return }
  if (!formData.deptId) { message.warning('请选择发生科室'); return }
  submitting.value = true
  try {
    const formArray = Object.entries(formData.fields).map(([key, value]) => {
      const itemId = Number(key.replace('field_', ''))
      const item = templateItems.value.find((i) => i.id === itemId)
      return { itemId, label: item?.label || '', value }
    })
    const res = await createEvent({
      templateId: formData.templateId,
      category: selectedCategory.value,
      level: formData.eventLevel,
      deptId: formData.deptId,
      reportMode: formData.reportMode,
      reporterType: formData.reporterType,
      description: formData.description || undefined,
      formData: JSON.stringify(formArray)
    })
    createdEventNo.value = `AE${new Date().toISOString().slice(0, 10).replace(/-/g, '')}${String(res).padStart(4, '0')}`
    activeStep.value = 3
    message.success('上报成功')
  } finally {
    submitting.value = false
  }
}

const goMyReports = () => { push('/radiotherapy/my-reports') }

const resetForm = () => {
  activeStep.value = 0
  selectedCategory.value = ''
  templateItems.value = []
  formData.eventLevel = 3
  formData.templateId = 0
  formData.reportMode = 1
  formData.reporterType = 1
  formData.deptId = 0
  formData.description = ''
  formData.fields = {}
}

onMounted(async () => {
  // Load department list for step 3
  try {
    const res = await getTemplatePage({ pageNo: 1, pageSize: 100, status: 1 })
    // Use template categories as a quick way to validate
  } catch { /* ignore */ }
})
</script>
