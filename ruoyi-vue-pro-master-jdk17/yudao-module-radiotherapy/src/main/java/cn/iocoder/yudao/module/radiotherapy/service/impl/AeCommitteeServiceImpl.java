package cn.iocoder.yudao.module.radiotherapy.service.impl;

import cn.iocoder.yudao.framework.common.pojo.PageResult;
import cn.iocoder.yudao.framework.common.util.object.BeanUtils;
import cn.iocoder.yudao.module.radiotherapy.controller.admin.vo.committee.*;
import cn.iocoder.yudao.module.radiotherapy.dal.dataobject.AeCommitteeDO;
import cn.iocoder.yudao.module.radiotherapy.dal.dataobject.AeCommitteeMemberDO;
import cn.iocoder.yudao.module.radiotherapy.dal.mysql.AeCommitteeMapper;
import cn.iocoder.yudao.module.radiotherapy.dal.mysql.AeCommitteeMemberMapper;
import cn.iocoder.yudao.module.radiotherapy.enums.MemberRoleType;
import cn.iocoder.yudao.module.radiotherapy.service.AeCommitteeService;
import jakarta.annotation.Resource;
import org.springframework.stereotype.Service;
import org.springframework.validation.annotation.Validated;

import java.util.List;

import static cn.iocoder.yudao.framework.common.exception.util.ServiceExceptionUtil.exception;
import static cn.iocoder.yudao.module.radiotherapy.enums.ErrorCodeConstants.*;

@Service
@Validated
public class AeCommitteeServiceImpl implements AeCommitteeService {

    @Resource
    private AeCommitteeMapper committeeMapper;

    @Resource
    private AeCommitteeMemberMapper memberMapper;

    @Override
    public PageResult<AeCommitteeDO> getCommitteePage(AeCommitteePageReqVO reqVO) {
        return committeeMapper.selectPage(reqVO);
    }

    @Override
    public List<AeCommitteeDO> getCommitteeList() {
        return committeeMapper.selectList();
    }

    @Override
    public Long createCommittee(AeCommitteeSaveReqVO reqVO) {
        AeCommitteeDO committee = BeanUtils.toBean(reqVO, AeCommitteeDO.class);
        committeeMapper.insert(committee);
        return committee.getId();
    }

    @Override
    public void updateCommittee(AeCommitteeSaveReqVO reqVO) {
        validateCommitteeExists(reqVO.getId());
        AeCommitteeDO updateObj = BeanUtils.toBean(reqVO, AeCommitteeDO.class);
        committeeMapper.updateById(updateObj);
    }

    @Override
    public void deleteCommittee(Long id) {
        validateCommitteeExists(id);
        memberMapper.delete(AeCommitteeMemberDO::getCommitteeId, id);
        committeeMapper.deleteById(id);
    }

    @Override
    public AeCommitteeDO getCommittee(Long id) {
        return validateCommitteeExists(id);
    }

    @Override
    public List<AeCommitteeMemberDO> getMembersByCommitteeId(Long committeeId) {
        return memberMapper.selectListByCommitteeId(committeeId);
    }

    @Override
    public Long addMember(AeCommitteeMemberSaveReqVO reqVO) {
        validateCommitteeExists(reqVO.getCommitteeId());
        // 检查成员是否已存在
        AeCommitteeMemberDO existMember = memberMapper.selectByCommitteeAndUser(
                reqVO.getCommitteeId(), reqVO.getUserId());
        if (existMember != null) {
            throw exception(AE_COMMITTEE_MEMBER_EXISTS);
        }
        // 限制每个委员会只能有 1 个负责人和 1 个秘书
        if (reqVO.getRoleType().equals(MemberRoleType.CHAIRMAN.getCode())) {
            Long chairmanCount = memberMapper.countByCommitteeAndRole(
                    reqVO.getCommitteeId(), MemberRoleType.CHAIRMAN.getCode());
            if (chairmanCount >= 1) {
                throw exception(AE_COMMITTEE_ROLE_LIMIT);
            }
        }
        if (reqVO.getRoleType().equals(MemberRoleType.SECRETARY.getCode())) {
            Long secretaryCount = memberMapper.countByCommitteeAndRole(
                    reqVO.getCommitteeId(), MemberRoleType.SECRETARY.getCode());
            if (secretaryCount >= 1) {
                throw exception(AE_COMMITTEE_ROLE_LIMIT);
            }
        }
        AeCommitteeMemberDO member = BeanUtils.toBean(reqVO, AeCommitteeMemberDO.class);
        memberMapper.insert(member);
        return member.getId();
    }

    @Override
    public void removeMember(Long id) {
        memberMapper.deleteById(id);
    }

    @Override
    public void updateMemberRole(Long id, Integer roleType) {
        AeCommitteeMemberDO member = memberMapper.selectById(id);
        if (member == null) {
            throw exception(AE_COMMITTEE_MEMBER_EXISTS);
        }
        // 限制每个委员会只能有 1 个负责人和 1 个秘书
        if (roleType.equals(MemberRoleType.CHAIRMAN.getCode())) {
            Long chairmanCount = memberMapper.countByCommitteeAndRole(
                    member.getCommitteeId(), MemberRoleType.CHAIRMAN.getCode());
            if (chairmanCount >= 1) {
                throw exception(AE_COMMITTEE_ROLE_LIMIT);
            }
        }
        if (roleType.equals(MemberRoleType.SECRETARY.getCode())) {
            Long secretaryCount = memberMapper.countByCommitteeAndRole(
                    member.getCommitteeId(), MemberRoleType.SECRETARY.getCode());
            if (secretaryCount >= 1) {
                throw exception(AE_COMMITTEE_ROLE_LIMIT);
            }
        }
        AeCommitteeMemberDO updateObj = new AeCommitteeMemberDO();
        updateObj.setId(id);
        updateObj.setRoleType(roleType);
        memberMapper.updateById(updateObj);
    }

    private AeCommitteeDO validateCommitteeExists(Long id) {
        AeCommitteeDO committee = committeeMapper.selectById(id);
        if (committee == null) {
            throw exception(AE_COMMITTEE_NOT_EXISTS);
        }
        return committee;
    }
}
