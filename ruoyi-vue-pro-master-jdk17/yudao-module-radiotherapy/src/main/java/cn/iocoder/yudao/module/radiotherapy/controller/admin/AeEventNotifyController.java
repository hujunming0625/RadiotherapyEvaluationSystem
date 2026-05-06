package cn.iocoder.yudao.module.radiotherapy.controller.admin;

import cn.iocoder.yudao.framework.common.pojo.CommonResult;
import cn.iocoder.yudao.framework.common.pojo.PageResult;
import cn.iocoder.yudao.framework.common.util.object.BeanUtils;
import cn.iocoder.yudao.framework.security.core.util.SecurityFrameworkUtils;
import cn.iocoder.yudao.module.radiotherapy.controller.admin.vo.event.AeEventNotifyRespVO;
import cn.iocoder.yudao.module.radiotherapy.dal.dataobject.AeAdverseEventDO;
import cn.iocoder.yudao.module.radiotherapy.dal.dataobject.AeEventNotifyDO;
import cn.iocoder.yudao.module.radiotherapy.dal.mysql.AeAdverseEventMapper;
import cn.iocoder.yudao.module.radiotherapy.dal.mysql.AeEventNotifyMapper;
import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.Parameter;
import io.swagger.v3.oas.annotations.tags.Tag;
import jakarta.annotation.Resource;
import org.springframework.web.bind.annotation.*;

import java.util.List;

import static cn.iocoder.yudao.framework.common.pojo.CommonResult.success;

@Tag(name = "管理后台 - 事件告知")
@RestController
@RequestMapping("/radiotherapy/event-notify")
public class AeEventNotifyController {

    @Resource
    private AeEventNotifyMapper notifyMapper;

    @Resource
    private AeAdverseEventMapper eventMapper;

    @GetMapping("/list")
    @Operation(summary = "获得事件告知列表")
    public CommonResult<List<AeEventNotifyRespVO>> getList(@RequestParam("eventId") Long eventId) {
        List<AeEventNotifyDO> list = notifyMapper.selectList(
                new cn.iocoder.yudao.framework.mybatis.core.query.LambdaQueryWrapperX<AeEventNotifyDO>()
                        .eq(AeEventNotifyDO::getEventId, eventId));
        List<AeEventNotifyRespVO> result = BeanUtils.toBean(list, AeEventNotifyRespVO.class);
        result.forEach(vo -> {
            AeAdverseEventDO event = eventMapper.selectById(vo.getEventId());
            if (event != null) vo.setEventNo(event.getEventNo());
        });
        return success(result);
    }

    @PostMapping("/create")
    @Operation(summary = "创建事件告知")
    public CommonResult<Long> create(@RequestParam("eventId") Long eventId,
                                     @RequestParam("deptId") Long deptId,
                                     @RequestParam(value = "content", required = false) String content) {
        AeEventNotifyDO notify = new AeEventNotifyDO();
        notify.setEventId(eventId);
        notify.setDeptId(deptId);
        notify.setNotifyUserId(SecurityFrameworkUtils.getLoginUserId());
        notify.setContent(content);
        notify.setStatus(0);
        notifyMapper.insert(notify);
        return success(notify.getId());
    }

    @PutMapping("/read")
    @Operation(summary = "标记已读")
    @Parameter(name = "id", required = true)
    public CommonResult<Boolean> markRead(@RequestParam("id") Long id) {
        AeEventNotifyDO notify = new AeEventNotifyDO();
        notify.setId(id);
        notify.setStatus(1);
        notifyMapper.updateById(notify);
        return success(true);
    }

    @GetMapping("/my-notifies")
    @Operation(summary = "获取我科室的告知")
    public CommonResult<List<AeEventNotifyRespVO>> getMyNotifies(@RequestParam("deptId") Long deptId) {
        List<AeEventNotifyDO> list = notifyMapper.selectList(
                new cn.iocoder.yudao.framework.mybatis.core.query.LambdaQueryWrapperX<AeEventNotifyDO>()
                        .eq(AeEventNotifyDO::getDeptId, deptId)
                        .orderByDesc(AeEventNotifyDO::getCreateTime));
        List<AeEventNotifyRespVO> result = BeanUtils.toBean(list, AeEventNotifyRespVO.class);
        result.forEach(vo -> {
            AeAdverseEventDO event = eventMapper.selectById(vo.getEventId());
            if (event != null) vo.setEventNo(event.getEventNo());
        });
        return success(result);
    }
}
