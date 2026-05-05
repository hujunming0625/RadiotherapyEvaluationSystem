package cn.iocoder.yudao.module.radiotherapy.enums;

import cn.iocoder.yudao.framework.common.exception.ErrorCode;

/**
 * 放疗模块错误码常量，枚举从 1-002-000-001 开始
 */
public interface ErrorCodeConstants {

    ErrorCode AE_REPORT_TEMPLATE_NOT_EXISTS = new ErrorCode(1_002_000_001, "报告单模板不存在");
    ErrorCode AE_REPORT_TEMPLATE_ITEM_NOT_EXISTS = new ErrorCode(1_002_000_002, "报告单项不存在");
    ErrorCode AE_COMMITTEE_NOT_EXISTS = new ErrorCode(1_002_000_003, "质量委员会不存在");
    ErrorCode AE_COMMITTEE_MEMBER_EXISTS = new ErrorCode(1_002_000_004, "委员会成员已存在");
    ErrorCode AE_COMMITTEE_ROLE_LIMIT = new ErrorCode(1_002_000_005, "委员会负责人/秘书数量超限");
    ErrorCode AE_ADVERSE_EVENT_NOT_EXISTS = new ErrorCode(1_002_000_006, "不良事件不存在");
    ErrorCode AE_ADVERSE_EVENT_STATUS_ERROR = new ErrorCode(1_002_000_007, "事件状态不允许此操作");

}
