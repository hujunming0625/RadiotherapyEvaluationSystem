-- ============================================================
-- 字典数据清理脚本
-- 软删除所有框架自带字典，只保留放疗不良事件相关的 5 类字典
-- ============================================================

START TRANSACTION;

-- ============================================================
-- PHASE 1: 软删除所有现有字典数据
-- ============================================================

UPDATE system_dict_data SET deleted = 1 WHERE deleted = 0;

-- ============================================================
-- PHASE 2: 软删除所有现有字典类型
-- ============================================================

UPDATE system_dict_type SET deleted = 1, deleted_time = NOW() WHERE deleted = 0;

-- ============================================================
-- PHASE 3: 创建 5 个放疗不良事件字典类型
-- ============================================================

INSERT INTO system_dict_type (id, name, type, status, remark, creator, create_time, updater, update_time, deleted)
VALUES
  (10001, '事件类别', 'adverse_event_type', 0, '放疗不良事件的一级分类', 1, NOW(), 1, NOW(), 0),
  (10002, '事件原因', 'adverse_event_cause', 0, '导致不良事件的各类原因分类', 1, NOW(), 1, NOW(), 0),
  (10003, '事件级别', 'adverse_event_level', 0, '不良事件的级别划分', 1, NOW(), 1, NOW(), 0),
  (10004, '损害程度', 'adverse_event_damage', 0, '不良事件造成的损害程度', 1, NOW(), 1, NOW(), 0),
  (10005, '处理部门', 'adverse_event_dept', 0, '负责处理不良事件的职能部门', 1, NOW(), 1, NOW(), 0);

-- ============================================================
-- PHASE 4: 创建字典数据
-- ============================================================

-- 4.1 事件类别
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted)
VALUES
  (10001, 1, '医疗', 'MEDICAL', 'adverse_event_type', 0, 'primary', '', '医疗类不良事件', 1, NOW(), 1, NOW(), 0),
  (10002, 2, '护理', 'NURSING', 'adverse_event_type', 0, 'success', '', '护理类不良事件', 1, NOW(), 1, NOW(), 0),
  (10003, 3, '院感', 'INFECTION', 'adverse_event_type', 0, 'warning', '', '医院感染类不良事件', 1, NOW(), 1, NOW(), 0),
  (10004, 4, '信息', 'INFORMATION', 'adverse_event_type', 0, 'info', '', '信息类不良事件', 1, NOW(), 1, NOW(), 0),
  (10005, 5, '器械', 'DEVICE', 'adverse_event_type', 0, 'danger', '', '医疗器械类不良事件', 1, NOW(), 1, NOW(), 0),
  (10006, 6, '后勤', 'LOGISTICS', 'adverse_event_type', 0, '', '', '后勤保障类不良事件', 1, NOW(), 1, NOW(), 0);

-- 4.2 事件原因
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted)
VALUES
  (10011, 1, '人为因素', 'HUMAN', 'adverse_event_cause', 0, 'primary', '', '操作失误、沟通不畅等人为原因', 1, NOW(), 1, NOW(), 0),
  (10012, 2, '设备因素', 'EQUIPMENT', 'adverse_event_cause', 0, 'warning', '', '设备故障、校准偏差等原因', 1, NOW(), 1, NOW(), 0),
  (10013, 3, '流程因素', 'PROCESS', 'adverse_event_cause', 0, 'info', '', '制度不完善、流程不合理等原因', 1, NOW(), 1, NOW(), 0),
  (10014, 4, '环境因素', 'ENVIRONMENT', 'adverse_event_cause', 0, 'success', '', '环境条件不达标等原因', 1, NOW(), 1, NOW(), 0),
  (10015, 5, '药物因素', 'MEDICATION', 'adverse_event_cause', 0, 'danger', '', '用药错误、药物不良反应等原因', 1, NOW(), 1, NOW(), 0),
  (10016, 6, '其他', 'OTHER', 'adverse_event_cause', 0, '', '', '其他未分类原因', 1, NOW(), 1, NOW(), 0);

-- 4.3 事件级别
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted)
VALUES
  (10021, 1, 'I级（警告事件）', 'LEVEL1', 'adverse_event_level', 0, 'danger', '', '可能导致患者死亡或严重伤害的事件', 1, NOW(), 1, NOW(), 0),
  (10022, 2, 'II级（不良后果事件）', 'LEVEL2', 'adverse_event_level', 0, 'warning', '', '导致患者需要额外处理或延长住院的事件', 1, NOW(), 1, NOW(), 0),
  (10023, 3, 'III级（未造成后果事件）', 'LEVEL3', 'adverse_event_level', 0, 'primary', '', '未对患者造成伤害但存在风险的事件', 1, NOW(), 1, NOW(), 0),
  (10024, 4, 'IV级（隐患事件）', 'LEVEL4', 'adverse_event_level', 0, 'info', '', '尚未发生但存在隐患的事件', 1, NOW(), 1, NOW(), 0);

-- 4.4 损害程度
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted)
VALUES
  (10031, 1, '轻度', 'MILD', 'adverse_event_damage', 0, 'success', '', '轻微伤害，无需特殊处理', 1, NOW(), 1, NOW(), 0),
  (10032, 2, '中度', 'MODERATE', 'adverse_event_damage', 0, 'primary', '', '需要额外处理或观察', 1, NOW(), 1, NOW(), 0),
  (10033, 3, '重度', 'SEVERE', 'adverse_event_damage', 0, 'warning', '', '导致功能障碍或需要手术干预', 1, NOW(), 1, NOW(), 0),
  (10034, 4, '严重', 'CRITICAL', 'adverse_event_damage', 0, 'danger', '', '危及生命或导致永久性伤害', 1, NOW(), 1, NOW(), 0);

-- 4.5 处理部门
INSERT INTO system_dict_data (id, sort, label, value, dict_type, status, color_type, css_class, remark, creator, create_time, updater, update_time, deleted)
VALUES
  (10041, 1, '医务处', 'MEDICAL', 'adverse_event_dept', 0, 'primary', '', '医务处', 1, NOW(), 1, NOW(), 0),
  (10042, 2, '护理部', 'NURSING', 'adverse_event_dept', 0, 'success', '', '护理部', 1, NOW(), 1, NOW(), 0),
  (10043, 3, '院感科', 'INFECTION', 'adverse_event_dept', 0, 'warning', '', '院感科', 1, NOW(), 1, NOW(), 0),
  (10044, 4, '质控科', 'QUALITY', 'adverse_event_dept', 0, 'info', '', '质控科', 1, NOW(), 1, NOW(), 0),
  (10045, 5, '药剂科', 'PHARMACY', 'adverse_event_dept', 0, 'danger', '', '药剂科', 1, NOW(), 1, NOW(), 0),
  (10046, 6, '设备科', 'EQUIPMENT', 'adverse_event_dept', 0, '', '', '设备科', 1, NOW(), 1, NOW(), 0);

-- ============================================================
-- 验证
-- ============================================================

SELECT '=== 字典类型（应只有5个）===' AS info;
SELECT id, name, type, status FROM system_dict_type WHERE deleted = 0 ORDER BY id;

SELECT '=== 字典数据统计 ===' AS info;
SELECT dict_type, COUNT(*) as cnt FROM system_dict_data WHERE deleted = 0 GROUP BY dict_type ORDER BY dict_type;

SELECT '=== 字典数据明细 ===' AS info;
SELECT dict_type, label, value, sort FROM system_dict_data WHERE deleted = 0 ORDER BY dict_type, sort;

COMMIT;
