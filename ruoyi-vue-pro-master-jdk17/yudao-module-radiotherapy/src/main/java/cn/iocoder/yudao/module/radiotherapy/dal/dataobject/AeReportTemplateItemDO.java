package cn.iocoder.yudao.module.radiotherapy.dal.dataobject;

import com.baomidou.mybatisplus.annotation.KeySequence;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.*;
import cn.iocoder.yudao.framework.tenant.core.db.TenantBaseDO;

@TableName("ae_report_template_item")
@KeySequence("ae_report_template_item_seq")
@Data
@EqualsAndHashCode(callSuper = true)
@ToString(callSuper = true)
public class AeReportTemplateItemDO extends TenantBaseDO {

    @TableId
    private Long id;
    private Long templateId;
    private String label;
    private String fieldType;
    private Integer required;
    private String options;
    private String dictType;
    private String placeholder;
    private String defaultValue;
    private Integer sort;
}
