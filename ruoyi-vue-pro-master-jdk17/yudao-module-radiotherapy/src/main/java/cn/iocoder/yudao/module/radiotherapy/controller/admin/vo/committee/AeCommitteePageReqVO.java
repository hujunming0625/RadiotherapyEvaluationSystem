package cn.iocoder.yudao.module.radiotherapy.controller.admin.vo.committee;

import cn.iocoder.yudao.framework.common.pojo.PageParam;
import io.swagger.v3.oas.annotations.media.Schema;
import lombok.Data;
import lombok.EqualsAndHashCode;

@Schema(description = "管理后台 - 质量委员会分页查询 Request VO")
@Data
@EqualsAndHashCode(callSuper = true)
public class AeCommitteePageReqVO extends PageParam {

    @Schema(description = "委员会名称", example = "医疗质量")
    private String name;

    @Schema(description = "状态（1启用 0禁用）", example = "1")
    private Integer status;
}
