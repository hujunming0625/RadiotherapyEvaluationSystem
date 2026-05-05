package cn.iocoder.yudao.module.radiotherapy.dal.dataobject;

import com.baomidou.mybatisplus.annotation.*;
import lombok.*;
import cn.iocoder.yudao.framework.tenant.core.db.TenantBaseDO;

import java.time.LocalDateTime;

@TableName("ae_adverse_event")
@KeySequence("ae_adverse_event_seq")
@Data
@EqualsAndHashCode(callSuper = true)
@ToString(callSuper = true)
public class AeAdverseEventDO extends TenantBaseDO {

    @TableId
    private Long id;
    private String eventNo;
    private Long templateId;
    private String category;
    private Integer level;
    private Integer status;
    private Long reporterId;
    private Integer reporterType;
    private LocalDateTime reportTime;
    private Long deptId;
    private String description;
    private String formData;
    private Long currentHandlerId;
    private Long currentDeptId;
    private Integer reportMode;
}
