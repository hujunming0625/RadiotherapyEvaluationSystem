package cn.iocoder.yudao.module.radiotherapy.controller.admin;

import cn.iocoder.yudao.framework.common.pojo.CommonResult;
import cn.iocoder.yudao.framework.common.pojo.PageResult;
import cn.iocoder.yudao.framework.common.util.object.BeanUtils;
import cn.iocoder.yudao.module.radiotherapy.controller.admin.vo.template.AeReportTemplatePageReqVO;
import cn.iocoder.yudao.module.radiotherapy.controller.admin.vo.template.AeReportTemplateRespVO;
import cn.iocoder.yudao.module.radiotherapy.controller.admin.vo.template.AeReportTemplateSaveReqVO;
import cn.iocoder.yudao.module.radiotherapy.dal.dataobject.AeReportTemplateDO;
import cn.iocoder.yudao.module.radiotherapy.service.AeReportTemplateService;
import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.Parameter;
import io.swagger.v3.oas.annotations.tags.Tag;
import jakarta.annotation.Resource;
import jakarta.validation.Valid;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

import static cn.iocoder.yudao.framework.common.pojo.CommonResult.success;

@Tag(name = "管理后台 - 报告单模板")
@RestController
@RequestMapping("/radiotherapy/template")
@Validated
public class AeReportTemplateController {

    @Resource
    private AeReportTemplateService aeReportTemplateService;

    @GetMapping("/page")
    @Operation(summary = "获得报告单模板分页")
    public CommonResult<PageResult<AeReportTemplateRespVO>> getTemplatePage(@Valid AeReportTemplatePageReqVO pageReqVO) {
        PageResult<AeReportTemplateDO> pageResult = aeReportTemplateService.getTemplatePage(pageReqVO);
        return success(BeanUtils.toBean(pageResult, AeReportTemplateRespVO.class));
    }

    @PostMapping("/create")
    @Operation(summary = "创建报告单模板")
    public CommonResult<Long> createTemplate(@Valid @RequestBody AeReportTemplateSaveReqVO createReqVO) {
        return success(aeReportTemplateService.createTemplate(createReqVO));
    }

    @PutMapping("/update")
    @Operation(summary = "更新报告单模板")
    public CommonResult<Boolean> updateTemplate(@Valid @RequestBody AeReportTemplateSaveReqVO updateReqVO) {
        aeReportTemplateService.updateTemplate(updateReqVO);
        return success(true);
    }

    @DeleteMapping("/delete")
    @Operation(summary = "删除报告单模板")
    @Parameter(name = "id", description = "编号", required = true)
    public CommonResult<Boolean> deleteTemplate(@RequestParam("id") Long id) {
        aeReportTemplateService.deleteTemplate(id);
        return success(true);
    }

    @GetMapping("/get")
    @Operation(summary = "获得报告单模板")
    @Parameter(name = "id", description = "编号", required = true, example = "1")
    public CommonResult<AeReportTemplateRespVO> getTemplate(@RequestParam("id") Long id) {
        AeReportTemplateDO template = aeReportTemplateService.getTemplate(id);
        return success(BeanUtils.toBean(template, AeReportTemplateRespVO.class));
    }
}
