package cn.iocoder.yudao.module.radiotherapy.controller.admin.vo.committee;

import io.swagger.v3.oas.annotations.media.Schema;
import lombok.Data;

import java.time.LocalDateTime;

@Schema(description = "管理后台 - 质量委员会 Response VO")
@Data
public class AeCommitteeRespVO {

    @Schema(description = "委员会编号", example = "1")
    private Long id;

    @Schema(description = "委员会名称", example = "医疗质量管理委员会")
    private String name;

    @Schema(description = "状态（1启用 0禁用）", example = "1")
    private Integer status;

    @Schema(description = "说明", example = "负责全院医疗质量管理工作")
    private String description;

    @Schema(description = "成员数量", example = "5")
    private Long memberCount;

    @Schema(description = "创建时间")
    private LocalDateTime createTime;
}
