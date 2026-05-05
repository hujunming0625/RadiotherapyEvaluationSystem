package cn.iocoder.yudao.module.radiotherapy.controller.admin.vo.template;

import io.swagger.v3.oas.annotations.media.Schema;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotNull;
import lombok.Data;

@Schema(description = "管理后台 - 报告单模板新增/修改 Request VO")
@Data
public class AeReportTemplateSaveReqVO {

    @Schema(description = "模板编号", example = "1")
    private Long id;

    @Schema(description = "模板名称", requiredMode = Schema.RequiredMode.REQUIRED, example = "医疗安全事件报告单")
    @NotBlank(message = "模板名称不能为空")
    private String name;

    @Schema(description = "类别", requiredMode = Schema.RequiredMode.REQUIRED, example = "MEDICAL")
    @NotBlank(message = "类别不能为空")
    private String category;

    @Schema(description = "状态（1启用 0禁用）", requiredMode = Schema.RequiredMode.REQUIRED, example = "1")
    @NotNull(message = "状态不能为空")
    private Integer status;

    @Schema(description = "模板说明", example = "用于医疗安全不良事件上报")
    private String description;

    @Schema(description = "排序号", example = "0")
    private Integer sort;
}
