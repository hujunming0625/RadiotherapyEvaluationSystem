package cn.iocoder.yudao.module.radiotherapy.controller.admin.vo.event;

import cn.iocoder.yudao.framework.common.pojo.PageParam;
import io.swagger.v3.oas.annotations.media.Schema;
import lombok.Data;
import lombok.EqualsAndHashCode;
import org.springframework.format.annotation.DateTimeFormat;

import java.time.LocalDateTime;

import static cn.iocoder.yudao.framework.common.util.date.DateUtils.FORMAT_YEAR_MONTH_DAY_HOUR_MINUTE_SECOND;

@Schema(description = "管理后台 - 不良事件分页查询 Request VO")
@Data
@EqualsAndHashCode(callSuper = true)
public class AeAdverseEventPageReqVO extends PageParam {

    @Schema(description = "事件编号", example = "AE20260501001")
    private String eventNo;

    @Schema(description = "类别", example = "MEDICAL")
    private String category;

    @Schema(description = "等级", example = "1")
    private Integer level;

    @Schema(description = "状态", example = "10")
    private Integer status;

    @Schema(description = "上报人ID")
    private Long reporterId;

    @Schema(description = "科室ID")
    private Long deptId;

    @Schema(description = "当前处理人ID")
    private Long currentHandlerId;

    @Schema(description = "上报时间范围")
    @DateTimeFormat(pattern = FORMAT_YEAR_MONTH_DAY_HOUR_MINUTE_SECOND)
    private LocalDateTime[] reportTime;
}
