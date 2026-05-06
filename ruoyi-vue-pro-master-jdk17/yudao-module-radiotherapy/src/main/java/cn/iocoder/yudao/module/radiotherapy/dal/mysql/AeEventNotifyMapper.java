package cn.iocoder.yudao.module.radiotherapy.dal.mysql;

import cn.iocoder.yudao.framework.common.pojo.PageParam;
import cn.iocoder.yudao.framework.common.pojo.PageResult;
import cn.iocoder.yudao.framework.mybatis.core.mapper.BaseMapperX;
import cn.iocoder.yudao.framework.mybatis.core.query.LambdaQueryWrapperX;
import cn.iocoder.yudao.module.radiotherapy.dal.dataobject.AeEventNotifyDO;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface AeEventNotifyMapper extends BaseMapperX<AeEventNotifyDO> {

    default PageResult<AeEventNotifyDO> selectPageByEventId(Long eventId) {
        PageParam pageParam = new PageParam();
        pageParam.setPageSize(PageParam.PAGE_SIZE_NONE);
        return selectPage(pageParam, new LambdaQueryWrapperX<AeEventNotifyDO>()
                .eq(AeEventNotifyDO::getEventId, eventId)
                .orderByDesc(AeEventNotifyDO::getId));
    }
}
