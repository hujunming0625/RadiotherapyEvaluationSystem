package cn.iocoder.yudao.module.radiotherapy.service.impl;

import cn.iocoder.yudao.module.radiotherapy.controller.admin.vo.event.AeEventProcessReqVO;
import cn.iocoder.yudao.module.radiotherapy.dal.dataobject.AeAdverseEventDO;
import cn.iocoder.yudao.module.radiotherapy.dal.dataobject.AeEventFlowDO;
import cn.iocoder.yudao.module.radiotherapy.dal.dataobject.AeEventNotifyDO;
import cn.iocoder.yudao.module.radiotherapy.dal.mysql.AeAdverseEventMapper;
import cn.iocoder.yudao.module.radiotherapy.dal.mysql.AeEventFlowMapper;
import cn.iocoder.yudao.module.radiotherapy.dal.mysql.AeEventNotifyMapper;
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

    @Resource
    private AeEventNotifyMapper notifyMapper;

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

        // 创建通知记录
        createNotifyOnStatusChange(event, toStatus, reqVO, handlerId);
    }

    private void createNotifyOnStatusChange(AeAdverseEventDO event, int toStatus,
                                             AeEventProcessReqVO reqVO, Long handlerId) {
        String statusName = EventStatus.getDescByCode(toStatus);
        String content = String.format("事件[%s]状态变更为：%s", event.getEventNo(), statusName);

        AeEventNotifyDO notify = new AeEventNotifyDO();
        notify.setEventId(event.getId());
        notify.setContent(content);
        notify.setStatus(0); // 未读

        // 根据目标状态确定通知目标
        if (toStatus == EventStatus.DEPT_PENDING.getCode()) {
            notify.setDeptId(event.getDeptId());
        } else if (toStatus == EventStatus.FUNC_PENDING.getCode()) {
            notify.setDeptId(reqVO.getTransferDeptId() != null ? reqVO.getTransferDeptId() : 205L);
        } else if (toStatus == EventStatus.LEADER_PENDING.getCode()) {
            notify.setDeptId(205L); // 医务处
        } else if (toStatus == EventStatus.COMMITTEE_PENDING.getCode()) {
            notify.setDeptId(206L); // 质管办
        } else if (toStatus == EventStatus.COMPLETED.getCode()) {
            notify.setNotifyUserId(event.getReporterId());
            content = String.format("您上报的事件[%s]已处理完成", event.getEventNo());
            notify.setContent(content);
        }

        if (notify.getDeptId() != null || notify.getNotifyUserId() != null) {
            notifyMapper.insert(notify);
        }
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
                if ("INTERVENE".equals(action)) return EventStatus.COMPLETED.getCode();
                break;
            case 30: // LEADER_PENDING
                if ("PROCESS".equals(action)) return EventStatus.COMPLETED.getCode();
                if ("TO_COMMITTEE".equals(action)) return EventStatus.COMMITTEE_PENDING.getCode();
                if ("INTERVENE".equals(action)) return EventStatus.COMPLETED.getCode();
                break;
            case 40: // COMMITTEE_PENDING
                if ("PROCESS".equals(action)) return EventStatus.COMPLETED.getCode();
                if ("INTERVENE".equals(action)) return EventStatus.COMPLETED.getCode();
                break;
        }
        throw exception(AE_ADVERSE_EVENT_STATUS_ERROR);
    }
}
