package cn.iocoder.yudao.module.radiotherapy.enums;

import lombok.AllArgsConstructor;
import lombok.Getter;

@Getter
@AllArgsConstructor
public enum FieldType {

    TEXT("TEXT", "单行文本"),
    TEXTAREA("TEXTAREA", "多行文本"),
    DATE("DATE", "日期选择"),
    DATETIME("DATETIME", "日期时间"),
    RADIO("RADIO", "单选"),
    CHECKBOX("CHECKBOX", "多选"),
    SELECT("SELECT", "下拉选择"),
    NUMBER("NUMBER", "数字"),
    FILE("FILE", "文件上传"),
    RICH_TEXT("RICH_TEXT", "富文本");

    private final String code;
    private final String name;
}
