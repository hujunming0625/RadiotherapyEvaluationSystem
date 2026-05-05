package cn.iocoder.yudao.module.radiotherapy.controller.admin;

import cn.iocoder.yudao.framework.common.pojo.CommonResult;
import cn.iocoder.yudao.framework.security.core.util.SecurityFrameworkUtils;
import cn.iocoder.yudao.module.radiotherapy.controller.admin.vo.event.AeEventProcessReqVO;
import cn.iocoder.yudao.module.radiotherapy.service.AeEventProcessService;
import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.tags.Tag;
import jakarta.annotation.Resource;
import jakarta.validation.Valid;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

import static cn.iocoder.yudao.framework.common.pojo.CommonResult.success;

@Tag(name = "管理后台 - 事件处理")
@RestController
@RequestMapping("/radiotherapy/process")
@Validated
public class AeEventProcessController {

    @Resource
    private AeEventProcessService processService;

    @PostMapping("/handle")
    @Operation(summary = "处理事件")
    public CommonResult<Boolean> handleEvent(@Valid @RequestBody AeEventProcessReqVO reqVO) {
        Long userId = SecurityFrameworkUtils.getLoginUserId();
        processService.processEvent(reqVO, userId);
        return success(true);
    }
}
