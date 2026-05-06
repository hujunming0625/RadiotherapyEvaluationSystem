import request from '@/config/axios'

export interface RegisterReqVO {
  username: string
  password: string
  confirmPassword: string
  phone?: string
}

export const register = (data: RegisterReqVO) => {
  return request.post({ url: '/radiotherapy/auth/register', data })
}
