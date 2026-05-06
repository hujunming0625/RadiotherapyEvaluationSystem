import { Layout } from '@/utils/routerHelper'

const { t } = useI18n()

const remainingRouter: AppRouteRecordRaw[] = [
  {
    path: '/redirect',
    component: Layout,
    name: 'Redirect',
    children: [
      {
        path: '/redirect/:path(.*)',
        name: 'Redirect',
        component: () => import('@/views/Redirect/Redirect.vue'),
        meta: {}
      }
    ],
    meta: {
      hidden: true,
      noTagsView: true
    }
  },
  {
    path: '/',
    component: Layout,
    redirect: '/index',
    name: 'Home',
    meta: {},
    children: [
      {
        path: 'index',
        component: () => import('@/views/Home/Index.vue'),
        name: 'Index',
        meta: {
          title: t('router.home'),
          icon: 'ep:home-filled',
          noCache: false,
          affix: true
        }
      }
    ]
  },
  {
    path: '/user',
    component: Layout,
    name: 'UserInfo',
    meta: {
      hidden: true
    },
    children: [
      {
        path: 'profile',
        component: () => import('@/views/Profile/Index.vue'),
        name: 'Profile',
        meta: {
          canTo: true,
          hidden: true,
          noTagsView: false,
          icon: 'ep:user',
          title: t('common.profile')
        }
      },
      {
        path: 'notify-message',
        component: () => import('@/views/system/notify/my/index.vue'),
        name: 'MyNotifyMessage',
        meta: {
          canTo: true,
          hidden: true,
          noTagsView: false,
          icon: 'ep:message',
          title: '我的站内信'
        }
      }
    ]
  },
  {
    path: '/dict',
    component: Layout,
    name: 'dict',
    meta: {
      hidden: true
    },
    children: [
      {
        path: 'type/data/:dictType',
        component: () => import('@/views/system/dict/data/index.vue'),
        name: 'SystemDictData',
        meta: {
          title: '字典数据',
          noCache: true,
          hidden: true,
          canTo: true,
          icon: '',
          activeMenu: '/system/dict'
        }
      }
    ]
  },
  {
    path: '/codegen',
    component: Layout,
    name: 'CodegenEdit',
    meta: {
      hidden: true
    },
    children: [
      {
        path: 'edit',
        component: () => import('@/views/infra/codegen/EditTable.vue'),
        name: 'InfraCodegenEditTable',
        meta: {
          noCache: true,
          hidden: true,
          canTo: true,
          icon: 'ep:edit',
          title: '修改生成配置',
          activeMenu: 'infra/codegen/index'
        }
      }
    ]
  },
  {
    path: '/job',
    component: Layout,
    name: 'JobL',
    meta: {
      hidden: true
    },
    children: [
      {
        path: 'job-log',
        component: () => import('@/views/infra/job/logger/index.vue'),
        name: 'InfraJobLog',
        meta: {
          noCache: true,
          hidden: true,
          canTo: true,
          icon: 'ep:edit',
          title: '调度日志',
          activeMenu: 'infra/job/index'
        }
      }
    ]
  },
  {
    path: '/login',
    component: () => import('@/views/Login/Login.vue'),
    name: 'Login',
    meta: {
      hidden: true,
      title: t('router.login'),
      noTagsView: true
    }
  },
  {
    path: '/sso',
    component: () => import('@/views/Login/Login.vue'),
    name: 'SSOLogin',
    meta: {
      hidden: true,
      title: t('router.login'),
      noTagsView: true
    }
  },
  {
    path: '/social-login',
    component: () => import('@/views/Login/SocialLogin.vue'),
    name: 'SocialLogin',
    meta: {
      hidden: true,
      title: t('router.socialLogin'),
      noTagsView: true
    }
  },
  {
    path: '/403',
    component: () => import('@/views/Error/403.vue'),
    name: 'NoAccess',
    meta: {
      hidden: true,
      title: '403',
      noTagsView: true
    }
  },
  {
    path: '/404',
    component: () => import('@/views/Error/404.vue'),
    name: 'NoFound',
    meta: {
      hidden: true,
      title: '404',
      noTagsView: true
    }
  },
  {
    path: '/500',
    component: () => import('@/views/Error/500.vue'),
    name: 'Error',
    meta: {
      hidden: true,
      title: '500',
      noTagsView: true
    }
  },
  {
    path: '/:pathMatch(.*)*',
    component: () => import('@/views/Error/404.vue'),
    name: '',
    meta: {
      title: '404',
      hidden: true,
      breadcrumb: false
    }
  },
  {
    path: '/radiotherapy',
    component: Layout,
    redirect: '/radiotherapy/submit-event',
    name: 'Radiotherapy',
    meta: { hidden: true },
    children: [
      {
        path: 'template',
        component: () => import('@/views/radiotherapy/template/index.vue'),
        name: 'RadiotherapyTemplate',
        meta: { title: '报告单模板', noCache: true }
      },
      {
        path: 'template-item',
        component: () => import('@/views/radiotherapy/template-item/index.vue'),
        name: 'RadiotherapyTemplateItem',
        meta: { title: '报告单项配置', noCache: true }
      },
      {
        path: 'committee',
        component: () => import('@/views/radiotherapy/committee/index.vue'),
        name: 'RadiotherapyCommittee',
        meta: { title: '质量委员会', noCache: true }
      },
      {
        path: 'submit-event',
        component: () => import('@/views/radiotherapy/submit-event/index.vue'),
        name: 'RadiotherapySubmitEvent',
        meta: { title: '上报不良事件', noCache: true }
      },
      {
        path: 'my-reports',
        component: () => import('@/views/radiotherapy/my-reports/index.vue'),
        name: 'RadiotherapyMyReports',
        meta: { title: '我的报告', noCache: true }
      },
      {
        path: 'dept-process',
        component: () => import('@/views/radiotherapy/dept-process/index.vue'),
        name: 'RadiotherapyDeptProcess',
        meta: { title: '科室处理', noCache: true }
      },
      {
        path: 'func-process',
        component: () => import('@/views/radiotherapy/func-process/index.vue'),
        name: 'RadiotherapyFuncProcess',
        meta: { title: '职能部门处理', noCache: true }
      },
      {
        path: 'leader-process',
        component: () => import('@/views/radiotherapy/leader-process/index.vue'),
        name: 'RadiotherapyLeaderProcess',
        meta: { title: '院领导处理', noCache: true }
      },
      {
        path: 'committee-process',
        component: () => import('@/views/radiotherapy/committee-process/index.vue'),
        name: 'RadiotherapyCommitteeProcess',
        meta: { title: '质量委员会处理', noCache: true }
      },
      {
        path: 'event-query',
        component: () => import('@/views/radiotherapy/event-query/index.vue'),
        name: 'RadiotherapyEventQuery',
        meta: { title: '事件查询', noCache: true }
      },
      {
        path: 'event-track',
        component: () => import('@/views/radiotherapy/event-track/index.vue'),
        name: 'RadiotherapyEventTrack',
        meta: { title: '事件追踪', noCache: true }
      },
      {
        path: 'event-monitor',
        component: () => import('@/views/radiotherapy/event-monitor/index.vue'),
        name: 'RadiotherapyEventMonitor',
        meta: { title: '事件监控', noCache: true }
      },
      {
        path: 'indicator-analysis',
        component: () => import('@/views/radiotherapy/indicator-analysis/index.vue'),
        name: 'RadiotherapyIndicatorAnalysis',
        meta: { title: '指标分析', noCache: true }
      }
    ]
  }
]

export default remainingRouter
