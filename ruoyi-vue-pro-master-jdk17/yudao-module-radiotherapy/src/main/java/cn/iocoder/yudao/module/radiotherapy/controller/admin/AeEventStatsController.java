package cn.iocoder.yudao.module.radiotherapy.controller.admin;

import cn.iocoder.yudao.framework.common.pojo.CommonResult;
import cn.iocoder.yudao.module.radiotherapy.dal.dataobject.AeAdverseEventDO;
import cn.iocoder.yudao.module.radiotherapy.dal.dataobject.AeEventFlowDO;
import cn.iocoder.yudao.module.radiotherapy.dal.mysql.AeAdverseEventMapper;
import cn.iocoder.yudao.module.radiotherapy.dal.mysql.AeEventFlowMapper;
import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.tags.Tag;
import jakarta.annotation.Resource;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.time.Duration;
import java.time.LocalDateTime;
import java.util.*;
import java.util.stream.Collectors;

import static cn.iocoder.yudao.framework.common.pojo.CommonResult.success;

@Tag(name = "管理后台 - 事件统计")
@RestController
@RequestMapping("/radiotherapy/stats")
public class AeEventStatsController {

    @Resource
    private AeAdverseEventMapper eventMapper;

    @Resource
    private AeEventFlowMapper flowMapper;

    @GetMapping("/overview")
    @Operation(summary = "获取监控概览")
    public CommonResult<Map<String, Object>> overview() {
        List<AeAdverseEventDO> all = eventMapper.selectList();
        Map<String, Object> result = new HashMap<>();
        LocalDateTime now = LocalDateTime.now();
        long thisMonth = all.stream().filter(e -> e.getCreateTime().getMonthValue() == now.getMonthValue()
                && e.getCreateTime().getYear() == now.getYear()).count();
        long pending = all.stream().filter(e -> e.getStatus() >= 10 && e.getStatus() <= 40).count();
        long completed = all.stream().filter(e -> e.getStatus() == 50).count();
        long returned = all.stream().filter(e -> e.getStatus() == 60).count();
        result.put("totalThisMonth", thisMonth);
        result.put("pendingCount", pending);
        result.put("completedCount", completed);
        result.put("returnedCount", returned);
        result.put("totalCount", (long) all.size());
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

    @GetMapping("/processing-time")
    @Operation(summary = "平均处理时长分析")
    public CommonResult<Map<String, Object>> processingTime() {
        List<AeEventFlowDO> flows = flowMapper.selectList();
        List<AeAdverseEventDO> events = eventMapper.selectList();
        Map<Long, List<AeEventFlowDO>> byEvent = flows.stream().collect(Collectors.groupingBy(AeEventFlowDO::getEventId));

        long totalHours = 0;
        int count = 0;
        Map<String, List<Long>> byCategory = new HashMap<>();

        for (AeAdverseEventDO event : events) {
            if (event.getStatus() == 50) {
                List<AeEventFlowDO> eventFlows = byEvent.getOrDefault(event.getId(), Collections.emptyList());
                Optional<AeEventFlowDO> submit = eventFlows.stream().filter(f -> "SUBMIT".equals(f.getAction())).findFirst();
                Optional<AeEventFlowDO> lastProcess = eventFlows.stream().filter(f -> "PROCESS".equals(f.getAction())).reduce((a, b) -> b);
                if (submit.isPresent() && lastProcess.isPresent()) {
                    long hours = Duration.between(submit.get().getCreateTime(), lastProcess.get().getCreateTime()).toHours();
                    totalHours += hours;
                    count++;
                    byCategory.computeIfAbsent(event.getCategory(), k -> new ArrayList<>()).add(hours);
                }
            }
        }

        Map<String, Object> result = new HashMap<>();
        result.put("avgHours", count > 0 ? Math.round((double) totalHours / count) : 0);
        result.put("totalCompleted", count);
        List<Map<String, Object>> categoryAvg = new ArrayList<>();
        byCategory.forEach((cat, hours) -> {
            Map<String, Object> item = new HashMap<>();
            item.put("category", cat);
            item.put("avgHours", Math.round(hours.stream().mapToLong(Long::longValue).average().orElse(0)));
            item.put("count", hours.size());
            categoryAvg.add(item);
        });
        result.put("byCategory", categoryAvg);
        return success(result);
    }

    @GetMapping("/cause-analysis")
    @Operation(summary = "原因分析")
    public CommonResult<List<Map<String, Object>>> causeAnalysis() {
        List<AeEventFlowDO> flows = flowMapper.selectList();
        Map<String, Long> grouped = flows.stream()
                .filter(f -> f.getCause() != null && !f.getCause().isEmpty())
                .collect(Collectors.groupingBy(AeEventFlowDO::getCause, Collectors.counting()));
        List<Map<String, Object>> result = new ArrayList<>();
        grouped.forEach((k, v) -> { Map<String, Object> item = new HashMap<>(); item.put("name", k); item.put("value", v); result.add(item); });
        return success(result);
    }

    @GetMapping("/level-category-cross")
    @Operation(summary = "等级-类别交叉分析")
    public CommonResult<List<Map<String, Object>>> levelCategoryCross() {
        List<AeAdverseEventDO> all = eventMapper.selectList();
        Map<String, Map<Integer, Long>> grouped = all.stream().collect(
                Collectors.groupingBy(AeAdverseEventDO::getCategory,
                        Collectors.groupingBy(AeAdverseEventDO::getLevel, Collectors.counting())));
        List<Map<String, Object>> result = new ArrayList<>();
        grouped.forEach((cat, levelMap) -> {
            Map<String, Object> item = new HashMap<>();
            item.put("category", cat);
            for (int i = 1; i <= 4; i++) {
                item.put(String.valueOf(i), levelMap.getOrDefault(i, 0L));
            }
            result.add(item);
        });
        return success(result);
    }
}
