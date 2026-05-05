package cn.iocoder.yudao.module.radiotherapy.controller.admin;

import cn.iocoder.yudao.framework.common.pojo.CommonResult;
import cn.iocoder.yudao.module.radiotherapy.dal.dataobject.AeAdverseEventDO;
import cn.iocoder.yudao.module.radiotherapy.dal.mysql.AeAdverseEventMapper;
import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.tags.Tag;
import jakarta.annotation.Resource;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.*;
import java.util.stream.Collectors;

import static cn.iocoder.yudao.framework.common.pojo.CommonResult.success;

@Tag(name = "管理后台 - 事件统计")
@RestController
@RequestMapping("/radiotherapy/stats")
public class AeEventStatsController {

    @Resource
    private AeAdverseEventMapper eventMapper;

    @GetMapping("/overview")
    @Operation(summary = "获取监控概览")
    public CommonResult<Map<String, Object>> overview() {
        List<AeAdverseEventDO> all = eventMapper.selectList();
        Map<String, Object> result = new HashMap<>();
        long thisMonth = all.stream().filter(e -> e.getCreateTime().getMonthValue() == java.time.LocalDate.now().getMonthValue()).count();
        long pending = all.stream().filter(e -> e.getStatus() >= 10 && e.getStatus() <= 40).count();
        long completed = all.stream().filter(e -> e.getStatus() == 50).count();
        long returned = all.stream().filter(e -> e.getStatus() == 60).count();
        result.put("totalThisMonth", thisMonth);
        result.put("pendingCount", pending);
        result.put("completedCount", completed);
        result.put("returnedCount", returned);
        result.put("totalCount", (long) all.size());
        // 等级分布：I~IV 级
        long[] levelDist = new long[4];
        all.stream().filter(e -> e.getLevel() != null && e.getLevel() >= 1 && e.getLevel() <= 4)
                .forEach(e -> levelDist[e.getLevel() - 1]++);
        result.put("levelDistribution", levelDist);
        result.put("list", all.stream().sorted(Comparator.comparing(AeAdverseEventDO::getCreateTime).reversed()).limit(10).collect(Collectors.toList()));
        return success(result);
    }

    @GetMapping("/category-distribution")
    @Operation(summary = "按类别分布")
    public CommonResult<List<Map<String, Object>>> categoryDistribution() {
        List<AeAdverseEventDO> all = eventMapper.selectList();
        Map<String, Long> grouped = all.stream().collect(Collectors.groupingBy(AeAdverseEventDO::getCategory, Collectors.counting()));
        List<Map<String, Object>> result = new ArrayList<>();
        grouped.forEach((k, v) -> { Map<String, Object> item = new HashMap<>(); item.put("name", k); item.put("value", v); result.add(item); });
        return success(result);
    }

    @GetMapping("/dept-distribution")
    @Operation(summary = "按科室分布")
    public CommonResult<List<Map<String, Object>>> deptDistribution() {
        List<AeAdverseEventDO> all = eventMapper.selectList();
        Map<Long, Long> grouped = all.stream().collect(Collectors.groupingBy(AeAdverseEventDO::getDeptId, Collectors.counting()));
        List<Map<String, Object>> result = new ArrayList<>();
        grouped.forEach((k, v) -> { Map<String, Object> item = new HashMap<>(); item.put("name", "科室" + k); item.put("value", v); result.add(item); });
        return success(result);
    }

    @GetMapping("/monthly-trend")
    @Operation(summary = "月度趋势")
    public CommonResult<List<Map<String, Object>>> monthlyTrend() {
        List<AeAdverseEventDO> all = eventMapper.selectList();
        Map<String, Long> grouped = all.stream().collect(Collectors.groupingBy(
                e -> e.getCreateTime().toLocalDate().withDayOfMonth(1).toString(), Collectors.counting()));
        List<Map<String, Object>> result = new ArrayList<>();
        grouped.entrySet().stream().sorted(Map.Entry.comparingByKey()).forEach(e -> {
            Map<String, Object> item = new HashMap<>(); item.put("month", e.getKey()); item.put("count", e.getValue()); result.add(item);
        });
        return success(result);
    }
}
