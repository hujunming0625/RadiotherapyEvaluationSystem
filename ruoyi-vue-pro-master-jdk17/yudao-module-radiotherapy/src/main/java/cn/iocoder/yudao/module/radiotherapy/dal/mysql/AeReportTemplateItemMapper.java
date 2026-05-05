package cn.iocoder.yudao.module.radiotherapy.dal.mysql;

import cn.iocoder.yudao.framework.mybatis.core.mapper.BaseMapperX;
import cn.iocoder.yudao.framework.mybatis.core.query.LambdaQueryWrapperX;
import cn.iocoder.yudao.module.radiotherapy.dal.dataobject.AeReportTemplateItemDO;
import org.apache.ibatis.annotations.Mapper;

import java.util.Arrays;
import java.util.List;

@Mapper
public interface AeReportTemplateItemMapper extends BaseMapperX<AeReportTemplateItemDO> {

    default List<AeReportTemplateItemDO> selectListByTemplateId(Long templateId) {
        return selectList(new LambdaQueryWrapperX<AeReportTemplateItemDO>()
                .eq(AeReportTemplateItemDO::getTemplateId, templateId)
                .orderByAsc(Arrays.asList(AeReportTemplateItemDO::getSort, AeReportTemplateItemDO::getId)));
    }
}
