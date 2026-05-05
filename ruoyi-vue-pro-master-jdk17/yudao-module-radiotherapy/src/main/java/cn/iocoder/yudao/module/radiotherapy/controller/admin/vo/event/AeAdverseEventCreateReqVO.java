package cn.iocoder.yudao.module.radiotherapy.controller.admin.vo.event;

import io.swagger.v3.oas.annotations.media.Schema;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotNull;
import lombok.Data;

@Schema(description = "管理后台 - 不良事件创建 Request VO")
@Data
public class AeAdverseEventCreateReqVO {

    @Schema(description = "报告单模板ID", requiredMode = Schema.RequiredMode.REQUIRED, example = "1")
    @NotNull(message = "模板ID不能为空")
    private Long templateId;

    @Schema(description = "事件类别", requiredMode = Schema.RequiredMode.REQUIRED, example = "MEDICAL")
    @NotBlank(message = "类别不能为空")
    private String category;

    @Schema(description = "事件等级（1-I级 2-II级 3-III级 4-IV级）", requiredMode = Schema.RequiredMode.REQUIRED, example = "3")
    @NotNull(message = "事件等级不能为空")
    private Integer level;

    @Schema(description = "事件发生科室ID", requiredMode = Schema.RequiredMode.REQUIRED, example = "1")
    @NotNull(message = "科室不能为空")
    private Long deptId;

    @Schema(description = "事件简要描述", example = "患者在病房跌倒...")
    private String description;

    @Schema(description = "动态表单填报数据JSON", example = "[{\"item_id\":1,\"label\":\"时间\",\"value\":\"2026-05-01\"}]")
    private String formData;

    @Schema(description = "上报模式（1逐级上报 2直报）", requiredMode = Schema.RequiredMode.REQUIRED, example = "1")
    @NotNull(message = "上报模式不能为空")
    private Integer reportMode;

    @Schema(description = "上报方式（1实名 2匿名）", requiredMode = Schema.RequiredMode.REQUIRED, example = "1")
    @NotNull(message = "上报方式不能为空")
    private Integer reporterType;
}
