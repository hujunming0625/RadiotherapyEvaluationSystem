package cn.iocoder.yudao.module.radiotherapy.controller.admin.vo.committee;

import io.swagger.v3.oas.annotations.media.Schema;
import jakarta.validation.constraints.NotNull;
import lombok.Data;

@Schema(description = "管理后台 - 委员会成员新增 Request VO")
@Data
public class AeCommitteeMemberSaveReqVO {

    @Schema(description = "成员编号", example = "1")
    private Long id;

    @Schema(description = "委员会编号", requiredMode = Schema.RequiredMode.REQUIRED, example = "1")
    @NotNull(message = "委员会编号不能为空")
    private Long committeeId;

    @Schema(description = "用户编号", requiredMode = Schema.RequiredMode.REQUIRED, example = "1")
    @NotNull(message = "用户编号不能为空")
    private Long userId;

    @Schema(description = "角色类型（1普通成员 2秘书 3负责人）", requiredMode = Schema.RequiredMode.REQUIRED, example = "1")
    @NotNull(message = "角色类型不能为空")
    private Integer roleType;
}
