package cn.iocoder.yudao.module.radiotherapy.service.impl;

import cn.iocoder.yudao.framework.common.util.object.BeanUtils;
import cn.iocoder.yudao.module.radiotherapy.controller.admin.vo.templateitem.AeReportTemplateItemSaveReqVO;
import cn.iocoder.yudao.module.radiotherapy.dal.dataobject.AeReportTemplateItemDO;
import cn.iocoder.yudao.module.radiotherapy.dal.mysql.AeReportTemplateItemMapper;
import cn.iocoder.yudao.module.radiotherapy.service.AeReportTemplateItemService;
import jakarta.annotation.Resource;
import org.springframework.stereotype.Service;
import org.springframework.validation.annotation.Validated;

import java.util.List;

import static cn.iocoder.yudao.framework.common.exception.util.ServiceExceptionUtil.exception;
import static cn.iocoder.yudao.module.radiotherapy.enums.ErrorCodeConstants.AE_REPORT_TEMPLATE_ITEM_NOT_EXISTS;

@Service
@Validated
public class AeReportTemplateItemServiceImpl implements AeReportTemplateItemService {

    @Resource
    private AeReportTemplateItemMapper itemMapper;

    @Override
    public List<AeReportTemplateItemDO> getItemsByTemplateId(Long templateId) {
        return itemMapper.selectListByTemplateId(templateId);
    }

    @Override
    public Long createItem(AeReportTemplateItemSaveReqVO reqVO) {
        AeReportTemplateItemDO item = BeanUtils.toBean(reqVO, AeReportTemplateItemDO.class);
        if (item.getSort() == null) {
            item.setSort(0);
        }
        if (item.getRequired() == null) {
            item.setRequired(0);
        }
        itemMapper.insert(item);
        return item.getId();
    }

    @Override
    public void updateItem(AeReportTemplateItemSaveReqVO reqVO) {
        validateItemExists(reqVO.getId());
        AeReportTemplateItemDO updateObj = BeanUtils.toBean(reqVO, AeReportTemplateItemDO.class);
        itemMapper.updateById(updateObj);
    }

    @Override
    public void deleteItem(Long id) {
        validateItemExists(id);
        itemMapper.deleteById(id);
    }

    @Override
    public AeReportTemplateItemDO getItem(Long id) {
        return validateItemExists(id);
    }

    @Override
    public void updateSort(List<Long> itemIds) {
        for (int i = 0; i < itemIds.size(); i++) {
            AeReportTemplateItemDO updateObj = new AeReportTemplateItemDO();
            updateObj.setId(itemIds.get(i));
            updateObj.setSort(i);
            itemMapper.updateById(updateObj);
        }
    }

    private AeReportTemplateItemDO validateItemExists(Long id) {
        AeReportTemplateItemDO item = itemMapper.selectById(id);
        if (item == null) {
            throw exception(AE_REPORT_TEMPLATE_ITEM_NOT_EXISTS);
        }
        return item;
    }
}
