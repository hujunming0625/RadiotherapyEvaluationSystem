package cn.iocoder.yudao.module.radiotherapy.service;

import cn.iocoder.yudao.framework.common.pojo.PageResult;
import cn.iocoder.yudao.module.radiotherapy.controller.admin.vo.template.AeReportTemplatePageReqVO;
import cn.iocoder.yudao.module.radiotherapy.controller.admin.vo.template.AeReportTemplateSaveReqVO;
import cn.iocoder.yudao.module.radiotherapy.dal.dataobject.AeReportTemplateDO;

public interface AeReportTemplateService {

    PageResult<AeReportTemplateDO> getTemplatePage(AeReportTemplatePageReqVO pageReqVO);

    Long createTemplate(AeReportTemplateSaveReqVO createReqVO);

    void updateTemplate(AeReportTemplateSaveReqVO updateReqVO);

    void deleteTemplate(Long id);

    AeReportTemplateDO getTemplate(Long id);
}
