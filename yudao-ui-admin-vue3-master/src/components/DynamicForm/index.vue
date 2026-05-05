<template>
  <el-form ref="formRef" :model="formData" :disabled="disabled" label-width="140px">
    <el-form-item
      v-for="item in items"
      :key="item.id"
      :label="item.label"
      :required="item.required === 1"
      :prop="'field_' + item.id"
    >
      <!-- TEXT -->
      <el-input
        v-if="item.fieldType === 'TEXT'"
        v-model="formData['field_' + item.id]"
        :placeholder="item.placeholder || '请输入' + item.label"
      />
      <!-- TEXTAREA -->
      <el-input
        v-else-if="item.fieldType === 'TEXTAREA'"
        v-model="formData['field_' + item.id]"
        type="textarea"
        :rows="4"
        :placeholder="item.placeholder || '请输入' + item.label"
      />
      <!-- DATE -->
      <el-date-picker
        v-else-if="item.fieldType === 'DATE'"
        v-model="formData['field_' + item.id]"
        type="date"
        value-format="YYYY-MM-DD"
        :placeholder="item.placeholder || '请选择日期'"
        class="w-full"
      />
      <!-- DATETIME -->
      <el-date-picker
        v-else-if="item.fieldType === 'DATETIME'"
        v-model="formData['field_' + item.id]"
        type="datetime"
        value-format="YYYY-MM-DD HH:mm:ss"
        :placeholder="item.placeholder || '请选择日期时间'"
        class="w-full"
      />
      <!-- RADIO -->
      <el-radio-group v-else-if="item.fieldType === 'RADIO'" v-model="formData['field_' + item.id]">
        <el-radio v-for="opt in getOptions(item)" :key="opt.value" :value="opt.value">{{ opt.label }}</el-radio>
      </el-radio-group>
      <!-- CHECKBOX -->
      <el-checkbox-group v-else-if="item.fieldType === 'CHECKBOX'" v-model="formData['field_' + item.id]">
        <el-checkbox v-for="opt in getOptions(item)" :key="opt.value" :value="opt.value">{{ opt.label }}</el-checkbox>
      </el-checkbox-group>
      <!-- SELECT -->
      <el-select
        v-else-if="item.fieldType === 'SELECT'"
        v-model="formData['field_' + item.id]"
        :placeholder="item.placeholder || '请选择'"
        clearable
        class="w-full"
      >
        <el-option v-for="opt in getOptions(item)" :key="opt.value" :label="opt.label" :value="opt.value" />
      </el-select>
      <!-- NUMBER -->
      <el-input-number
        v-else-if="item.fieldType === 'NUMBER'"
        v-model="formData['field_' + item.id]"
        :placeholder="item.placeholder || '请输入数字'"
        class="w-full"
      />
      <!-- FILE -->
      <el-upload
        v-else-if="item.fieldType === 'FILE'"
        :auto-upload="false"
        :limit="5"
        :placeholder="item.placeholder"
      >
        <el-button>选择文件</el-button>
      </el-upload>
      <!-- RICH_TEXT -->
      <div v-else-if="item.fieldType === 'RICH_TEXT'" class="w-full border rounded-4px p-8px min-h-120px">
        <el-input
          v-model="formData['field_' + item.id]"
          type="textarea"
          :rows="6"
          :placeholder="item.placeholder || '请输入' + item.label"
        />
        <span class="text-12px text-[var(--el-text-color-disabled)]">V1 使用多行文本，V2 接入富文本编辑器</span>
      </div>
      <!-- Default: TEXT -->
      <el-input
        v-else
        v-model="formData['field_' + item.id]"
        :placeholder="item.placeholder || '请输入' + item.label"
      />
    </el-form-item>
  </el-form>
</template>

<script setup lang="ts">
import type { TemplateItemVO } from '@/api/radiotherapy/template-item'

defineOptions({ name: 'DynamicForm' })

const props = defineProps<{
  items: TemplateItemVO[]
  modelValue: Record<string, any>
  disabled?: boolean
}>()

const emit = defineEmits<{ 'update:modelValue': [value: Record<string, any>] }>()

const formData = computed({
  get: () => props.modelValue,
  set: (v) => emit('update:modelValue', v)
})

const getOptions = (item: TemplateItemVO): { label: string; value: string }[] => {
  if (item.options) {
    try { return JSON.parse(item.options) } catch { return [] }
  }
  return []
}
</script>
