package cn.iocoder.yudao.module.radiotherapy.controller.admin.vo.event;

import io.swagger.v3.oas.annotations.media.Schema;
import lombok.Data;

import java.time.LocalDateTime;

@Schema(description = "管理后台 - 事件追踪 Response VO")
@Data
public class AeEventTrackRespVO {

    @Schema(description = "追踪ID", example = "1")
    private Long id;

    @Schema(description = "事件ID", example = "1")
    private Long eventId;

    @Schema(description = "事件编号", example = "AE20260501001")
    private String eventNo;

    @Schema(description = "追踪时间")
    private LocalDateTime trackTime;

    @Schema(description = "提醒时间")
    private LocalDateTime remindTime;

    @Schema(description = "追踪内容")
    private String content;

    @Schema(description = "追踪人ID")
    private Long trackerId;

    @Schema(description = "状态（1追踪中 2已完成）")
    private Integer status;

    @Schema(description = "创建时间")
    private LocalDateTime createTime;
}
