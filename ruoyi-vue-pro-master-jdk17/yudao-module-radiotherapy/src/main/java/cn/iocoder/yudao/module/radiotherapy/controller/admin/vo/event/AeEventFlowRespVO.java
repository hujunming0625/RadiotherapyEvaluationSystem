package cn.iocoder.yudao.module.radiotherapy.controller.admin.vo.event;

import io.swagger.v3.oas.annotations.media.Schema;
import lombok.Data;

import java.time.LocalDateTime;

@Schema(description = "管理后台 - 事件流程 Response VO")
@Data
public class AeEventFlowRespVO {

    @Schema(description = "ID", example = "1")
    private Long id;

    @Schema(description = "事件ID", example = "1")
    private Long eventId;

    @Schema(description = "流转前状态", example = "0")
    private Integer fromStatus;

    @Schema(description = "流转后状态", example = "10")
    private Integer toStatus;

    @Schema(description = "处理人ID", example = "1")
    private Long handlerId;

    @Schema(description = "操作类型", example = "SUBMIT")
    private String action;

    @Schema(description = "处理意见")
    private String opinion;

    @Schema(description = "事件原因")
    private String cause;

    @Schema(description = "损害程度")
    private Integer damageLevel;

    @Schema(description = "是否需要追踪", example = "0")
    private Integer needTrack;

    @Schema(description = "批转目标部门ID")
    private Long transferDeptId;

    @Schema(description = "处理时间")
    private LocalDateTime handleTime;

    @Schema(description = "创建时间")
    private LocalDateTime createTime;
}
