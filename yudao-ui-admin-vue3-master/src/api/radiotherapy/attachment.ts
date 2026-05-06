import request from '@/config/axios'

export interface AttachmentVO {
  id: number
  eventId: number
  fileName: string
  filePath: string
  fileSize: number
  fileType: string
  uploaderId: number
  createTime?: string
}

export const uploadAttachment = (file: File, eventId: number) => {
  const formData = new FormData()
  formData.append('file', file)
  formData.append('eventId', String(eventId))
  return request.upload({ url: '/radiotherapy/attachment/upload' }, formData)
}

export const getAttachments = (eventId: number) =>
  request.get({ url: '/radiotherapy/attachment/list', params: { eventId } })

export const deleteAttachment = (id: number) =>
  request.delete({ url: '/radiotherapy/attachment/delete?id=' + id })
