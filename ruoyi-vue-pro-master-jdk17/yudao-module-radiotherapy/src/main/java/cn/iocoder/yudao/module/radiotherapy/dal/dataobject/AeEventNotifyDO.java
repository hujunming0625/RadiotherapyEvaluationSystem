package cn.iocoder.yudao.module.radiotherapy.dal.dataobject;

import com.baomidou.mybatisplus.annotation.*;
import lombok.*;
import cn.iocoder.yudao.framework.tenant.core.db.TenantBaseDO;

@TableName("ae_event_notify")
@KeySequence("ae_event_notify_seq")
@Data
@EqualsAndHashCode(callSuper = true)
@ToString(callSuper = true)
public class AeEventNotifyDO extends TenantBaseDO {

    @TableId
    private Long id;
    private Long eventId;
    private Long deptId;
    private Long notifyUserId;
    private String content;
    private Integer status;
}
