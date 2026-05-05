import request from '@/config/axios'

export interface ProcessReq {
  eventId: number
  action: string
  opinion?: string
  cause?: string
  damageLevel?: number
  needTrack?: number
  transferDeptId?: number
  committeeId?: number
  nextHandlerId?: number
}

export const handleEvent = (data: ProcessReq) =>
  request.post({ url: '/radiotherapy/process/handle', data })
