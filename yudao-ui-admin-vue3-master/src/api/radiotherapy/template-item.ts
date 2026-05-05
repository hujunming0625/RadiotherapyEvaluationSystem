import request from '@/config/axios'

export interface TemplateItemVO {
  id?: number
  templateId: number
  label: string
  fieldType: string
  required?: number
  options?: string
  dictType?: string
  placeholder?: string
  defaultValue?: string
  sort?: number
  createTime?: Date
}

export const getItemsByTemplateId = (templateId: number) =>
  request.get({ url: '/radiotherapy/template-item/list', params: { templateId } })

export const createItem = (data: TemplateItemVO) =>
  request.post({ url: '/radiotherapy/template-item/create', data })

export const updateItem = (data: TemplateItemVO) =>
  request.put({ url: '/radiotherapy/template-item/update', data })

export const deleteItem = (id: number) =>
  request.delete({ url: '/radiotherapy/template-item/delete?id=' + id })

export const getItem = (id: number) =>
  request.get({ url: '/radiotherapy/template-item/get?id=' + id })

export const updateItemSort = (ids: number[]) =>
  request.put({ url: '/radiotherapy/template-item/sort', data: ids })
