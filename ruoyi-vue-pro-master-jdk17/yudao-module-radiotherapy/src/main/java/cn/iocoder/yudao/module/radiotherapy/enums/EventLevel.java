package cn.iocoder.yudao.module.radiotherapy.enums;

import lombok.AllArgsConstructor;
import lombok.Getter;

@Getter
@AllArgsConstructor
public enum EventLevel {

    LEVEL_1(1, "I级", "警告事件"),
    LEVEL_2(2, "II级", "不良后果事件"),
    LEVEL_3(3, "III级", "未造成后果事件"),
    LEVEL_4(4, "IV级", "隐患事件");

    private final Integer code;
    private final String label;
    private final String description;
}
