package cn.iocoder.yudao.module.radiotherapy.controller.admin.vo.event;

import io.swagger.v3.oas.annotations.media.Schema;
import lombok.Data;

import java.time.LocalDateTime;

@Schema(description = "管理后台 - 事件告知 Response VO")
@Data
public class AeEventNotifyRespVO {

    @Schema(description = "编号")
    private Long id;

    @Schema(description = "事件编号")
    private Long eventId;

    @Schema(description = "事件编号显示")
    private String eventNo;

    @Schema(description = "告知科室ID")
    private Long deptId;

    @Schema(description = "告知科室名称")
    private String deptName;

    @Schema(description = "告知人ID")
    private Long notifyUserId;

    @Schema(description = "告知内容")
    private String content;

    @Schema(description = "状态 0=未读 1=已读")
    private Integer status;

    @Schema(description = "创建时间")
    private LocalDateTime createTime;
}
