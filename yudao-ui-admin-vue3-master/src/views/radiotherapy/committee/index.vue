<template>
  <el-row :gutter="16">
    <el-col :span="7">
      <ContentWrap title="委员会列表">
        <el-button class="mb-16px" type="primary" @click="openComForm('create')">
          <Icon class="mr-5px" icon="ep:plus" />新增委员会
        </el-button>
        <div v-loading="loading">
          <div
            v-for="item in committeeList"
            :key="item.id"
            class="flex items-center justify-between p-12px mb-8px cursor-pointer border rounded-8px"
            :class="selectedId === item.id ? 'border-[var(--el-color-primary)] bg-[var(--el-color-primary-light-9)]' : 'border-[var(--el-border-color)]'"
            @click="selectCommittee(item)"
          >
            <span class="text-14px font-500">{{ item.name }}</span>
            <el-badge :value="item.memberCount || 0" type="primary" />
          </div>
          <el-empty v-if="!loading && committeeList.length === 0" description="暂无委员会" />
        </div>
      </ContentWrap>
    </el-col>
    <el-col :span="17">
      <ContentWrap title="成员管理">
        <template v-if="selectedCommittee">
          <div class="flex justify-between mb-16px">
            <span class="text-14px text-[var(--el-text-color-secondary)]">{{ selectedCommittee.description || '暂无说明' }}</span>
            <div>
              <el-button type="primary" @click="openMemberForm">添加成员</el-button>
              <el-button @click="openComForm('edit', selectedCommittee)">编辑</el-button>
              <el-button type="danger" @click="handleDeleteCom">删除</el-button>
            </div>
          </div>
          <el-table v-loading="memberLoading" :data="memberList">
            <el-table-column align="center" label="用户ID" prop="userId" width="120" />
            <el-table-column align="center" label="角色" prop="roleType" width="140">
              <template #default="scope">
                <el-tag :type="roleTagType(scope.row.roleType)" size="small">{{ roleName(scope.row.roleType) }}</el-tag>
              </template>
            </el-table-column>
            <el-table-column align="center" label="创建时间" prop="createTime" width="170" :formatter="dateFormatter" />
            <el-table-column align="center" label="操作">
              <template #default="scope">
                <el-dropdown @command="(cmd: string) => handleMemberAction(cmd, scope.row)">
                  <el-button link type="primary">修改角色<Icon class="ml-4px" icon="ep:arrow-down" /></el-button>
                  <template #dropdown>
                    <el-dropdown-menu>
                      <el-dropdown-item command="member">普通成员</el-dropdown-item>
                      <el-dropdown-item command="secretary">秘书</el-dropdown-item>
                      <el-dropdown-item command="chairman">负责人</el-dropdown-item>
                    </el-dropdown-menu>
                  </template>
                </el-dropdown>
                <el-button link type="danger" @click="handleRemoveMember(scope.row.id)">移除</el-button>
              </template>
            </el-table-column>
          </el-table>
        </template>
        <el-empty v-else description="请选择左侧委员会" />
      </ContentWrap>
    </el-col>
  </el-row>

  <!-- Committee Form Dialog -->
  <el-dialog v-model="comDialogVisible" :title="comDialogTitle" width="500px">
    <el-form ref="comFormRef" :model="comForm" :rules="comRules" label-width="100px">
      <el-form-item label="名称" prop="name">
        <el-input v-model="comForm.name" placeholder="请输入委员会名称" />
      </el-form-item>
      <el-form-item label="状态" prop="status">
        <el-radio-group v-model="comForm.status">
          <el-radio :value="1">启用</el-radio>
          <el-radio :value="0">禁用</el-radio>
        </el-radio-group>
      </el-form-item>
      <el-form-item label="说明">
        <el-input v-model="comForm.description" type="textarea" placeholder="请输入说明" />
      </el-form-item>
    </el-form>
    <template #footer>
      <el-button @click="comDialogVisible = false">取消</el-button>
      <el-button :loading="comSubmitting" type="primary" @click="handleComSubmit">确定</el-button>
    </template>
  </el-dialog>

  <!-- Add Member Dialog -->
  <el-dialog v-model="memberDialogVisible" title="添加成员" width="450px">
    <el-form ref="memberFormRef" :model="memberForm" :rules="memberRules" label-width="80px">
      <el-form-item label="用户ID" prop="userId">
        <el-input-number v-model="memberForm.userId" :min="1" class="w-full" placeholder="请输入用户编号" />
      </el-form-item>
      <el-form-item label="角色" prop="roleType">
        <el-select v-model="memberForm.roleType" class="w-full" placeholder="请选择角色">
          <el-option label="普通成员" :value="1" />
          <el-option label="秘书" :value="2" />
          <el-option label="负责人" :value="3" />
        </el-select>
      </el-form-item>
    </el-form>
    <template #footer>
      <el-button @click="memberDialogVisible = false">取消</el-button>
      <el-button :loading="memberSubmitting" type="primary" @click="handleAddMember">确定</el-button>
    </template>
  </el-dialog>
