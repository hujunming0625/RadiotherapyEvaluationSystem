package cn.iocoder.yudao.module.radiotherapy.controller.admin.vo.committee;

import io.swagger.v3.oas.annotations.media.Schema;
import lombok.Data;

import java.time.LocalDateTime;

@Schema(description = "管理后台 - 委员会成员 Response VO")
@Data
public class AeCommitteeMemberRespVO {

    @Schema(description = "成员编号", example = "1")
    private Long id;

    @Schema(description = "委员会编号", example = "1")
    private Long committeeId;

    @Schema(description = "用户编号", example = "1")
    private Long userId;

    @Schema(description = "用户名称", example = "张三")
    private String userName;

    @Schema(description = "角色类型", example = "1")
    private Integer roleType;

    @Schema(description = "角色类型名称", example = "普通成员")
    private String roleTypeName;

    @Schema(description = "创建时间")
    private LocalDateTime createTime;
}
