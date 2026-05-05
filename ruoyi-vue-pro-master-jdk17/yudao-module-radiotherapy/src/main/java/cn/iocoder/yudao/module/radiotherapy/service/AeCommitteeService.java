package cn.iocoder.yudao.module.radiotherapy.service;

import cn.iocoder.yudao.framework.common.pojo.PageResult;
import cn.iocoder.yudao.module.radiotherapy.controller.admin.vo.committee.*;
import cn.iocoder.yudao.module.radiotherapy.dal.dataobject.AeCommitteeDO;
import cn.iocoder.yudao.module.radiotherapy.dal.dataobject.AeCommitteeMemberDO;

import java.util.List;

public interface AeCommitteeService {

    // Committee
    PageResult<AeCommitteeDO> getCommitteePage(AeCommitteePageReqVO reqVO);
    List<AeCommitteeDO> getCommitteeList();
    Long createCommittee(AeCommitteeSaveReqVO reqVO);
    void updateCommittee(AeCommitteeSaveReqVO reqVO);
    void deleteCommittee(Long id);
    AeCommitteeDO getCommittee(Long id);

    // Members
    List<AeCommitteeMemberDO> getMembersByCommitteeId(Long committeeId);
    Long addMember(AeCommitteeMemberSaveReqVO reqVO);
    void removeMember(Long id);
    void updateMemberRole(Long id, Integer roleType);
}
