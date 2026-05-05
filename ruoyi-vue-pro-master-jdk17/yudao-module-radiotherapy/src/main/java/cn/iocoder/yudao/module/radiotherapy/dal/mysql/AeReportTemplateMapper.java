package cn.iocoder.yudao.module.radiotherapy.dal.mysql;

import cn.iocoder.yudao.framework.common.pojo.PageResult;
import cn.iocoder.yudao.framework.mybatis.core.mapper.BaseMapperX;
import cn.iocoder.yudao.framework.mybatis.core.query.LambdaQueryWrapperX;
import cn.iocoder.yudao.module.radiotherapy.controller.admin.vo.template.AeReportTemplatePageReqVO;
import cn.iocoder.yudao.module.radiotherapy.dal.dataobject.AeReportTemplateDO;
import org.apache.ibatis.annotations.Mapper;

import java.util.Arrays;

@Mapper
public interface AeReportTemplateMapper extends BaseMapperX<AeReportTemplateDO> {

    default PageResult<AeReportTemplateDO> selectPage(AeReportTemplatePageReqVO reqVO) {
        return selectPage(reqVO, new LambdaQueryWrapperX<AeReportTemplateDO>()
                .likeIfPresent(AeReportTemplateDO::getName, reqVO.getName())
                .eqIfPresent(AeReportTemplateDO::getCategory, reqVO.getCategory())
                .eqIfPresent(AeReportTemplateDO::getStatus, reqVO.getStatus())
                .orderByAsc(Arrays.asList(AeReportTemplateDO::getSort, AeReportTemplateDO::getId)));
    }
}
