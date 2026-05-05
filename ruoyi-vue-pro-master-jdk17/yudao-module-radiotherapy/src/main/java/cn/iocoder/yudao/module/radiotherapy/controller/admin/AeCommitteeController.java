package cn.iocoder.yudao.module.radiotherapy.controller.admin;

import cn.iocoder.yudao.framework.common.pojo.CommonResult;
import cn.iocoder.yudao.framework.common.pojo.PageResult;
import cn.iocoder.yudao.framework.common.util.object.BeanUtils;
import cn.iocoder.yudao.module.radiotherapy.controller.admin.vo.committee.*;
import cn.iocoder.yudao.module.radiotherapy.dal.dataobject.AeCommitteeDO;
import cn.iocoder.yudao.module.radiotherapy.dal.dataobject.AeCommitteeMemberDO;
import cn.iocoder.yudao.module.radiotherapy.enums.MemberRoleType;
import cn.iocoder.yudao.module.radiotherapy.service.AeCommitteeService;
import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.Parameter;
import io.swagger.v3.oas.annotations.tags.Tag;
import jakarta.annotation.Resource;
import jakarta.validation.Valid;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

import static cn.iocoder.yudao.framework.common.pojo.CommonResult.success;

@Tag(name = "管理后台 - 质量委员会")
@RestController
@RequestMapping("/radiotherapy/committee")
@Validated
public class AeCommitteeController {

    @Resource
    private AeCommitteeService committeeService;

    private static final Map<Integer, String> ROLE_TYPE_NAMES = Map.of(
            1, "普通成员", 2, "秘书", 3, "负责人");

    @GetMapping("/page")
    @Operation(summary = "获得委员会分页")
    public CommonResult<PageResult<AeCommitteeRespVO>> getCommitteePage(@Valid AeCommitteePageReqVO pageReqVO) {
        PageResult<AeCommitteeDO> pageResult = committeeService.getCommitteePage(pageReqVO);
        PageResult<AeCommitteeRespVO> result = BeanUtils.toBean(pageResult, AeCommitteeRespVO.class);
        // 填充成员数量
        result.getList().forEach(vo -> {
            List<AeCommitteeMemberDO> members = committeeService.getMembersByCommitteeId(vo.getId());
            vo.setMemberCount((long) members.size());
        });
        return success(result);
    }

    @GetMapping("/list")
    @Operation(summary = "获得所有委员会列表")
    public CommonResult<List<AeCommitteeRespVO>> getCommitteeList() {
        List<AeCommitteeDO> list = committeeService.getCommitteeList();
        return success(BeanUtils.toBean(list, AeCommitteeRespVO.class));
    }

    @PostMapping("/create")
    @Operation(summary = "创建委员会")
    public CommonResult<Long> createCommittee(@Valid @RequestBody AeCommitteeSaveReqVO reqVO) {
        return success(committeeService.createCommittee(reqVO));
    }

    @PutMapping("/update")
    @Operation(summary = "更新委员会")
    public CommonResult<Boolean> updateCommittee(@Valid @RequestBody AeCommitteeSaveReqVO reqVO) {
        committeeService.updateCommittee(reqVO);
        return success(true);
    }

    @DeleteMapping("/delete")
    @Operation(summary = "删除委员会")
    @Parameter(name = "id", description = "编号", required = true)
    public CommonResult<Boolean> deleteCommittee(@RequestParam("id") Long id) {
        committeeService.deleteCommittee(id);
        return success(true);
    }

    @GetMapping("/get")
    @Operation(summary = "获得委员会")
    @Parameter(name = "id", description = "编号", required = true)
    public CommonResult<AeCommitteeRespVO> getCommittee(@RequestParam("id") Long id) {
        AeCommitteeDO committee = committeeService.getCommittee(id);
        return success(BeanUtils.toBean(committee, AeCommitteeRespVO.class));
    }

    @GetMapping("/member/list")
    @Operation(summary = "获得委员会成员列表")
    @Parameter(name = "committeeId", description = "委员会编号", required = true)
    public CommonResult<List<AeCommitteeMemberRespVO>> getMemberList(@RequestParam("committeeId") Long committeeId) {
        List<AeCommitteeMemberDO> members = committeeService.getMembersByCommitteeId(committeeId);
        return success(members.stream().map(m -> {
            AeCommitteeMemberRespVO vo = BeanUtils.toBean(m, AeCommitteeMemberRespVO.class);
            vo.setRoleTypeName(ROLE_TYPE_NAMES.getOrDefault(m.getRoleType(), "未知"));
            return vo;
        }).collect(Collectors.toList()));
    }

    @PostMapping("/member/add")
    @Operation(summary = "添加委员会成员")
    public CommonResult<Long> addMember(@Valid @RequestBody AeCommitteeMemberSaveReqVO reqVO) {
        return success(committeeService.addMember(reqVO));
    }

    @DeleteMapping("/member/remove")
    @Operation(summary = "移除委员会成员")
    @Parameter(name = "id", description = "成员编号", required = true)
    public CommonResult<Boolean> removeMember(@RequestParam("id") Long id) {
        committeeService.removeMember(id);
        return success(true);
    }

    @PutMapping("/member/update-role")
    @Operation(summary = "更新成员角色")
    public CommonResult<Boolean> updateMemberRole(@RequestParam("id") Long id,
                                                   @RequestParam("roleType") Integer roleType) {
        committeeService.updateMemberRole(id, roleType);
        return success(true);
    }
}
