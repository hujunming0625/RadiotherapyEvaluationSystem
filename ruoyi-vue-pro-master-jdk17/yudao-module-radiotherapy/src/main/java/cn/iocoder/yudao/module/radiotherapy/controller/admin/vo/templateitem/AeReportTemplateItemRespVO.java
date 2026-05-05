package cn.iocoder.yudao.module.radiotherapy.controller.admin.vo.templateitem;

import io.swagger.v3.oas.annotations.media.Schema;
import lombok.Data;

import java.time.LocalDateTime;

@Schema(description = "管理后台 - 报告单项 Response VO")
@Data
public class AeReportTemplateItemRespVO {

    @Schema(description = "编号", example = "1")
    private Long id;

    @Schema(description = "模板编号", example = "1")
    private Long templateId;

    @Schema(description = "字段标签", example = "事件发生时间")
    private String label;

    @Schema(description = "字段类型", example = "DATE")
    private String fieldType;

    @Schema(description = "是否必填", example = "1")
    private Integer required;

    @Schema(description = "选项配置 JSON", example = "[]")
    private String options;

    @Schema(description = "字典类型编码", example = "")
    private String dictType;

    @Schema(description = "占位提示", example = "请选择事件等级")
    private String placeholder;

    @Schema(description = "默认值", example = "")
    private String defaultValue;

    @Schema(description = "排序号", example = "0")
    private Integer sort;

    @Schema(description = "创建时间")
    private LocalDateTime createTime;
}
