import request from '@/config/axios'

export interface TrackVO {
  id?: number
  eventId: number
  trackTime: string
  remindTime?: string
  content?: string
  trackerId?: number
  status?: number
  createTime?: string
}

export const getTrackPage = (params: PageParam & Record<string, any>) =>
  request.get({ url: '/radiotherapy/event-track/page', params })

export const createTrack = (data: TrackVO) =>
  request.post({ url: '/radiotherapy/event-track/create', data })

export const updateTrack = (data: TrackVO) =>
  request.put({ url: '/radiotherapy/event-track/update', data })

export const deleteTrack = (id: number) =>
  request.delete({ url: '/radiotherapy/event-track/delete?id=' + id })
