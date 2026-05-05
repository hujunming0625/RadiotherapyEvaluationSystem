package cn.iocoder.yudao.module.radiotherapy.dal.dataobject;

import com.baomidou.mybatisplus.annotation.KeySequence;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.*;
import cn.iocoder.yudao.framework.tenant.core.db.TenantBaseDO;

@TableName("ae_committee_member")
@KeySequence("ae_committee_member_seq")
@Data
@EqualsAndHashCode(callSuper = true)
@ToString(callSuper = true)
public class AeCommitteeMemberDO extends TenantBaseDO {

    @TableId
    private Long id;
    private Long committeeId;
    private Long userId;
    private Integer roleType;
}
