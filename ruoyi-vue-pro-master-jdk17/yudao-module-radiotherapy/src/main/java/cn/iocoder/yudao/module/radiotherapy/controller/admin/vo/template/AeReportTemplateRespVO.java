package cn.iocoder.yudao.module.radiotherapy.controller.admin.vo.template;

import io.swagger.v3.oas.annotations.media.Schema;
import lombok.Data;

import java.time.LocalDateTime;

@Schema(description = "管理后台 - 报告单模板 Response VO")
@Data
public class AeReportTemplateRespVO {

    @Schema(description = "模板编号", example = "1")
    private Long id;

    @Schema(description = "模板名称", example = "医疗安全事件报告单")
    private String name;

    @Schema(description = "类别", example = "MEDICAL")
    private String category;

    @Schema(description = "状态", example = "1")
    private Integer status;

    @Schema(description = "模板说明", example = "用于医疗安全不良事件上报")
    private String description;

    @Schema(description = "排序号", example = "0")
    private Integer sort;

    @Schema(description = "创建时间")
    private LocalDateTime createTime;
}
