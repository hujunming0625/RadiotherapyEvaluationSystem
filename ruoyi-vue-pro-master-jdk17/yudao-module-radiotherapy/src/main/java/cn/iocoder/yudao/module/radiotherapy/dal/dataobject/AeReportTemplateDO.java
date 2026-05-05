package cn.iocoder.yudao.module.radiotherapy.dal.dataobject;

import cn.iocoder.yudao.framework.tenant.core.db.TenantBaseDO;
import com.baomidou.mybatisplus.annotation.KeySequence;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;
import lombok.EqualsAndHashCode;

@TableName("ae_report_template")
@KeySequence("ae_report_template_seq")
@Data
@EqualsAndHashCode(callSuper = true)
public class AeReportTemplateDO extends TenantBaseDO {

    @TableId
    private Long id;

    private String name;

    private String category;

    private Integer status;

    private String description;

    private Integer sort;
}
