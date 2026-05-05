package cn.iocoder.yudao.module.radiotherapy.controller.admin.vo.template;

import cn.iocoder.yudao.framework.common.pojo.PageParam;
import io.swagger.v3.oas.annotations.media.Schema;
import lombok.Data;
import lombok.EqualsAndHashCode;

@Schema(description = "管理后台 - 报告单模板分页查询 Request VO")
@Data
@EqualsAndHashCode(callSuper = true)
public class AeReportTemplatePageReqVO extends PageParam {

    @Schema(description = "模板名称", example = "医疗安全事件报告单")
    private String name;

    @Schema(description = "类别", example = "MEDICAL")
    private String category;

    @Schema(description = "状态（1启用 0禁用）", example = "1")
    private Integer status;
}
