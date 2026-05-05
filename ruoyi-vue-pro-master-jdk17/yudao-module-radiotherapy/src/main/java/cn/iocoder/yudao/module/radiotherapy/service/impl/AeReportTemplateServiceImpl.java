package cn.iocoder.yudao.module.radiotherapy.service.impl;

import cn.iocoder.yudao.framework.common.pojo.PageResult;
import cn.iocoder.yudao.framework.common.util.object.BeanUtils;
import cn.iocoder.yudao.module.radiotherapy.controller.admin.vo.template.AeReportTemplatePageReqVO;
import cn.iocoder.yudao.module.radiotherapy.controller.admin.vo.template.AeReportTemplateSaveReqVO;
import cn.iocoder.yudao.module.radiotherapy.dal.dataobject.AeReportTemplateDO;
import cn.iocoder.yudao.module.radiotherapy.dal.mysql.AeReportTemplateMapper;
import cn.iocoder.yudao.module.radiotherapy.service.AeReportTemplateService;
import jakarta.annotation.Resource;
import org.springframework.stereotype.Service;
import org.springframework.validation.annotation.Validated;

import static cn.iocoder.yudao.framework.common.exception.util.ServiceExceptionUtil.exception;
import static cn.iocoder.yudao.module.radiotherapy.enums.ErrorCodeConstants.AE_REPORT_TEMPLATE_NOT_EXISTS;

@Service
@Validated
public class AeReportTemplateServiceImpl implements AeReportTemplateService {

    @Resource
    private AeReportTemplateMapper aeReportTemplateMapper;

    @Override
    public PageResult<AeReportTemplateDO> getTemplatePage(AeReportTemplatePageReqVO pageReqVO) {
        return aeReportTemplateMapper.selectPage(pageReqVO);
    }

    @Override
    public Long createTemplate(AeReportTemplateSaveReqVO createReqVO) {
        AeReportTemplateDO template = BeanUtils.toBean(createReqVO, AeReportTemplateDO.class);
        aeReportTemplateMapper.insert(template);
        return template.getId();
    }

    @Override
    public void updateTemplate(AeReportTemplateSaveReqVO updateReqVO) {
        validateTemplateExists(updateReqVO.getId());
        AeReportTemplateDO updateObj = BeanUtils.toBean(updateReqVO, AeReportTemplateDO.class);
        aeReportTemplateMapper.updateById(updateObj);
    }

    @Override
    public void deleteTemplate(Long id) {
        validateTemplateExists(id);
        aeReportTemplateMapper.deleteById(id);
    }

    @Override
    public AeReportTemplateDO getTemplate(Long id) {
        return validateTemplateExists(id);
    }

    private AeReportTemplateDO validateTemplateExists(Long id) {
        AeReportTemplateDO template = aeReportTemplateMapper.selectById(id);
        if (template == null) {
            throw exception(AE_REPORT_TEMPLATE_NOT_EXISTS);
        }
        return template;
    }
}
