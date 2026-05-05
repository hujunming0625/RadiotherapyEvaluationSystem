package cn.iocoder.yudao.module.radiotherapy.dal.mysql;

import cn.iocoder.yudao.framework.common.pojo.PageResult;
import cn.iocoder.yudao.framework.mybatis.core.mapper.BaseMapperX;
import cn.iocoder.yudao.framework.mybatis.core.query.LambdaQueryWrapperX;
import cn.iocoder.yudao.module.radiotherapy.controller.admin.vo.event.AeAdverseEventPageReqVO;
import cn.iocoder.yudao.module.radiotherapy.dal.dataobject.AeAdverseEventDO;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface AeAdverseEventMapper extends BaseMapperX<AeAdverseEventDO> {

    default PageResult<AeAdverseEventDO> selectPage(AeAdverseEventPageReqVO reqVO) {
        return selectPage(reqVO, new LambdaQueryWrapperX<AeAdverseEventDO>()
                .eqIfPresent(AeAdverseEventDO::getEventNo, reqVO.getEventNo())
                .eqIfPresent(AeAdverseEventDO::getCategory, reqVO.getCategory())
                .eqIfPresent(AeAdverseEventDO::getLevel, reqVO.getLevel())
                .eqIfPresent(AeAdverseEventDO::getStatus, reqVO.getStatus())
                .eqIfPresent(AeAdverseEventDO::getReporterId, reqVO.getReporterId())
                .eqIfPresent(AeAdverseEventDO::getDeptId, reqVO.getDeptId())
                .eqIfPresent(AeAdverseEventDO::getCurrentHandlerId, reqVO.getCurrentHandlerId())
                .betweenIfPresent(AeAdverseEventDO::getReportTime, reqVO.getReportTime())
                .orderByDesc(AeAdverseEventDO::getId));
    }
}
