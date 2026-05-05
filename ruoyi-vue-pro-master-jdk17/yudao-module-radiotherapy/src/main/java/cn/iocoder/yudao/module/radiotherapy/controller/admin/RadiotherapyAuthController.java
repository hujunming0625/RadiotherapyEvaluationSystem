package cn.iocoder.yudao.module.radiotherapy.controller.admin;

import cn.iocoder.yudao.framework.common.enums.CommonStatusEnum;
import cn.iocoder.yudao.framework.common.pojo.CommonResult;
import cn.iocoder.yudao.framework.tenant.core.aop.TenantIgnore;
import cn.iocoder.yudao.framework.tenant.core.util.TenantUtils;
import cn.iocoder.yudao.module.radiotherapy.controller.admin.vo.auth.AuthRegisterReqVO;
import cn.iocoder.yudao.module.system.controller.admin.user.vo.user.UserSaveReqVO;
import cn.iocoder.yudao.module.system.dal.dataobject.user.AdminUserDO;
import cn.iocoder.yudao.module.system.service.permission.PermissionService;
import cn.iocoder.yudao.module.system.service.user.AdminUserService;
import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.tags.Tag;
import jakarta.annotation.Resource;
import jakarta.annotation.security.PermitAll;
import jakarta.validation.Valid;
import lombok.extern.slf4j.Slf4j;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;

import static cn.iocoder.yudao.framework.common.pojo.CommonResult.success;

@Tag(name = "管理后台 - 放疗系统认证")
@RestController
@RequestMapping("/radiotherapy/auth")
@Validated
@Slf4j
@TenantIgnore
public class RadiotherapyAuthController {

    @Resource
    private AdminUserService adminUserService;

    @Resource
    private PermissionService permissionService;

    private static final Map<String, Long> ROLE_TYPE_MAP = new HashMap<>();

    static {
        ROLE_TYPE_MAP.put("REPORTER", 200L);
        ROLE_TYPE_MAP.put("DEPT_LEADER", 201L);
        ROLE_TYPE_MAP.put("FUNC_LEADER", 202L);
    }

    @PostMapping("/register")
    @PermitAll
    @Operation(summary = "注册用户")
    public CommonResult<Long> register(@RequestBody @Valid AuthRegisterReqVO reqVO) {
        // 1. 校验确认密码
        if (!reqVO.getPassword().equals(reqVO.getConfirmPassword())) {
            throw new IllegalArgumentException("两次输入的密码不一致");
        }

        // 2. 校验用户名是否已存在
        AdminUserDO existUser = adminUserService.getUserByUsername(reqVO.getUsername());
        if (existUser != null) {
            throw new IllegalArgumentException("用户名已存在");
        }

        // 3. 创建用户并分配角色（使用默认租户 1）
        Long userId = TenantUtils.execute(1L, () -> {
            UserSaveReqVO createReqVO = new UserSaveReqVO();
            createReqVO.setUsername(reqVO.getUsername());
            createReqVO.setNickname(reqVO.getUsername());
            createReqVO.setPassword(reqVO.getPassword());
            if (reqVO.getPhone() != null && !reqVO.getPhone().isEmpty()) {
                createReqVO.setMobile(reqVO.getPhone());
            }
            Long uid = adminUserService.createUser(createReqVO);

            // 4. 分配角色
            Long roleId = ROLE_TYPE_MAP.getOrDefault(reqVO.getRoleType(), 200L);
            permissionService.assignUserRole(uid, Collections.singleton(roleId));
            return uid;
        });

        return success(userId);
    }
}
