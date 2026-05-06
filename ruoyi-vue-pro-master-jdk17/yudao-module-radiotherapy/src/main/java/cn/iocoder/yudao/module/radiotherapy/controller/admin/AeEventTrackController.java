package cn.iocoder.yudao.module.radiotherapy.controller.admin;

import cn.iocoder.yudao.framework.common.pojo.CommonResult;
import cn.iocoder.yudao.framework.common.pojo.PageParam;
import cn.iocoder.yudao.framework.common.pojo.PageResult;
import cn.iocoder.yudao.framework.common.util.object.BeanUtils;
import cn.iocoder.yudao.module.radiotherapy.controller.admin.vo.event.AeEventTrackRespVO;
import cn.iocoder.yudao.module.radiotherapy.dal.dataobject.AeAdverseEventDO;
import cn.iocoder.yudao.module.radiotherapy.dal.dataobject.AeEventTrackDO;
import cn.iocoder.yudao.module.radiotherapy.dal.mysql.AeAdverseEventMapper;
import cn.iocoder.yudao.module.radiotherapy.dal.mysql.AeEventTrackMapper;
import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.Parameter;
import io.swagger.v3.oas.annotations.tags.Tag;
import jakarta.annotation.Resource;
import jakarta.validation.Valid;
import org.springframework.web.bind.annotation.*;

import static cn.iocoder.yudao.framework.common.pojo.CommonResult.success;

@Tag(name = "管理后台 - 事件追踪")
@RestController
@RequestMapping("/radiotherapy/event-track")
public class AeEventTrackController {

    @Resource
    private AeEventTrackMapper trackMapper;

    @Resource
    private AeAdverseEventMapper eventMapper;

    @GetMapping("/page")
    @Operation(summary = "获得追踪分页")
    public CommonResult<PageResult<AeEventTrackRespVO>> getPage(@Valid PageParam pageReqVO) {
        PageResult<AeEventTrackDO> pageResult = trackMapper.selectPage(pageReqVO);
        PageResult<AeEventTrackRespVO> result = BeanUtils.toBean(pageResult, AeEventTrackRespVO.class);
        result.getList().forEach(vo -> {
            AeAdverseEventDO event = eventMapper.selectById(vo.getEventId());
            if (event != null) {
                vo.setEventNo(event.getEventNo());
            }
        });
        return success(result);
    }

    @PostMapping("/create")
    @Operation(summary = "创建追踪")
    public CommonResult<Long> create(@RequestBody AeEventTrackDO track) {
        trackMapper.insert(track);
        return success(track.getId());
    }

    @PutMapping("/update")
    @Operation(summary = "更新追踪")
    public CommonResult<Boolean> update(@RequestBody AeEventTrackDO track) {
        trackMapper.updateById(track);
        return success(true);
    }

    @DeleteMapping("/delete")
    @Operation(summary = "删除追踪")
    @Parameter(name = "id", required = true)
    public CommonResult<Boolean> delete(@RequestParam("id") Long id) {
        trackMapper.deleteById(id);
        return success(true);
    }
}
