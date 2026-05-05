<template>
  <div class="min-h-screen w-full flex bg-[#F8FAFC]">
    <!-- 左侧品牌区 - 仅桌面端显示 -->
    <div
      class="hidden lg:flex lg:w-[55%] xl:w-[60%] bg-[#F0FDFA] relative flex-col justify-between p-12 xl:p-16 overflow-hidden"
    >
      <!-- 背景装饰 -->
      <div class="absolute inset-0 pointer-events-none">
        <svg
          class="absolute -bottom-16 -right-16 w-[480px] h-[480px] text-[#0891B2]/[0.06]"
          viewBox="0 0 200 200"
          fill="currentColor"
        >
          <circle cx="100" cy="100" r="80" />
          <circle cx="100" cy="100" r="60" />
          <circle cx="100" cy="100" r="40" />
          <path d="M100 40 L100 160 M40 100 L160 100" stroke="currentColor" stroke-width="8" fill="none" />
        </svg>
        <svg
          class="absolute top-12 left-12 w-64 h-64 text-[#22D3EE]/[0.08]"
          viewBox="0 0 200 200"
          fill="currentColor"
        >
          <path
            d="M100 20 Q120 60 160 80 Q120 100 100 140 Q80 100 40 80 Q80 60 100 20Z"
          />
        </svg>
      </div>

      <!-- 顶部品牌 -->
      <div class="relative z-10">
        <div class="flex items-center gap-3 mb-10">
          <img src="@/assets/imgs/logo.png" class="h-11 w-11" alt="Logo" />
          <div>
            <h1
              class="text-[22px] font-bold text-[#134E4A] tracking-tight"
              style="font-family: 'Figtree', sans-serif"
            >
              放疗效果综合评估系统
            </h1>
            <p
              class="text-[13px] text-[#0891B2] mt-0.5 font-medium"
              style="font-family: 'Noto Sans', sans-serif"
            >
              Radiotherapy Evaluation System
            </p>
          </div>
        </div>

        <h2
          class="text-[42px] xl:text-[52px] font-bold text-[#134E4A] leading-[1.15] mb-5"
          style="font-family: 'Figtree', sans-serif"
        >
          精准评估<br />安全放疗
        </h2>
        <p
          class="text-[17px] text-[#475569] max-w-md leading-relaxed"
          style="font-family: 'Noto Sans', sans-serif"
        >
          为医疗机构提供全面的放疗效果追踪与不良事件管理平台，保障患者安全，提升治疗质量。
        </p>
      </div>

      <!-- 中部 Features -->
      <div class="relative z-10 grid grid-cols-1 xl:grid-cols-2 gap-4 max-w-lg mt-6">
        <div
          class="flex items-start gap-3 p-4 bg-white/70 backdrop-blur-sm rounded-xl border border-[#A5F3FC]/40"
        >
          <div
            class="w-9 h-9 rounded-lg bg-[#0891B2]/10 flex items-center justify-center flex-shrink-0"
          >
            <svg class="w-5 h-5 text-[#0891B2]" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
              <path d="M12 22s8-4 8-10V5l-8-3-8 3v7c0 6 8 10 8 10z"/>
            </svg>
          </div>
          <div>
            <h3 class="font-semibold text-[#134E4A] text-[13px]">数据安全合规</h3>
            <p class="text-[12px] text-[#64748B] mt-0.5">符合国家医疗信息安全标准</p>
          </div>
        </div>
        <div
          class="flex items-start gap-3 p-4 bg-white/70 backdrop-blur-sm rounded-xl border border-[#A5F3FC]/40"
        >
          <div
            class="w-9 h-9 rounded-lg bg-[#0891B2]/10 flex items-center justify-center flex-shrink-0"
          >
            <svg class="w-5 h-5 text-[#0891B2]" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
              <path d="M21.21 15.89A10 10 0 1 1 8 2.83"/>
              <path d="M22 12A10 10 0 0 0 12 2v10z"/>
            </svg>
          </div>
          <div>
            <h3 class="font-semibold text-[#134E4A] text-[13px]">治疗效果追踪</h3>
            <p class="text-[12px] text-[#64748B] mt-0.5">实时评估与可视化分析</p>
          </div>
        </div>
        <div
          class="flex items-start gap-3 p-4 bg-white/70 backdrop-blur-sm rounded-xl border border-[#A5F3FC]/40"
        >
          <div
            class="w-9 h-9 rounded-lg bg-[#0891B2]/10 flex items-center justify-center flex-shrink-0"
          >
            <svg class="w-5 h-5 text-[#0891B2]" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
              <path d="M13 2L3 14h9l-1 8 10-12h-9l1-8z"/>
            </svg>
          </div>
          <div>
            <h3 class="font-semibold text-[#134E4A] text-[13px]">快速事件上报</h3>
            <p class="text-[12px] text-[#64748B] mt-0.5">简化不良事件上报流程</p>
          </div>
        </div>
        <div
          class="flex items-start gap-3 p-4 bg-white/70 backdrop-blur-sm rounded-xl border border-[#A5F3FC]/40"
        >
          <div
            class="w-9 h-9 rounded-lg bg-[#0891B2]/10 flex items-center justify-center flex-shrink-0"
          >
            <svg class="w-5 h-5 text-[#0891B2]" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
              <path d="M17 21v-2a4 4 0 0 0-4-4H5a4 4 0 0 0-4 4v2"/>
              <circle cx="9" cy="7" r="4"/>
              <path d="M23 21v-2a4 4 0 0 0-3-3.87"/>
              <path d="M16 3.13a4 4 0 0 1 0 7.75"/>
            </svg>
          </div>
          <div>
            <h3 class="font-semibold text-[#134E4A] text-[13px]">多角色协同</h3>
            <p class="text-[12px] text-[#64748B] mt-0.5">医生、物理师、技师协作</p>
          </div>
        </div>
      </div>

      <!-- 底部版权 -->
      <div class="relative z-10 text-[13px] text-[#94A3B8] mt-8" style="font-family: 'Noto Sans', sans-serif">
        © 2025 放疗效果综合评估系统. 保留所有权利.
      </div>
    </div>

    <!-- 右侧表单区 -->
    <div class="w-full lg:w-[45%] xl:w-[40%] flex flex-col min-h-screen relative">
      <!-- 顶部工具栏 -->
      <div class="flex items-center justify-end px-6 sm:px-10 py-4 gap-3">
        <ThemeSwitch />
        <LocaleDropdown />
      </div>

      <!-- 表单主体 -->
      <div class="flex-1 flex items-center justify-center px-6 sm:px-12 pb-10">
        <div class="w-full max-w-[420px]">
          <!-- 移动端 Logo -->
          <div class="lg:hidden flex items-center gap-3 mb-8 justify-center">
            <img src="@/assets/imgs/logo.png" class="h-10 w-10" alt="Logo" />
            <div>
              <h1
                class="text-lg font-bold text-[#134E4A]"
                style="font-family: 'Figtree', sans-serif"
              >
                放疗效果综合评估系统
              </h1>
            </div>
          </div>

          <!-- 登录卡片 -->
          <div
            class="bg-white rounded-2xl shadow-[0_4px_24px_rgba(0,0,0,0.05)] border border-[#E2E8F0] p-7 sm:p-8"
          >
            <!-- Tab 切换 -->
            <div class="flex gap-8 mb-6 border-b border-[#E2E8F0]">
              <button
                :class="[
                  'pb-3 text-[15px] font-semibold transition-all duration-200 relative cursor-pointer bg-transparent border-none',
                  activeTab === 'login'
                    ? 'text-[#0891B2]'
                    : 'text-[#64748B] hover:text-[#134E4A]'
                ]"
                style="font-family: 'Figtree', sans-serif"
                @click="switchTab('login')"
              >
                {{ t('sys.login.signInFormTitle') }}
                <span
                  v-if="activeTab === 'login'"
                  class="absolute bottom-0 left-0 right-0 h-[2px] bg-[#0891B2] rounded-full"
                ></span>
              </button>
              <button
                :class="[
                  'pb-3 text-[15px] font-semibold transition-all duration-200 relative cursor-pointer bg-transparent border-none',
                  activeTab === 'register'
                    ? 'text-[#0891B2]'
                    : 'text-[#64748B] hover:text-[#134E4A]'
                ]"
                style="font-family: 'Figtree', sans-serif"
                @click="switchTab('register')"
              >
                {{ t('sys.login.signUpFormTitle') }}
                <span
                  v-if="activeTab === 'register'"
                  class="absolute bottom-0 left-0 right-0 h-[2px] bg-[#0891B2] rounded-full"
                ></span>
              </button>
            </div>

            <!-- 表单内容 -->
            <LoginForm class="w-full" />
            <MobileForm class="w-full" />
            <QrCodeForm class="w-full" />
            <RegisterForm class="w-full" />
            <SSOLoginVue class="w-full" />
            <ForgetPasswordForm class="w-full" />
          </div>

          <!-- 底部版权 - 移动端 -->
          <p
            class="lg:hidden text-center text-[12px] text-[#94A3B8] mt-8"
            style="font-family: 'Noto Sans', sans-serif"
          >
            © 2025 放疗效果综合评估系统
          </p>
        </div>
      </div>
    </div>
  </div>
</template>

<script lang="ts" setup>
import { useI18n } from 'vue-i18n'
import { ThemeSwitch } from '@/layout/components/ThemeSwitch'
import { LocaleDropdown } from '@/layout/components/LocaleDropdown'
import { LoginStateEnum, useLoginState } from './components/useLogin'

import {
  LoginForm,
  MobileForm,
  QrCodeForm,
  RegisterForm,
  SSOLoginVue,
  ForgetPasswordForm
} from './components'

defineOptions({ name: 'Login' })

const { t } = useI18n()
const { setLoginState, getLoginState } = useLoginState()

const activeTab = computed(() => {
  const state = unref(getLoginState)
  if (state === LoginStateEnum.REGISTER) return 'register'
  return 'login'
})

const switchTab = (tab: string) => {
  if (tab === 'register') {
    setLoginState(LoginStateEnum.REGISTER)
  } else {
    setLoginState(LoginStateEnum.LOGIN)
  }
}
</script>
