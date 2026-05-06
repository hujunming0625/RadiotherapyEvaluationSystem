-- INFO template (id=8)
INSERT INTO ae_report_template (id, name, category, status, description, sort, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (8, '信息安全事件报告单', 'INFO', 1, '用于上报信息系统故障、数据泄露、网络攻击等信息安全相关不良事件', 6, '1', NOW(), '1', NOW(), 0, 1);

-- INFO template items (id=801-808)
INSERT INTO ae_report_template_item (id, template_id, label, field_type, required, options, dict_type, placeholder, default_value, sort, creator, create_time, updater, update_time, deleted, tenant_id) VALUES
(801, 8, '事件发生时间', 'DATETIME', 1, NULL, NULL, '请选择事件发生的精确时间', NULL, 1, '1', NOW(), '1', NOW(), 0, 1),
(802, 8, '事件发生地点', 'TEXT', 1, NULL, NULL, '如：信息中心机房/门诊收费处/住院护士站', NULL, 2, '1', NOW(), '1', NOW(), 0, 1),
(803, 8, '事件类型', 'RADIO', 1, '[{"label":"系统宕机","value":"system_down"},{"label":"数据泄露","value":"data_breach"},{"label":"网络攻击","value":"cyber_attack"},{"label":"软件故障","value":"software_bug"},{"label":"硬件故障","value":"hardware_fault"},{"label":"其他","value":"other"}]', NULL, '请选择事件类型', NULL, 3, '1', NOW(), '1', NOW(), 0, 1),
(804, 8, '受影响系统', 'TEXT', 1, NULL, NULL, '请填写受影响的信息系统名称', NULL, 4, '1', NOW(), '1', NOW(), 0, 1),
(805, 8, '影响范围', 'SELECT', 1, '[{"label":"单台终端","value":"single"},{"label":"单个科室","value":"dept"},{"label":"多个科室","value":"multi_dept"},{"label":"全院","value":"hospital"}]', NULL, '请选择影响范围', NULL, 5, '1', NOW(), '1', NOW(), 0, 1),
(806, 8, '持续时长', 'TEXT', 0, NULL, NULL, '如：2小时30分钟', NULL, 6, '1', NOW(), '1', NOW(), 0, 1),
(807, 8, '事件详细描述', 'TEXTAREA', 1, NULL, NULL, '请详细描述事件经过、发现过程、已采取的应急措施等', NULL, 7, '1', NOW(), '1', NOW(), 0, 1),
(808, 8, '是否涉及患者信息', 'RADIO', 0, '[{"label":"是","value":"yes"},{"label":"否","value":"no"}]', NULL, NULL, NULL, 8, '1', NOW(), '1', NOW(), 0, 1);
