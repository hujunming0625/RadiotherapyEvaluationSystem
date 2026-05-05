import request from '@/config/axios'

export const getStatsOverview = () => request.get({ url: '/radiotherapy/stats/overview' })
export const getCategoryDistribution = () => request.get({ url: '/radiotherapy/stats/category-distribution' })
export const getDeptDistribution = () => request.get({ url: '/radiotherapy/stats/dept-distribution' })
export const getMonthlyTrend = () => request.get({ url: '/radiotherapy/stats/monthly-trend' })
