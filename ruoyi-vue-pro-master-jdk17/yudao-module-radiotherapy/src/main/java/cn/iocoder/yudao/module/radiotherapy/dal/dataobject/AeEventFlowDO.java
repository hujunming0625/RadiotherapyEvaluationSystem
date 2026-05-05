package cn.iocoder.yudao.module.radiotherapy.dal.dataobject;

import com.baomidou.mybatisplus.annotation.*;
import lombok.*;
import cn.iocoder.yudao.framework.tenant.core.db.TenantBaseDO;

import java.time.LocalDateTime;

@TableName("ae_event_flow")
@KeySequence("ae_event_flow_seq")
@Data
@EqualsAndHashCode(callSuper = true)
@ToString(callSuper = true)
public class AeEventFlowDO extends TenantBaseDO {

    @TableId
    private Long id;
    private Long eventId;
    private Integer fromStatus;
    private Integer toStatus;
    private Long handlerId;
    private String action;
    private String opinion;
    private String cause;
    private Integer damageLevel;
    private Integer needTrack;
    private Long transferDeptId;
    private LocalDateTime handleTime;
}
