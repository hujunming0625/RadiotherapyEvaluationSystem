package cn.iocoder.yudao.module.radiotherapy.controller.admin;

import cn.iocoder.yudao.framework.common.pojo.CommonResult;
import cn.iocoder.yudao.framework.mybatis.core.query.LambdaQueryWrapperX;
import cn.iocoder.yudao.framework.security.core.util.SecurityFrameworkUtils;
import cn.iocoder.yudao.module.radiotherapy.dal.dataobject.AeEventAttachmentDO;
import cn.iocoder.yudao.module.radiotherapy.dal.mysql.AeEventAttachmentMapper;
import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.Parameter;
import io.swagger.v3.oas.annotations.tags.Tag;
import jakarta.annotation.Resource;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.UUID;

import static cn.iocoder.yudao.framework.common.pojo.CommonResult.success;

@Tag(name = "管理后台 - 事件附件")
@RestController
@RequestMapping("/radiotherapy/attachment")
public class AeEventAttachmentController {

    private static final String UPLOAD_DIR = "uploads/radiotherapy/";

    @Resource
    private AeEventAttachmentMapper attachmentMapper;

    @PostMapping("/upload")
    @Operation(summary = "上传附件")
    public CommonResult<Long> upload(@RequestParam("file") MultipartFile file,
                                     @RequestParam("eventId") Long eventId) throws IOException {
        String originalName = file.getOriginalFilename();
        String ext = originalName != null && originalName.contains(".") ?
                originalName.substring(originalName.lastIndexOf('.')) : "";
        String fileName = UUID.randomUUID() + ext;
        String filePath = UPLOAD_DIR + fileName;

        File dir = new File(UPLOAD_DIR);
        if (!dir.exists()) dir.mkdirs();
        file.transferTo(new File(filePath));

        AeEventAttachmentDO attachment = new AeEventAttachmentDO();
        attachment.setEventId(eventId);
        attachment.setFileName(originalName);
        attachment.setFilePath(filePath);
        attachment.setFileSize(file.getSize());
        attachment.setFileType(file.getContentType());
        attachment.setUploaderId(SecurityFrameworkUtils.getLoginUserId());
        attachmentMapper.insert(attachment);
        return success(attachment.getId());
    }

    @GetMapping("/list")
    @Operation(summary = "获取事件附件列表")
    public CommonResult<List<AeEventAttachmentDO>> getList(@RequestParam("eventId") Long eventId) {
        List<AeEventAttachmentDO> list = attachmentMapper.selectList(
                new LambdaQueryWrapperX<AeEventAttachmentDO>().eq(AeEventAttachmentDO::getEventId, eventId));
        return success(list);
    }

    @DeleteMapping("/delete")
    @Operation(summary = "删除附件")
    @Parameter(name = "id", required = true)
    public CommonResult<Boolean> delete(@RequestParam("id") Long id) {
        AeEventAttachmentDO attachment = attachmentMapper.selectById(id);
        if (attachment != null) {
            new File(attachment.getFilePath()).delete();
            attachmentMapper.deleteById(id);
        }
        return success(true);
    }
}
