package cn.iocoder.yudao.module.radiotherapy.dal.dataobject;

import com.baomidou.mybatisplus.annotation.*;
import lombok.*;
import cn.iocoder.yudao.framework.tenant.core.db.TenantBaseDO;

import java.time.LocalDateTime;

@TableName("ae_event_track")
@KeySequence("ae_event_track_seq")
@Data
@EqualsAndHashCode(callSuper = true)
@ToString(callSuper = true)
public class AeEventTrackDO extends TenantBaseDO {

    @TableId
    private Long id;
    private Long eventId;
    private LocalDateTime trackTime;
    private LocalDateTime remindTime;
    private String content;
    private Long trackerId;
    private Integer status;
}
