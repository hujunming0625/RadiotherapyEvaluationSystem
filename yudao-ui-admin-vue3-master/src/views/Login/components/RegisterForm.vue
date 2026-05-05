<template>
  <el-form
    v-show="getShow"
    ref="formLogin"
    :model="registerData.registerForm"
    :rules="registerRules"
    class="login-form"
    label-position="top"
    label-width="120px"
    size="large"
  >
    <el-row class="mx-[-10px]">
      <el-col :span="24" class="px-10px">
        <el-form-item>
          <LoginFormTitle class="w-full" />
        </el-form-item>
      </el-col>
      <el-col :span="24" class="px-10px">
        <el-form-item prop="username">
          <el-input
            v-model="registerData.registerForm.username"
            :placeholder="t('login.username')"
            size="large"
            :prefix-icon="iconAvatar"
          />
        </el-form-item>
      </el-col>
      <el-col :span="24" class="px-10px">
        <el-form-item prop="phone">
          <el-input
            v-model="registerData.registerForm.phone"
            placeholder="手机号码（选填）"
            size="large"
            :prefix-icon="iconPhone"
          />
        </el-form-item>
      </el-col>
      <el-col :span="24" class="px-10px">
        <el-form-item prop="roleType">
          <el-select
            v-model="registerData.registerForm.roleType"
            placeholder="选择角色类型"
            class="w-full"
            size="large"
          >
            <el-option label="上报人" value="REPORTER" />
            <el-option label="科室负责人" value="DEPT_LEADER" />
            <el-option label="职能部门负责人" value="FUNC_LEADER" />
          </el-select>
        </el-form-item>
      </el-col>
      <el-col :span="24" class="px-10px">
        <el-form-item prop="password">
          <el-input
            v-model="registerData.registerForm.password"
            type="password"
            auto-complete="off"
            :placeholder="t('login.password')"
            size="large"
            :prefix-icon="iconLock"
            show-password
          />
        </el-form-item>
      </el-col>
      <el-col :span="24" class="px-10px">
        <el-form-item prop="confirmPassword">
          <el-input
            v-model="registerData.registerForm.confirmPassword"
            type="password"
            size="large"
            auto-complete="off"
            :placeholder="t('login.checkPassword')"
            :prefix-icon="iconLock"
            show-password
          />
        </el-form-item>
      </el-col>
      <el-col :span="24" class="px-10px">
        <el-form-item>
          <XButton
            :loading="loginLoading"
            :title="t('login.register')"
            class="w-full"
            type="primary"
            @click="handleRegisterSubmit()"
          />
        </el-form-item>
      </el-col>
    </el-row>
    <XButton :title="t('login.hasUser')" class="w-full" @click="handleBackLogin()" />
  </el-form>
</template>
<script lang="ts" setup>
import LoginFormTitle from './LoginFormTitle.vue'
import { useIcon } from '@/hooks/web/useIcon'
import { LoginStateEnum, useLoginState, useFormValid } from './useLogin'
import * as AuthApi from '@/api/radiotherapy/auth'

defineOptions({ name: 'RegisterForm' })

const { t } = useI18n()
const message = useMessage()
const iconAvatar = useIcon({ icon: 'ep:avatar' })
const iconLock = useIcon({ icon: 'ep:lock' })
const iconPhone = useIcon({ icon: 'ep:phone' })
const formLogin = ref()
const { validForm } = useFormValid(formLogin)
const { handleBackLogin, getLoginState } = useLoginState()
const loginLoading = ref(false)

const getShow = computed(() => unref(getLoginState) === LoginStateEnum.REGISTER)

const equalToPassword = (_rule, value, callback) => {
  if (registerData.registerForm.password !== value) {
    callback(new Error('两次输入的密码不一致'))
  } else {
    callback()
  }
}

const registerRules = {
  username: [
    { required: true, trigger: 'blur', message: '请输入您的账号' },
    { min: 4, max: 30, message: '用户账号长度必须介于 4 和 30 之间', trigger: 'blur' },
    { pattern: /^[a-zA-Z0-9]+$/, message: '用户账号只能包含数字和字母', trigger: 'blur' }
  ],
  phone: [
    { pattern: /^1[3-9]\d{9}$/, message: '手机号格式不正确', trigger: 'blur' }
  ],
  roleType: [
    { required: true, trigger: 'change', message: '请选择角色类型' }
  ],
  password: [
    { required: true, trigger: 'blur', message: '请输入您的密码' },
    { min: 6, max: 16, message: '密码长度必须介于 6 和 16 之间', trigger: 'blur' }
  ],
  confirmPassword: [
    { required: true, trigger: 'blur', message: '请再次输入您的密码' },
    { required: true, validator: equalToPassword, trigger: 'blur' }
  ]
}

const registerData = reactive({
  registerForm: {
    username: '',
    phone: '',
    roleType: 'REPORTER',
    password: '',
    confirmPassword: ''
  }
})

const handleRegisterSubmit = async () => {
  loginLoading.value = true
  try {
    const data = await validForm()
    if (!data) {
      return
    }

    await AuthApi.register(registerData.registerForm)
    message.success('注册成功，请登录')
    handleBackLogin()
  } catch (error: any) {
    message.error(error?.message || '注册失败')
  } finally {
    loginLoading.value = false
  }
}
</script>

<style lang="scss" scoped>
:deep(.anticon) {
  &:hover {
    color: var(--el-color-primary) !important;
  }
}

.login-code {
  float: right;
  width: 100%;
  height: 38px;

  img {
    width: 100%;
    height: auto;
    max-width: 100px;
    vertical-align: middle;
    cursor: pointer;
  }
}
</style>
