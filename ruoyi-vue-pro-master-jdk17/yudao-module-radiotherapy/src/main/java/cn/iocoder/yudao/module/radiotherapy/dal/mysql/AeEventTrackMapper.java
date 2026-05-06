package cn.iocoder.yudao.module.radiotherapy.dal.mysql;

import cn.iocoder.yudao.framework.common.pojo.PageParam;
import cn.iocoder.yudao.framework.common.pojo.PageResult;
import cn.iocoder.yudao.framework.mybatis.core.mapper.BaseMapperX;
import cn.iocoder.yudao.framework.mybatis.core.query.LambdaQueryWrapperX;
import cn.iocoder.yudao.module.radiotherapy.dal.dataobject.AeEventTrackDO;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface AeEventTrackMapper extends BaseMapperX<AeEventTrackDO> {

    default PageResult<AeEventTrackDO> selectPage(PageParam pageReqVO) {
        return selectPage(pageReqVO, new LambdaQueryWrapperX<AeEventTrackDO>()
                .orderByDesc(AeEventTrackDO::getId));
    }
}
