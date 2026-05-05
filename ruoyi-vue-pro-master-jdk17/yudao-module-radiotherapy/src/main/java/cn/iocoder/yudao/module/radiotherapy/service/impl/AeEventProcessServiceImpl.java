package cn.iocoder.yudao.module.radiotherapy.service.impl;

import cn.iocoder.yudao.module.radiotherapy.controller.admin.vo.event.AeEventProcessReqVO;
import cn.iocoder.yudao.module.radiotherapy.dal.dataobject.AeAdverseEventDO;
import cn.iocoder.yudao.module.radiotherapy.dal.dataobject.AeEventFlowDO;
import cn.iocoder.yudao.module.radiotherapy.dal.mysql.AeAdverseEventMapper;
import cn.iocoder.yudao.module.radiotherapy.dal.mysql.AeEventFlowMapper;
import cn.iocoder.yudao.module.radiotherapy.enums.EventStatus;
import cn.iocoder.yudao.module.radiotherapy.service.AeEventProcessService;
import jakarta.annotation.Resource;
import org.springframework.stereotype.Service;
import org.springframework.validation.annotation.Validated;

import java.time.LocalDateTime;

import static cn.iocoder.yudao.framework.common.exception.util.ServiceExceptionUtil.exception;
import static cn.iocoder.yudao.module.radiotherapy.enums.ErrorCodeConstants.*;

@Service
@Validated
public class AeEventProcessServiceImpl implements AeEventProcessService {

    @Resource
    private AeAdverseEventMapper eventMapper;

    @Resource
    private AeEventFlowMapper flowMapper;

    @Override
    public void processEvent(AeEventProcessReqVO reqVO, Long handlerId) {
        AeAdverseEventDO event = eventMapper.selectById(reqVO.getEventId());
        if (event == null) {
            throw exception(AE_ADVERSE_EVENT_NOT_EXISTS);
        }

        int currentStatus = event.getStatus();
        int toStatus = resolveTargetStatus(currentStatus, reqVO.getAction(), event);

        // 写流程记录
        AeEventFlowDO flow = new AeEventFlowDO();
        flow.setEventId(event.getId());
        flow.setFromStatus(currentStatus);
        flow.setToStatus(toStatus);
        flow.setHandlerId(handlerId);
        flow.setAction(reqVO.getAction());
        flow.setOpinion(reqVO.getOpinion());
        flow.setCause(reqVO.getCause());
        flow.setDamageLevel(reqVO.getDamageLevel());
        flow.setNeedTrack(reqVO.getNeedTrack());
        flow.setTransferDeptId(reqVO.getTransferDeptId());
        flow.setHandleTime(LocalDateTime.now());
        flowMapper.insert(flow);

        // 更新事件状态
        AeAdverseEventDO updateEvent = new AeAdverseEventDO();
        updateEvent.setId(event.getId());
        updateEvent.setStatus(toStatus);
        if (reqVO.getNextHandlerId() != null) {
            updateEvent.setCurrentHandlerId(reqVO.getNextHandlerId());
        }
        if (reqVO.getTransferDeptId() != null) {
            updateEvent.setCurrentDeptId(reqVO.getTransferDeptId());
        }
        eventMapper.updateById(updateEvent);
    }

    private int resolveTargetStatus(int currentStatus, String action, AeAdverseEventDO event) {
        switch (currentStatus) {
            case 0: // DRAFT
                if ("SUBMIT".equals(action)) {
                    return event.getReportMode() == 2
                            ? EventStatus.FUNC_PENDING.getCode()
                            : EventStatus.DEPT_PENDING.getCode();
                }
                break;
            case 10: // DEPT_PENDING
                if ("PROCESS".equals(action)) return EventStatus.FUNC_PENDING.getCode();
                if ("RETURN".equals(action)) return EventStatus.RETURNED.getCode();
                if ("VOID".equals(action)) return EventStatus.VOIDED.getCode();
                break;
            case 20: // FUNC_PENDING
                if ("PROCESS".equals(action)) {
                    return event.getLevel() <= 2
                            ? EventStatus.LEADER_PENDING.getCode()
                            : EventStatus.COMPLETED.getCode();
                }
                if ("RETURN".equals(action)) return EventStatus.RETURNED.getCode();
                if ("VOID".equals(action)) return EventStatus.VOIDED.getCode();
                if ("NOT_TRUE".equals(action)) return EventStatus.NOT_TRUE.getCode();
                if ("TRANSFER".equals(action)) return EventStatus.FUNC_PENDING.getCode();
                break;
            case 30: // LEADER_PENDING
                if ("PROCESS".equals(action)) return EventStatus.COMPLETED.getCode();
                if ("TO_COMMITTEE".equals(action)) return EventStatus.COMMITTEE_PENDING.getCode();
                break;
            case 40: // COMMITTEE_PENDING
                if ("PROCESS".equals(action)) return EventStatus.COMPLETED.getCode();
                break;
        }
        throw exception(AE_ADVERSE_EVENT_STATUS_ERROR);
    }
}
