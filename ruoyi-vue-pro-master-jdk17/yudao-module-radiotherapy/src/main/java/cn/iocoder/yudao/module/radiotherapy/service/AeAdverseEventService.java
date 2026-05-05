package cn.iocoder.yudao.module.radiotherapy.service;

import cn.iocoder.yudao.framework.common.pojo.PageResult;
import cn.iocoder.yudao.module.radiotherapy.controller.admin.vo.event.AeAdverseEventCreateReqVO;
import cn.iocoder.yudao.module.radiotherapy.controller.admin.vo.event.AeAdverseEventPageReqVO;
import cn.iocoder.yudao.module.radiotherapy.dal.dataobject.AeAdverseEventDO;
import cn.iocoder.yudao.module.radiotherapy.dal.dataobject.AeEventFlowDO;

import java.util.List;

public interface AeAdverseEventService {

    Long createEvent(AeAdverseEventCreateReqVO reqVO, Long userId);

    PageResult<AeAdverseEventDO> getEventPage(AeAdverseEventPageReqVO reqVO);

    AeAdverseEventDO getEvent(Long id);

    List<AeEventFlowDO> getEventFlows(Long eventId);

    void withdrawEvent(Long eventId, Long userId);
}
