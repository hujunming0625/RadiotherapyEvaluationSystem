import request from '@/config/axios'

export interface TemplateVO {
  id?: number
  name: string
  category: string
  status: number
  description?: string
  sort?: number
  createTime?: Date
}

export const getTemplatePage = (params: PageParam & { name?: string; category?: string; status?: number }) =>
  request.get({ url: '/radiotherapy/template/page', params })

export const getTemplate = (id: number) =>
  request.get({ url: '/radiotherapy/template/get?id=' + id })

export const createTemplate = (data: TemplateVO) =>
  request.post({ url: '/radiotherapy/template/create', data })

export const updateTemplate = (data: TemplateVO) =>
  request.put({ url: '/radiotherapy/template/update', data })

export const deleteTemplate = (id: number) =>
  request.delete({ url: '/radiotherapy/template/delete?id=' + id })
