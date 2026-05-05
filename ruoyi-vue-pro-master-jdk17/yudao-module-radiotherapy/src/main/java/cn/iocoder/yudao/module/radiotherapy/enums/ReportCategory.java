package cn.iocoder.yudao.module.radiotherapy.enums;

import lombok.AllArgsConstructor;
import lombok.Getter;

@Getter
@AllArgsConstructor
public enum ReportCategory {

    MEDICAL("MEDICAL", "医疗"),
    NURSING("NURSING", "护理"),
    INFECTION("INFECTION", "院感"),
    INFO("INFO", "信息"),
    DEVICE("DEVICE", "器械"),
    LOGISTICS("LOGISTICS", "后勤");

    private final String code;
    private final String name;
}
