package cn.iocoder.yudao.module.radiotherapy.controller.admin.vo.auth;

import io.swagger.v3.oas.annotations.media.Schema;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.Pattern;
import jakarta.validation.constraints.Size;
import lombok.Data;

@Schema(description = "管理后台 - 放疗系统注册 Request VO")
@Data
public class AuthRegisterReqVO {

    @Schema(description = "用户账号", requiredMode = Schema.RequiredMode.REQUIRED, example = "zhangsan")
    @NotBlank(message = "用户账号不能为空")
    @Pattern(regexp = "^[a-zA-Z0-9]{4,30}$", message = "用户账号由数字、字母组成")
    @Size(min = 4, max = 30, message = "用户账号长度为 4-30 个字符")
    private String username;

    @Schema(description = "密码", requiredMode = Schema.RequiredMode.REQUIRED, example = "123456")
    @NotBlank(message = "密码不能为空")
    @Size(min = 6, max = 16, message = "密码长度为 6-16 位")
    private String password;

    @Schema(description = "确认密码", requiredMode = Schema.RequiredMode.REQUIRED, example = "123456")
    @NotBlank(message = "确认密码不能为空")
    private String confirmPassword;

    @Schema(description = "手机号码", example = "13800138000")
    @Pattern(regexp = "^(1[3-9]\\d{9})?$", message = "手机号格式不正确")
    private String phone;

    @Schema(description = "角色类型", requiredMode = Schema.RequiredMode.REQUIRED, example = "REPORTER")
    @NotBlank(message = "角色类型不能为空")
    @Pattern(regexp = "^(REPORTER|DEPT_LEADER|FUNC_LEADER)$", message = "角色类型只能是 REPORTER、DEPT_LEADER 或 FUNC_LEADER")
    private String roleType;
}
