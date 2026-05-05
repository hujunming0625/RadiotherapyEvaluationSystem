package cn.iocoder.yudao.module.radiotherapy.enums;

import lombok.AllArgsConstructor;
import lombok.Getter;

@Getter
@AllArgsConstructor
public enum EventStatus {

    DRAFT(0, "草稿"),
    DEPT_PENDING(10, "待科室处理"),
    FUNC_PENDING(20, "待职能部门处理"),
    LEADER_PENDING(30, "待院领导处理"),
    COMMITTEE_PENDING(40, "待质量委员会处理"),
    COMPLETED(50, "处理完毕"),
    RETURNED(60, "已退回"),
    VOIDED(70, "已作废"),
    NOT_TRUE(80, "不属实");

    private final Integer code;
    private final String name;
}
