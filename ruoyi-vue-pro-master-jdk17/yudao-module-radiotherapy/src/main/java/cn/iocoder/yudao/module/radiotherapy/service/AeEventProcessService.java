package cn.iocoder.yudao.module.radiotherapy.service;

import cn.iocoder.yudao.module.radiotherapy.controller.admin.vo.event.AeEventProcessReqVO;

public interface AeEventProcessService {

    void processEvent(AeEventProcessReqVO reqVO, Long handlerId);
}