</template>

<script setup lang="ts">
import {
  getCommitteePage, getCommittee, createCommittee, updateCommittee, deleteCommittee,
  getMemberList, addMember, removeMember, updateMemberRole, CommitteeVO
} from '@/api/radiotherapy/committee'
import { dateFormatter } from '@/utils/formatTime'

defineOptions({ name: 'RadiotherapyCommittee' })

const message = useMessage()
const roleTagType = (t: number) => ({ 1: 'info', 2: '', 3: 'danger' } as any)[t] || 'info'
const roleName = (t: number) => ({ 1: '普通成员', 2: '秘书', 3: '负责人' } as any)[t] || '未知'

const loading = ref(false)
const committeeList = ref<CommitteeVO[]>([])
const selectedId = ref(0)
const selectedCommittee = ref<CommitteeVO | null>(null)

const fetchCommittees = async () => {
  loading.value = true
  try {
    committeeList.value = (await getCommitteePage({ pageNo: 1, pageSize: 100 })).list
  } finally { loading.value = false }
}

const selectCommittee = (item: CommitteeVO) => {
  selectedId.value = item.id!
  selectedCommittee.value = item
  fetchMembers(item.id!)
}

// Committee CRUD
const comDialogVisible = ref(false), comDialogTitle = ref('新增委员会'), comSubmitting = ref(false)
const comFormRef = ref(), comIsEdit = ref(false)
const comForm = reactive({ id: 0, name: '', status: 1, description: '' })
const comRules = { name: [{ required: true, message: '请输入名称', trigger: 'blur' }] }

const openComForm = async (type: string, row?: CommitteeVO) => {
  comIsEdit.value = type === 'edit'
  comDialogTitle.value = comIsEdit.value ? '编辑委员会' : '新增委员会'
  if (row) {
    const res = await getCommittee(row.id!)
    Object.assign(comForm, { id: res.id, name: res.name, status: res.status, description: res.description || '' })
  } else {
    Object.assign(comForm, { id: 0, name: '', status: 1, description: '' })
  }
  comDialogVisible.value = true
}

const handleComSubmit = async () => {
  if (!await comFormRef.value?.validate().catch(() => false)) return
  comSubmitting.value = true
  try {
    comIsEdit.value ? await updateCommittee({ ...comForm }) : await createCommittee({ ...comForm })
    message.success(comIsEdit.value ? '更新成功' : '新增成功')
    comDialogVisible.value = false
    fetchCommittees()
  } finally { comSubmitting.value = false }
}

const handleDeleteCom = async () => {
  if (!selectedCommittee.value) return
  await message.delConfirm('确认删除该委员会？成员将被一并移除。')
  await deleteCommittee(selectedCommittee.value.id!)
  message.success('删除成功')
  selectedCommittee.value = null; selectedId.value = 0
  fetchCommittees()
}

// Members
const memberLoading = ref(false), memberList = ref([])
const fetchMembers = async (id: number) => {
  memberLoading.value = true
  try { memberList.value = await getMemberList(id) } finally { memberLoading.value = false }
}

const memberDialogVisible = ref(false), memberSubmitting = ref(false), memberFormRef = ref()
const memberForm = reactive({ userId: 0, roleType: 1 })
const memberRules = {
  userId: [{ required: true, message: '请输入用户编号', trigger: 'blur' }],
  roleType: [{ required: true, message: '请选择角色', trigger: 'change' }]
}

const openMemberForm = () => { Object.assign(memberForm, { userId: 0, roleType: 1 }); memberDialogVisible.value = true }

const handleAddMember = async () => {
  if (!await memberFormRef.value?.validate().catch(() => false)) return
  memberSubmitting.value = true
  try {
    await addMember({ committeeId: selectedCommittee.value!.id!, ...memberForm })
    message.success('添加成功')
    memberDialogVisible.value = false
    fetchMembers(selectedCommittee.value!.id!)
  } finally { memberSubmitting.value = false }
}

const handleMemberAction = async (cmd: string, row: any) => {
  const m: Record<string, number> = { member: 1, secretary: 2, chairman: 3 }
  await updateMemberRole(row.id, m[cmd])
  message.success('角色更新成功')
  fetchMembers(selectedCommittee.value!.id!)
}

const handleRemoveMember = async (id: number) => {
  await message.delConfirm('确认移除该成员？')
  await removeMember(id)
  message.success('移除成功')
  fetchMembers(selectedCommittee.value!.id!)
}

onMounted(() => { fetchCommittees() })
</script>
