package cn.iocoder.yudao.module.radiotherapy.enums;

import lombok.AllArgsConstructor;
import lombok.Getter;

@Getter
@AllArgsConstructor
public enum MemberRoleType {

    MEMBER(1, "普通成员"),
    SECRETARY(2, "秘书"),
    CHAIRMAN(3, "负责人");

    private final Integer code;
    private final String name;
}
