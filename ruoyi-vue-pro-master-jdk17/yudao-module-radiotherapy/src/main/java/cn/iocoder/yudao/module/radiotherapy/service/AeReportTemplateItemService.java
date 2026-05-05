package cn.iocoder.yudao.module.radiotherapy.service;

import cn.iocoder.yudao.module.radiotherapy.controller.admin.vo.templateitem.AeReportTemplateItemSaveReqVO;
import cn.iocoder.yudao.module.radiotherapy.dal.dataobject.AeReportTemplateItemDO;

import java.util.List;

public interface AeReportTemplateItemService {

    List<AeReportTemplateItemDO> getItemsByTemplateId(Long templateId);
    Long createItem(AeReportTemplateItemSaveReqVO reqVO);
    void updateItem(AeReportTemplateItemSaveReqVO reqVO);
    void deleteItem(Long id);
    AeReportTemplateItemDO getItem(Long id);
    void updateSort(List<Long> itemIds);
}
