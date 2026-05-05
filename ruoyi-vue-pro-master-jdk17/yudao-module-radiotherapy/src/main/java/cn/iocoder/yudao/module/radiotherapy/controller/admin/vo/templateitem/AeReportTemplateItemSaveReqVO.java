package cn.iocoder.yudao.module.radiotherapy.controller.admin.vo.templateitem;

import io.swagger.v3.oas.annotations.media.Schema;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotNull;
import lombok.Data;

@Schema(description = "管理后台 - 报告单项新增/修改 Request VO")
@Data
public class AeReportTemplateItemSaveReqVO {

    @Schema(description = "编号", example = "1")
    private Long id;

    @Schema(description = "模板编号", requiredMode = Schema.RequiredMode.REQUIRED, example = "1")
    @NotNull(message = "模板编号不能为空")
    private Long templateId;

    @Schema(description = "字段标签", requiredMode = Schema.RequiredMode.REQUIRED, example = "事件发生时间")
    @NotBlank(message = "字段标签不能为空")
    private String label;

    @Schema(description = "字段类型", requiredMode = Schema.RequiredMode.REQUIRED, example = "DATE")
    @NotBlank(message = "字段类型不能为空")
    private String fieldType;

    @Schema(description = "是否必填", example = "1")
    private Integer required;

    @Schema(description = "选项配置 JSON", example = "[{\"label\":\"用药错误\",\"value\":\"medication_error\"}]")
    private String options;

    @Schema(description = "字典类型编码", example = "adverse_event_type")
    private String dictType;

    @Schema(description = "占位提示", example = "请选择事件等级")
    private String placeholder;

    @Schema(description = "默认值", example = "")
    private String defaultValue;

    @Schema(description = "排序号", example = "0")
    private Integer sort;
}
