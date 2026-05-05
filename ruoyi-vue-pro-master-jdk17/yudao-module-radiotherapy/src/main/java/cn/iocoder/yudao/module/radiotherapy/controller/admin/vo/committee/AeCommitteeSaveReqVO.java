package cn.iocoder.yudao.module.radiotherapy.controller.admin.vo.committee;

import io.swagger.v3.oas.annotations.media.Schema;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotNull;
import lombok.Data;

@Schema(description = "管理后台 - 质量委员会新增/修改 Request VO")
@Data
public class AeCommitteeSaveReqVO {

    @Schema(description = "委员会编号", example = "1")
    private Long id;

    @Schema(description = "委员会名称", requiredMode = Schema.RequiredMode.REQUIRED, example = "医疗质量管理委员会")
    @NotBlank(message = "委员会名称不能为空")
    private String name;

    @Schema(description = "状态（1启用 0禁用）", requiredMode = Schema.RequiredMode.REQUIRED, example = "1")
    @NotNull(message = "状态不能为空")
    private Integer status;

    @Schema(description = "说明", example = "负责全院医疗质量管理工作")
    private String description;
}
