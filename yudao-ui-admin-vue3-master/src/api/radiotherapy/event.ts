import request from '@/config/axios'

export interface EventVO {
  id?: number
  eventNo?: string
  templateId: number
  category: string
  level: number
  status?: number
  reporterId?: number
  reporterType?: number
  reportTime?: string
  deptId: number
  deptName?: string
  description?: string
  formData?: string
  currentHandlerId?: number
  currentDeptId?: number
  reportMode: number
  createTime?: string
  flows?: EventFlowVO[]
}

export interface EventFlowVO {
  id: number
  eventId: number
  fromStatus: number
  toStatus: number
  handlerId: number
  action: string
  opinion?: string
  cause?: string
  damageLevel?: number
  needTrack?: number
  handleTime: string
}

export interface EventCreateReq {
  templateId: number
  category: string
  level: number
  deptId: number
  description?: string
  formData?: string
  reportMode: number
  reporterType: number
}

export const createEvent = (data: EventCreateReq) =>
  request.post({ url: '/radiotherapy/event/create', data })

export const getEventPage = (params: PageParam & Record<string, any>) =>
  request.get({ url: '/radiotherapy/event/page', params })

export const getEvent = (id: number) =>
  request.get({ url: '/radiotherapy/event/get?id=' + id })

export const withdrawEvent = (id: number) =>
  request.delete({ url: '/radiotherapy/event/withdraw?id=' + id })
