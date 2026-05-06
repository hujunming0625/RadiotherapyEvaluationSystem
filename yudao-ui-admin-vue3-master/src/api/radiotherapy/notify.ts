import request from '@/config/axios'

export interface EventNotifyVO {
  id: number
  eventId: number
  eventNo?: string
  deptId: number
  deptName?: string
  notifyUserId: number
  content?: string
  status: number
  createTime?: string
}

export const getEventNotifies = (eventId: number) =>
  request.get({ url: '/radiotherapy/event-notify/list', params: { eventId } })

export const createEventNotify = (eventId: number, deptId: number, content?: string) =>
  request.post({ url: '/radiotherapy/event-notify/create', data: { eventId, deptId, content } })

export const markNotifyRead = (id: number) =>
  request.put({ url: '/radiotherapy/event-notify/read', params: { id } })

export const getMyNotifies = (deptId: number) =>
  request.get({ url: '/radiotherapy/event-notify/my-notifies', params: { deptId } })
