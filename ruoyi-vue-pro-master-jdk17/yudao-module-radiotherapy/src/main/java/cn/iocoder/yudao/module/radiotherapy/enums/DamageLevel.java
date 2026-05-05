package cn.iocoder.yudao.module.radiotherapy.enums;

import lombok.AllArgsConstructor;
import lombok.Getter;

@Getter
@AllArgsConstructor
public enum DamageLevel {

    NONE(0, "无伤害"),
    MILD(1, "轻度伤害"),
    MODERATE(2, "中度伤害"),
    SEVERE(3, "重度伤害"),
    DEATH(4, "死亡");

    private final Integer code;
    private final String name;
}
