package cn.iocoder.yudao.module.radiotherapy.controller.admin.vo.event;

import io.swagger.v3.oas.annotations.media.Schema;
import jakarta.validation.constraints.NotNull;
import lombok.Data;

@Schema(description = "管理后台 - 事件处理 Request VO")
@Data
public class AeEventProcessReqVO {

    @Schema(description = "事件ID", requiredMode = Schema.RequiredMode.REQUIRED, example = "1")
    @NotNull(message = "事件ID不能为空")
    private Long eventId;

    @Schema(description = "操作类型", requiredMode = Schema.RequiredMode.REQUIRED, example = "PROCESS")
    @NotNull(message = "操作不能为空")
    private String action; // PROCESS / RETURN / VOID / NOT_TRUE / TRANSFER / TO_COMMITTEE

    @Schema(description = "处理意见", example = "已核实，转职能部门处理")
    private String opinion;

    @Schema(description = "事件原因", example = "medication_error")
    private String cause;

    @Schema(description = "损害程度", example = "1")
    private Integer damageLevel;

    @Schema(description = "是否需要追踪", example = "0")
    private Integer needTrack;

    @Schema(description = "批转目标部门ID")
    private Long transferDeptId;

    @Schema(description = "目标委员会ID（上报委员会时使用）")
    private Long committeeId;

    @Schema(description = "职能部门负责人ID（科室处理时指定下一处理人）")
    private Long nextHandlerId;
}
