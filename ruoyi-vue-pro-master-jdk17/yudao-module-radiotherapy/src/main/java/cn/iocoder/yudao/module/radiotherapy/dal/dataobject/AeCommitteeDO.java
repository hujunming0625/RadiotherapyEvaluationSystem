package cn.iocoder.yudao.module.radiotherapy.dal.dataobject;

import com.baomidou.mybatisplus.annotation.KeySequence;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.*;
import cn.iocoder.yudao.framework.tenant.core.db.TenantBaseDO;

@TableName("ae_committee")
@KeySequence("ae_committee_seq")
@Data
@EqualsAndHashCode(callSuper = true)
@ToString(callSuper = true)
public class AeCommitteeDO extends TenantBaseDO {

    @TableId
    private Long id;
    private String name;
    private Integer status;
    private String description;
}
