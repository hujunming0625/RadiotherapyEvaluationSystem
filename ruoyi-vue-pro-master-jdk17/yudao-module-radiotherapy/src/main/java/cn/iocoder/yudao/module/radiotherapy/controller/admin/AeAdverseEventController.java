package cn.iocoder.yudao.module.radiotherapy.controller.admin;

import cn.iocoder.yudao.framework.common.pojo.CommonResult;
import cn.iocoder.yudao.framework.common.pojo.PageResult;
import cn.iocoder.yudao.framework.common.util.object.BeanUtils;
import cn.iocoder.yudao.framework.security.core.util.SecurityFrameworkUtils;
import cn.iocoder.yudao.module.radiotherapy.controller.admin.vo.event.*;
import cn.iocoder.yudao.module.radiotherapy.dal.dataobject.AeAdverseEventDO;
import cn.iocoder.yudao.module.radiotherapy.dal.dataobject.AeEventFlowDO;
import cn.iocoder.yudao.module.radiotherapy.service.AeAdverseEventService;
import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.Parameter;
import io.swagger.v3.oas.annotations.tags.Tag;
import jakarta.annotation.Resource;
import jakarta.validation.Valid;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

import java.util.List;

import static cn.iocoder.yudao.framework.common.pojo.CommonResult.success;

@Tag(name = "管理后台 - 不良事件")
@RestController
@RequestMapping("/radiotherapy/event")
@Validated
public class AeAdverseEventController {

    @Resource
    private AeAdverseEventService eventService;

    @PostMapping("/create")
    @Operation(summary = "上报不良事件")
    public CommonResult<Long> createEvent(@Valid @RequestBody AeAdverseEventCreateReqVO reqVO) {
        Long userId = SecurityFrameworkUtils.getLoginUserId();
        return success(eventService.createEvent(reqVO, userId));
    }

    @GetMapping("/page")
    @Operation(summary = "获得事件分页")
    public CommonResult<PageResult<AeAdverseEventRespVO>> getEventPage(@Valid AeAdverseEventPageReqVO pageReqVO) {
        PageResult<AeAdverseEventDO> pageResult = eventService.getEventPage(pageReqVO);
        return success(BeanUtils.toBean(pageResult, AeAdverseEventRespVO.class));
    }

    @GetMapping("/get")
    @Operation(summary = "获得事件详情")
    @Parameter(name = "id", description = "事件编号", required = true)
    public CommonResult<AeAdverseEventRespVO> getEvent(@RequestParam("id") Long id) {
        AeAdverseEventDO event = eventService.getEvent(id);
        AeAdverseEventRespVO vo = BeanUtils.toBean(event, AeAdverseEventRespVO.class);
        List<AeEventFlowDO> flows = eventService.getEventFlows(id);
        vo.setFlows(BeanUtils.toBean(flows, AeEventFlowRespVO.class));
        return success(vo);
    }

    @DeleteMapping("/withdraw")
    @Operation(summary = "撤回事件")
    @Parameter(name = "id", description = "事件编号", required = true)
    public CommonResult<Boolean> withdrawEvent(@RequestParam("id") Long id) {
        Long userId = SecurityFrameworkUtils.getLoginUserId();
        eventService.withdrawEvent(id, userId);
        return success(true);
    }
}
