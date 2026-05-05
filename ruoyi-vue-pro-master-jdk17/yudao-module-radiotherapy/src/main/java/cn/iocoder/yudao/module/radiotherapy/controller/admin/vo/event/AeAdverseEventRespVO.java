package cn.iocoder.yudao.module.radiotherapy.controller.admin.vo.event;

import io.swagger.v3.oas.annotations.media.Schema;
import lombok.Data;

import java.time.LocalDateTime;
import java.util.List;

@Schema(description = "管理后台 - 不良事件 Response VO")
@Data
public class AeAdverseEventRespVO {

    @Schema(description = "事件ID", example = "1")
    private Long id;

    @Schema(description = "事件编号", example = "AE20260501001")
    private String eventNo;

    @Schema(description = "模板ID", example = "1")
    private Long templateId;

    @Schema(description = "类别", example = "MEDICAL")
    private String category;

    @Schema(description = "等级", example = "3")
    private Integer level;

    @Schema(description = "状态", example = "10")
    private Integer status;

    @Schema(description = "上报人ID", example = "1")
    private Long reporterId;

    @Schema(description = "上报方式（1实名 2匿名）", example = "1")
    private Integer reporterType;

    @Schema(description = "上报时间")
    private LocalDateTime reportTime;

    @Schema(description = "科室ID", example = "1")
    private Long deptId;

    @Schema(description = "科室名称", example = "肿瘤放疗科")
    private String deptName;

    @Schema(description = "事件描述")
    private String description;

    @Schema(description = "表单数据JSON")
    private String formData;

    @Schema(description = "当前处理人ID")
    private Long currentHandlerId;

    @Schema(description = "当前处理部门ID")
    private Long currentDeptId;

    @Schema(description = "上报模式（1逐级 2直报）", example = "1")
    private Integer reportMode;

    @Schema(description = "创建时间")
    private LocalDateTime createTime;

    @Schema(description = "流程记录")
    private List<AeEventFlowRespVO> flows;
}
