import request from '@/config/axios'

export interface CommitteeVO {
  id?: number
  name: string
  status: number
  description?: string
  memberCount?: number
  createTime?: Date
}

export interface CommitteeMemberVO {
  id?: number
  committeeId: number
  userId: number
  userName?: string
  roleType: number
  roleTypeName?: string
  createTime?: Date
}

export const getCommitteePage = (params: PageParam & { name?: string; status?: number }) =>
  request.get({ url: '/radiotherapy/committee/page', params })

export const getCommitteeList = () =>
  request.get({ url: '/radiotherapy/committee/list' })

export const getCommittee = (id: number) =>
  request.get({ url: '/radiotherapy/committee/get?id=' + id })

export const createCommittee = (data: CommitteeVO) =>
  request.post({ url: '/radiotherapy/committee/create', data })

export const updateCommittee = (data: CommitteeVO) =>
  request.put({ url: '/radiotherapy/committee/update', data })

export const deleteCommittee = (id: number) =>
  request.delete({ url: '/radiotherapy/committee/delete?id=' + id })

export const getMemberList = (committeeId: number) =>
  request.get({ url: '/radiotherapy/committee/member/list', params: { committeeId } })

export const addMember = (data: CommitteeMemberVO) =>
  request.post({ url: '/radiotherapy/committee/member/add', data })

export const removeMember = (id: number) =>
  request.delete({ url: '/radiotherapy/committee/member/remove?id=' + id })

export const updateMemberRole = (id: number, roleType: number) =>
  request.put({ url: '/radiotherapy/committee/member/update-role', params: { id, roleType } })
