package cn.iocoder.yudao.module.radiotherapy.dal.mysql;

import cn.iocoder.yudao.framework.common.pojo.PageResult;
import cn.iocoder.yudao.framework.mybatis.core.mapper.BaseMapperX;
import cn.iocoder.yudao.framework.mybatis.core.query.LambdaQueryWrapperX;
import cn.iocoder.yudao.module.radiotherapy.controller.admin.vo.committee.AeCommitteePageReqVO;
import cn.iocoder.yudao.module.radiotherapy.dal.dataobject.AeCommitteeDO;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface AeCommitteeMapper extends BaseMapperX<AeCommitteeDO> {

    default PageResult<AeCommitteeDO> selectPage(AeCommitteePageReqVO reqVO) {
        return selectPage(reqVO, new LambdaQueryWrapperX<AeCommitteeDO>()
                .likeIfPresent(AeCommitteeDO::getName, reqVO.getName())
                .eqIfPresent(AeCommitteeDO::getStatus, reqVO.getStatus())
                .orderByAsc(AeCommitteeDO::getId));
    }
}
