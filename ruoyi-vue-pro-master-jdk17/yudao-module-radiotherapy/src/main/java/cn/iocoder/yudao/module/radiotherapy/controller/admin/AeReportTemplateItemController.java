package cn.iocoder.yudao.module.radiotherapy.controller.admin;

import cn.iocoder.yudao.framework.common.pojo.CommonResult;
import cn.iocoder.yudao.framework.common.util.object.BeanUtils;
import cn.iocoder.yudao.module.radiotherapy.controller.admin.vo.templateitem.AeReportTemplateItemRespVO;
import cn.iocoder.yudao.module.radiotherapy.controller.admin.vo.templateitem.AeReportTemplateItemSaveReqVO;
import cn.iocoder.yudao.module.radiotherapy.dal.dataobject.AeReportTemplateItemDO;
import cn.iocoder.yudao.module.radiotherapy.service.AeReportTemplateItemService;
import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.Parameter;
import io.swagger.v3.oas.annotations.tags.Tag;
import jakarta.annotation.Resource;
import jakarta.validation.Valid;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

import java.util.List;

import static cn.iocoder.yudao.framework.common.pojo.CommonResult.success;

@Tag(name = "管理后台 - 报告单项")
@RestController
@RequestMapping("/radiotherapy/template-item")
@Validated
public class AeReportTemplateItemController {

    @Resource
    private AeReportTemplateItemService itemService;

    @GetMapping("/list")
    @Operation(summary = "获得模板的报告单项列表")
    @Parameter(name = "templateId", description = "模板编号", required = true)
    public CommonResult<List<AeReportTemplateItemRespVO>> getItemList(@RequestParam("templateId") Long templateId) {
        List<AeReportTemplateItemDO> items = itemService.getItemsByTemplateId(templateId);
        return success(BeanUtils.toBean(items, AeReportTemplateItemRespVO.class));
    }

    @PostMapping("/create")
    @Operation(summary = "创建报告单项")
    public CommonResult<Long> createItem(@Valid @RequestBody AeReportTemplateItemSaveReqVO reqVO) {
        return success(itemService.createItem(reqVO));
    }

    @PutMapping("/update")
    @Operation(summary = "更新报告单项")
    public CommonResult<Boolean> updateItem(@Valid @RequestBody AeReportTemplateItemSaveReqVO reqVO) {
        itemService.updateItem(reqVO);
        return success(true);
    }

    @DeleteMapping("/delete")
    @Operation(summary = "删除报告单项")
    @Parameter(name = "id", description = "编号", required = true)
    public CommonResult<Boolean> deleteItem(@RequestParam("id") Long id) {
        itemService.deleteItem(id);
        return success(true);
    }

    @GetMapping("/get")
    @Operation(summary = "获得报告单项")
    @Parameter(name = "id", description = "编号", required = true)
    public CommonResult<AeReportTemplateItemRespVO> getItem(@RequestParam("id") Long id) {
        AeReportTemplateItemDO item = itemService.getItem(id);
        return success(BeanUtils.toBean(item, AeReportTemplateItemRespVO.class));
    }

    @PutMapping("/sort")
    @Operation(summary = "更新报告单项排序")
    public CommonResult<Boolean> updateSort(@RequestBody List<Long> itemIds) {
        itemService.updateSort(itemIds);
        return success(true);
    }
}
