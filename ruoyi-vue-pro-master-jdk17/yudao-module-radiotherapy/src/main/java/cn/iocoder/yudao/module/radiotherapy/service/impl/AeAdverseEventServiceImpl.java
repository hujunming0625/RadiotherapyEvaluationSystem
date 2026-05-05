package cn.iocoder.yudao.module.radiotherapy.service.impl;

import cn.iocoder.yudao.framework.common.pojo.PageResult;
import cn.iocoder.yudao.framework.common.util.object.BeanUtils;
import cn.iocoder.yudao.module.radiotherapy.controller.admin.vo.event.AeAdverseEventCreateReqVO;
import cn.iocoder.yudao.module.radiotherapy.controller.admin.vo.event.AeAdverseEventPageReqVO;
import cn.iocoder.yudao.module.radiotherapy.dal.dataobject.AeAdverseEventDO;
import cn.iocoder.yudao.module.radiotherapy.dal.dataobject.AeEventFlowDO;
import cn.iocoder.yudao.module.radiotherapy.dal.mysql.AeAdverseEventMapper;
import cn.iocoder.yudao.module.radiotherapy.dal.mysql.AeEventFlowMapper;
import cn.iocoder.yudao.module.radiotherapy.enums.EventStatus;
import cn.iocoder.yudao.module.radiotherapy.service.AeAdverseEventService;
import jakarta.annotation.Resource;
import org.springframework.stereotype.Service;
import org.springframework.validation.annotation.Validated;

import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.List;

import static cn.iocoder.yudao.framework.common.exception.util.ServiceExceptionUtil.exception;
import static cn.iocoder.yudao.module.radiotherapy.enums.ErrorCodeConstants.*;

@Service
@Validated
public class AeAdverseEventServiceImpl implements AeAdverseEventService {

    @Resource
    private AeAdverseEventMapper eventMapper;

    @Resource
    private AeEventFlowMapper flowMapper;

    @Override
    public Long createEvent(AeAdverseEventCreateReqVO reqVO, Long userId) {
        AeAdverseEventDO event = BeanUtils.toBean(reqVO, AeAdverseEventDO.class);
        event.setEventNo(generateEventNo());
        event.setStatus(EventStatus.DRAFT.getCode());
        event.setReporterId(userId);
        event.setReportTime(LocalDateTime.now());
        event.setCurrentHandlerId(userId);
        eventMapper.insert(event);

        // 写初始流程记录
        AeEventFlowDO flow = new AeEventFlowDO();
        flow.setEventId(event.getId());
        flow.setFromStatus(0);
        flow.setToStatus(EventStatus.DRAFT.getCode());
        flow.setHandlerId(userId);
        flow.setAction("SUBMIT");
        flow.setHandleTime(LocalDateTime.now());
        flowMapper.insert(flow);

        return event.getId();
    }

    @Override
    public PageResult<AeAdverseEventDO> getEventPage(AeAdverseEventPageReqVO reqVO) {
        return eventMapper.selectPage(reqVO);
    }

    @Override
    public AeAdverseEventDO getEvent(Long id) {
        AeAdverseEventDO event = eventMapper.selectById(id);
        if (event == null) {
            throw exception(AE_ADVERSE_EVENT_NOT_EXISTS);
        }
        return event;
    }

    @Override
    public List<AeEventFlowDO> getEventFlows(Long eventId) {
        return flowMapper.selectListByEventId(eventId);
    }

    @Override
    public void withdrawEvent(Long eventId, Long userId) {
        AeAdverseEventDO event = getEvent(eventId);
        if (!event.getReporterId().equals(userId)) {
            throw exception(AE_ADVERSE_EVENT_STATUS_ERROR);
        }
        if (event.getStatus() != EventStatus.DRAFT.getCode()
                && event.getStatus() != EventStatus.DEPT_PENDING.getCode()) {
            throw exception(AE_ADVERSE_EVENT_STATUS_ERROR);
        }
        eventMapper.deleteById(eventId);
    }

    private String generateEventNo() {
        String date = LocalDate.now().format(DateTimeFormatter.ofPattern("yyyyMMdd"));
        String suffix = String.format("%04d", (int) (Math.random() * 10000));
        return "AE" + date + suffix;
    }
}
