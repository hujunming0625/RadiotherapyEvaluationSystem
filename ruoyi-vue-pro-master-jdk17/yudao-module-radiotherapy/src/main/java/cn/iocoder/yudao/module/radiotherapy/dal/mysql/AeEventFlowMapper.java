package cn.iocoder.yudao.module.radiotherapy.dal.mysql;

import cn.iocoder.yudao.framework.mybatis.core.mapper.BaseMapperX;
import cn.iocoder.yudao.framework.mybatis.core.query.LambdaQueryWrapperX;
import cn.iocoder.yudao.module.radiotherapy.dal.dataobject.AeEventFlowDO;
import org.apache.ibatis.annotations.Mapper;

import java.util.Arrays;
import java.util.List;

@Mapper
public interface AeEventFlowMapper extends BaseMapperX<AeEventFlowDO> {

    default List<AeEventFlowDO> selectListByEventId(Long eventId) {
        return selectList(new LambdaQueryWrapperX<AeEventFlowDO>()
                .eq(AeEventFlowDO::getEventId, eventId)
                .orderByAsc(Arrays.asList(AeEventFlowDO::getCreateTime, AeEventFlowDO::getId)));
    }
}
