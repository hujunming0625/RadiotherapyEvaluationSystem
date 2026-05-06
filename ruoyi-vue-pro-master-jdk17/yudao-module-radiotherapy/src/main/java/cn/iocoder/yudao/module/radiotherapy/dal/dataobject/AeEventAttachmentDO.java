package cn.iocoder.yudao.module.radiotherapy.dal.dataobject;

import com.baomidou.mybatisplus.annotation.*;
import lombok.*;
import cn.iocoder.yudao.framework.tenant.core.db.TenantBaseDO;

@TableName("ae_event_attachment")
@KeySequence("ae_event_attachment_seq")
@Data
@EqualsAndHashCode(callSuper = true)
@ToString(callSuper = true)
public class AeEventAttachmentDO extends TenantBaseDO {

    @TableId
    private Long id;
    private Long eventId;
    private String fileName;
    private String filePath;
    private Long fileSize;
    private String fileType;
    private Long uploaderId;
}
