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
        <el-radio v-for="opt in resolveOptions(item)" :key="opt.value" :value="opt.value">{{ opt.label }}</el-radio>
      </el-radio-group>
      <!-- CHECKBOX -->
      <el-checkbox-group v-else-if="item.fieldType === 'CHECKBOX'" v-model="formData['field_' + item.id]">
        <el-checkbox v-for="opt in resolveOptions(item)" :key="opt.value" :value="opt.value">{{ opt.label }}</el-checkbox>
      </el-checkbox-group>
      <!-- SELECT -->
      <el-select
        v-else-if="item.fieldType === 'SELECT'"
        v-model="formData['field_' + item.id]"
        :placeholder="item.placeholder || '请选择'"
        clearable
        class="w-full"
      >
        <el-option v-for="opt in resolveOptions(item)" :key="opt.value" :label="opt.label" :value="opt.value" />
      </el-select>
      <!-- NUMBER -->
      <el-input-number
        v-else-if="item.fieldType === 'NUMBER'"
        v-model="formData['field_' + item.id]"
        :placeholder="item.placeholder || '请输入数字'"
        class="w-full"
      />
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
import { getDictDataByType } from '@/api/system/dict/dict.data'

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

// 字典缓存
const dictCache = new Map<string, { label: string; value: string }[]>()

const getOptions = (item: TemplateItemVO): { label: string; value: string }[] => {
  if (item.options) {
    try { return JSON.parse(item.options) } catch { return [] }
  }
  return []
}

const resolveOptions = (item: TemplateItemVO): { label: string; value: string }[] => {
  // 优先使用静态 options
  const staticOpts = getOptions(item)
  if (staticOpts.length > 0) return staticOpts
  // 其次从字典加载
  if (item.dictType && dictCache.has(item.dictType)) {
    return dictCache.get(item.dictType)!
  }
  return []
}

// 预加载字典数据
const loadDictData = async () => {
  const dictTypes = new Set<string>()
  for (const item of props.items) {
    if (item.dictType && !item.options) {
      dictTypes.add(item.dictType)
    }
  }
  for (const dictType of dictTypes) {
    if (!dictCache.has(dictType)) {
      try {
        const data = await getDictDataByType(dictType)
        const options = (data || []).map((d: any) => ({ label: d.label, value: d.value }))
        dictCache.set(dictType, options)
      } catch {
        dictCache.set(dictType, [])
      }
    }
  }
}

watch(() => props.items, () => { loadDictData() }, { immediate: true })
</script>
