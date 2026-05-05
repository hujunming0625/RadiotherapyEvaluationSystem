package cn.iocoder.yudao.module.radiotherapy.dal.mysql;

import cn.iocoder.yudao.framework.mybatis.core.mapper.BaseMapperX;
import cn.iocoder.yudao.framework.mybatis.core.query.LambdaQueryWrapperX;
import cn.iocoder.yudao.module.radiotherapy.dal.dataobject.AeCommitteeMemberDO;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface AeCommitteeMemberMapper extends BaseMapperX<AeCommitteeMemberDO> {

    default List<AeCommitteeMemberDO> selectListByCommitteeId(Long committeeId) {
        return selectList(AeCommitteeMemberDO::getCommitteeId, committeeId);
    }

    default AeCommitteeMemberDO selectByCommitteeAndUser(Long committeeId, Long userId) {
        return selectOne(new LambdaQueryWrapperX<AeCommitteeMemberDO>()
                .eq(AeCommitteeMemberDO::getCommitteeId, committeeId)
                .eq(AeCommitteeMemberDO::getUserId, userId));
    }

    default Long countByCommitteeAndRole(Long committeeId, Integer roleType) {
        return selectCount(new LambdaQueryWrapperX<AeCommitteeMemberDO>()
                .eq(AeCommitteeMemberDO::getCommitteeId, committeeId)
                .eq(AeCommitteeMemberDO::getRoleType, roleType));
    }
}
