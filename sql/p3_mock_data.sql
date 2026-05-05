-- Mock 测试数据生成：覆盖维护功能 + 事件上报 + 处理流程全场景
START TRANSACTION;

-- ====== 清理旧测试数据 ======
DELETE FROM `ruoyi-vue-pro`.`ae_event_track` WHERE id > 0;
DELETE FROM `ruoyi-vue-pro`.`ae_event_flow` WHERE id > 0;
DELETE FROM `ruoyi-vue-pro`.`ae_adverse_event` WHERE id > 0;
DELETE FROM `ruoyi-vue-pro`.`ae_committee_member` WHERE id > 0;
DELETE FROM `ruoyi-vue-pro`.`ae_committee` WHERE id > 0;
DELETE FROM `ruoyi-vue-pro`.`ae_report_template_item` WHERE id > 0;
DELETE FROM `ruoyi-vue-pro`.`ae_report_template` WHERE id > 0;

-- ====== 1. 报告单模板 (5条) ======
INSERT INTO `ruoyi-vue-pro`.`ae_report_template` (id, name, category, status, description, sort, creator, create_time, updater, update_time, deleted, tenant_id) VALUES
(1, '医疗安全事件报告单', 'MEDICAL', 1, '用于上报用药错误、手术并发症、输血反应等医疗安全不良事件', 1, '1', NOW(), '1', NOW(), 0, 1),
(2, '护理不良事件报告单', 'NURSING', 1, '用于上报跌倒、压疮、管路滑脱、给药差错等护理不良事件', 2, '1', NOW(), '1', NOW(), 0, 1),
(3, '院感不良事件报告单', 'INFECTION', 1, '用于上报手术部位感染、导管相关感染、多重耐药菌等院感事件', 3, '1', NOW(), '1', NOW(), 0, 1),
(4, '医疗器械不良事件报告单', 'DEVICE', 1, '用于上报医疗设备故障、耗材质量缺陷等器械相关事件', 4, '1', NOW(), '1', NOW(), 0, 1),
(5, '后勤安全事件报告单', 'LOGISTICS', 1, '用于上报设施损坏、食品安全、消防隐患等后勤安全事件', 5, '1', NOW(), '1', NOW(), 0, 1);

-- ====== 2. 报告单项 (每个模板6-8个字段) ======

-- 模板1: 医疗安全事件
INSERT INTO `ruoyi-vue-pro`.`ae_report_template_item` (id, template_id, label, field_type, required, options, placeholder, sort, creator, create_time, updater, update_time, deleted, tenant_id) VALUES
(101, 1, '事件发生时间', 'DATETIME', 1, NULL, '请选择事件发生的具体日期时间', 1, '1', NOW(), '1', NOW(), 0, 1),
(102, 1, '事件发生地点', 'TEXT', 1, NULL, '如：3号楼5层肿瘤科病房', 2, '1', NOW(), '1', NOW(), 0, 1),
(103, 1, '事件类型', 'RADIO', 1, '[{"label":"用药错误","value":"medication_error"},{"label":"手术并发症","value":"surgery_complication"},{"label":"输血反应","value":"transfusion_reaction"},{"label":"误诊漏诊","value":"misdiagnosis"},{"label":"其他","value":"other"}]', '请选择事件类型', 3, '1', NOW(), '1', NOW(), 0, 1),
(104, 1, '涉及药品/操作', 'TEXT', 0, NULL, '如涉及药品请填写药品名称及剂量', 4, '1', NOW(), '1', NOW(), 0, 1),
(105, 1, '患者基本信息', 'TEXTAREA', 0, NULL, '请描述患者年龄、性别、原发疾病等基本信息', 5, '1', NOW(), '1', NOW(), 0, 1),
(106, 1, '事件严重程度', 'SELECT', 1, '[{"label":"未造成伤害","value":"none"},{"label":"轻度伤害","value":"mild"},{"label":"中度伤害","value":"moderate"},{"label":"重度伤害","value":"severe"},{"label":"死亡","value":"death"}]', '请选择事件造成的实际影响', 6, '1', NOW(), '1', NOW(), 0, 1),
(107, 1, '事件经过描述', 'TEXTAREA', 1, NULL, '请详细描述事件发生经过、处理措施及结果', 7, '1', NOW(), '1', NOW(), 0, 1),
(108, 1, '是否涉及多人', 'RADIO', 0, '[{"label":"是","value":"yes"},{"label":"否","value":"no"}]', '', 8, '1', NOW(), '1', NOW(), 0, 1);

-- 模板2: 护理不良事件
INSERT INTO `ruoyi-vue-pro`.`ae_report_template_item` (id, template_id, label, field_type, required, options, placeholder, sort, creator, create_time, updater, update_time, deleted, tenant_id) VALUES
(201, 2, '事件发生时间', 'DATETIME', 1, NULL, '请选择事件发生的具体日期时间', 1, '1', NOW(), '1', NOW(), 0, 1),
(202, 2, '事件发生地点', 'TEXT', 1, NULL, '如：3号楼2层内科病房', 2, '1', NOW(), '1', NOW(), 0, 1),
(203, 2, '事件类型', 'CHECKBOX', 1, '[{"label":"跌倒/坠床","value":"fall"},{"label":"压疮","value":"pressure_sore"},{"label":"管路滑脱","value":"tube_displacement"},{"label":"给药差错","value":"medication_error"},{"label":"烫伤","value":"burn"},{"label":"其他","value":"other"}]', '可多选', 3, '1', NOW(), '1', NOW(), 0, 1),
(204, 2, '当班护士', 'TEXT', 0, NULL, '请填写当班护士姓名', 4, '1', NOW(), '1', NOW(), 0, 1),
(205, 2, '患者状态', 'SELECT', 1, '[{"label":"意识清醒","value":"conscious"},{"label":"意识模糊","value":"confused"},{"label":"昏迷","value":"coma"},{"label":"镇静状态","value":"sedated"}]', '请选择事件发生时患者意识状态', 5, '1', NOW(), '1', NOW(), 0, 1),
(206, 2, '事件经过描述', 'TEXTAREA', 1, NULL, '请详细描述事件发生经过及已采取措施', 6, '1', NOW(), '1', NOW(), 0, 1),
(207, 2, '陪护情况', 'RADIO', 0, '[{"label":"有家属陪护","value":"family"},{"label":"有护工陪护","value":"caregiver"},{"label":"无陪护","value":"none"}]', '', 7, '1', NOW(), '1', NOW(), 0, 1);

-- 模板3: 院感不良事件
INSERT INTO `ruoyi-vue-pro`.`ae_report_template_item` (id, template_id, label, field_type, required, options, placeholder, sort, creator, create_time, updater, update_time, deleted, tenant_id) VALUES
(301, 3, '事件发生时间', 'DATETIME', 1, NULL, '请选择事件发现日期时间', 1, '1', NOW(), '1', NOW(), 0, 1),
(302, 3, '发生科室', 'TEXT', 1, NULL, '如：ICU/手术室/肿瘤科', 2, '1', NOW(), '1', NOW(), 0, 1),
(303, 3, '感染类型', 'RADIO', 1, '[{"label":"手术部位感染","value":"ssi"},{"label":"呼吸机相关肺炎","value":"vap"},{"label":"导管相关血流感染","value":"clabsi"},{"label":"导管相关尿路感染","value":"cauti"},{"label":"多重耐药菌感染","value":"mdro"},{"label":"其他","value":"other"}]', '请选择感染类型', 3, '1', NOW(), '1', NOW(), 0, 1),
(304, 3, '病原体名称', 'TEXT', 0, NULL, '如已知病原体请填写', 4, '1', NOW(), '1', NOW(), 0, 1),
(305, 3, '感染发现途径', 'CHECKBOX', 0, '[{"label":"常规监测","value":"routine"},{"label":"临床诊断","value":"clinical"},{"label":"微生物检查","value":"microbiology"},{"label":"影像学检查","value":"imaging"}]', '可多选', 5, '1', NOW(), '1', NOW(), 0, 1),
(306, 3, '事件经过描述', 'TEXTAREA', 1, NULL, '请描述感染发生经过、诊疗处理过程', 6, '1', NOW(), '1', NOW(), 0, 1);

-- 模板4: 医疗器械不良事件
INSERT INTO `ruoyi-vue-pro`.`ae_report_template_item` (id, template_id, label, field_type, required, options, placeholder, sort, creator, create_time, updater, update_time, deleted, tenant_id) VALUES
(401, 4, '事件发生时间', 'DATETIME', 1, NULL, '请选择事件发生日期时间', 1, '1', NOW(), '1', NOW(), 0, 1),
(402, 4, '设备/耗材名称', 'TEXT', 1, NULL, '请填写涉及的设备名称、型号及编号', 2, '1', NOW(), '1', NOW(), 0, 1),
(403, 4, '设备类别', 'SELECT', 1, '[{"label":"诊断设备","value":"diagnostic"},{"label":"治疗设备","value":"therapeutic"},{"label":"监护设备","value":"monitoring"},{"label":"植入物","value":"implant"},{"label":"一次性耗材","value":"consumable"},{"label":"其他","value":"other"}]', '请选择设备类别', 3, '1', NOW(), '1', NOW(), 0, 1),
(404, 4, '生产厂家', 'TEXT', 0, NULL, '请填写设备/耗材的生产厂家', 4, '1', NOW(), '1', NOW(), 0, 1),
(405, 4, '故障类型', 'RADIO', 1, '[{"label":"设备停止工作","value":"fail"},{"label":"性能下降","value":"degraded"},{"label":"误报警","value":"false_alarm"},{"label":"耗材质量问题","value":"quality"},{"label":"其他","value":"other"}]', '请选择主要问题类型', 5, '1', NOW(), '1', NOW(), 0, 1),
(406, 4, '对患者影响', 'SELECT', 0, '[{"label":"无影响","value":"none"},{"label":"轻微影响","value":"mild"},{"label":"中等影响","value":"moderate"},{"label":"严重影响","value":"severe"}]', '', 6, '1', NOW(), '1', NOW(), 0, 1),
(407, 4, '事件经过描述', 'TEXTAREA', 1, NULL, '请描述事件发生经过及应急处理措施', 7, '1', NOW(), '1', NOW(), 0, 1);

-- 模板5: 后勤安全事件
INSERT INTO `ruoyi-vue-pro`.`ae_report_template_item` (id, template_id, label, field_type, required, options, placeholder, sort, creator, create_time, updater, update_time, deleted, tenant_id) VALUES
(501, 5, '事件发生时间', 'DATETIME', 1, NULL, '请选择事件发生日期时间', 1, '1', NOW(), '1', NOW(), 0, 1),
(502, 5, '事件发生地点', 'TEXT', 1, NULL, '如：食堂/配电房/停车场/病房楼', 2, '1', NOW(), '1', NOW(), 0, 1),
(503, 5, '事件类型', 'RADIO', 1, '[{"label":"设施损坏","value":"facility_damage"},{"label":"食品安全","value":"food_safety"},{"label":"消防安全","value":"fire_safety"},{"label":"水电故障","value":"utility_failure"},{"label":"环境安全","value":"environment"},{"label":"其他","value":"other"}]', '请选择事件类型', 3, '1', NOW(), '1', NOW(), 0, 1),
(504, 5, '影响范围', 'RADIO', 0, '[{"label":"单个区域","value":"single"},{"label":"多个区域","value":"multiple"},{"label":"全院范围","value":"hospital_wide"}]', '', 4, '1', NOW(), '1', NOW(), 0, 1),
(505, 5, '是否有人员受伤', 'RADIO', 0, '[{"label":"否","value":"no"},{"label":"是，1人轻伤","value":"yes_1"},{"label":"是，多人受伤","value":"yes_many"}]', '', 5, '1', NOW(), '1', NOW(), 0, 1),
(506, 5, '经济损失估算(元)', 'NUMBER', 0, NULL, '如可估算请填写金额', 6, '1', NOW(), '1', NOW(), 0, 1),
(507, 5, '事件经过描述', 'TEXTAREA', 1, NULL, '请描述事件发生经过及应急处置措施', 7, '1', NOW(), '1', NOW(), 0, 1);

-- ====== 3. 质量委员会 (8条) + 成员 ======
INSERT INTO `ruoyi-vue-pro`.`ae_committee` (id, name, status, description, creator, create_time, updater, update_time, deleted, tenant_id) VALUES
(1, '医疗质量管理委员会', 1, '负责全院医疗质量监控、不良事件根本原因分析和改进措施制定', '1', NOW(), '1', NOW(), 0, 1),
(2, '医学伦理委员会', 1, '负责涉及医学伦理事件的审查和评估', '1', NOW(), '1', NOW(), 0, 1),
(3, '药事管理与药物治疗学委员会', 1, '负责药品安全事件分析和用药流程改进', '1', NOW(), '1', NOW(), 0, 1),
(4, '医院感染管理委员会', 1, '负责院感事件调查分析和感染控制措施评估', '1', NOW(), '1', NOW(), 0, 1),
(5, '护理质量管理委员会', 1, '负责护理不良事件分析和护理质量持续改进', '1', NOW(), '1', NOW(), 0, 1),
(6, '病案管理委员会', 1, '负责病案相关质量管理与改进', '1', NOW(), '1', NOW(), 0, 1),
(7, '临床用血管理委员会', 1, '负责输血相关事件的调查分析和用血安全管理', '1', NOW(), '1', NOW(), 0, 1),
(8, '安全生产管理委员会', 1, '负责设施安全、消防安全、环境安全等后勤事件的综合管理', '1', NOW(), '1', NOW(), 0, 1);

-- 委员会成员 (每个委员会2-3人，使用现有用户ID: 1=admin, 100=yudao, 103=yuanma, 104=test, 107=admin107)
INSERT INTO `ruoyi-vue-pro`.`ae_committee_member` (committee_id, user_id, role_type, creator, create_time, updater, update_time, deleted, tenant_id) VALUES
-- 医疗质量管理委员会: 1负责人 + 1秘书 + 1成员
(1, 1, 3, '1', NOW(), '1', NOW(), 0, 1),
(1, 100, 2, '1', NOW(), '1', NOW(), 0, 1),
(1, 103, 1, '1', NOW(), '1', NOW(), 0, 1),
-- 医学伦理委员会: 1负责人 + 1成员
(2, 103, 3, '1', NOW(), '1', NOW(), 0, 1),
(2, 104, 1, '1', NOW(), '1', NOW(), 0, 1),
-- 药事管理委员会: 1负责人 + 1秘书
(3, 100, 3, '1', NOW(), '1', NOW(), 0, 1),
(3, 104, 2, '1', NOW(), '1', NOW(), 0, 1),
-- 医院感染管理委员会: 1负责人 + 1成员
(4, 104, 3, '1', NOW(), '1', NOW(), 0, 1),
(4, 107, 1, '1', NOW(), '1', NOW(), 0, 1),
-- 护理质量管理委员会: 1负责人 + 1秘书
(5, 107, 3, '1', NOW(), '1', NOW(), 0, 1),
(5, 100, 2, '1', NOW(), '1', NOW(), 0, 1),
(5, 103, 1, '1', NOW(), '1', NOW(), 0, 1),
-- 病案管理委员会: 1负责人 + 1成员
(6, 103, 3, '1', NOW(), '1', NOW(), 0, 1),
(6, 107, 1, '1', NOW(), '1', NOW(), 0, 1),
-- 临床用血管理委员会: 1负责人 + 1秘书
(7, 100, 3, '1', NOW(), '1', NOW(), 0, 1),
(7, 103, 2, '1', NOW(), '1', NOW(), 0, 1),
-- 安全生产管理委员会: 1负责人 + 1成员 + 1秘书
(8, 107, 3, '1', NOW(), '1', NOW(), 0, 1),
(8, 104, 2, '1', NOW(), '1', NOW(), 0, 1),
(8, 100, 1, '1', NOW(), '1', NOW(), 0, 1);

-- ====== 4. 不良事件 (5条，覆盖不同状态) ======
INSERT INTO `ruoyi-vue-pro`.`ae_adverse_event` (id, event_no, template_id, category, level, status, reporter_id, reporter_type, report_time, dept_id, description, form_data, current_handler_id, current_dept_id, report_mode, creator, create_time, updater, update_time, deleted, tenant_id) VALUES
-- 事件1: DRAFT 草稿
(1, 'AE20260501001', 1, 'MEDICAL', 3, 0, 1, 1, '2026-05-01 08:30:00', 200, '患者张某在肿瘤放疗科接受化疗期间，护士发现输液速度设置错误，及时纠正未造成后果。',
 '[{"itemId":101,"label":"事件发生时间","value":"2026-05-01 08:15:00"},{"itemId":102,"label":"事件发生地点","value":"肿瘤放疗科病房"},{"itemId":103,"label":"事件类型","value":"medication_error"},{"itemId":104,"label":"涉及药品/操作","value":"顺铂注射液"},{"itemId":106,"label":"事件严重程度","value":"none"},{"itemId":107,"label":"事件经过描述","value":"护士在巡房时发现输液泵速率设置错误，立即更正，患者未出现不适症状。"}]',
 1, 200, 1, '1', '2026-05-01 08:30:00', '1', '2026-05-01 08:30:00', 0, 1),

-- 事件2: DEPT_PENDING 待科室处理 — 逐级上报的医疗事件
(2, 'AE20260501002', 1, 'MEDICAL', 2, 10, 1, 1, '2026-05-01 09:15:00', 201,
 '患者李某在肿瘤内科接受靶向药物治疗后出现严重过敏反应，经抢救后转入ICU观察。',
 '[{"itemId":101,"label":"事件发生时间","value":"2026-05-01 08:50:00"},{"itemId":102,"label":"事件发生地点","value":"肿瘤内科日间病房"},{"itemId":103,"label":"事件类型","value":"medication_error"},{"itemId":104,"label":"涉及药品/操作","value":"利妥昔单抗"},{"itemId":106,"label":"事件严重程度","value":"moderate"},{"itemId":107,"label":"事件经过描述","value":"患者在输注利妥昔单抗15分钟后出现呼吸困难、皮疹等过敏反应，立即停药并给予抗过敏治疗。"}]',
 1, 201, 1, '1', '2026-05-01 09:15:00', '1', '2026-05-01 09:15:00', 0, 1),

-- 事件3: FUNC_PENDING 待职能部门处理 — 护理事件，逐级上报已过科室
(3, 'AE20260501003', 2, 'NURSING', 3, 20, 1, 1, '2026-05-01 10:00:00', 203,
 '肿瘤外科病房患者王某夜间从病床跌落到地面，所幸仅造成轻微擦伤。',
 '[{"itemId":201,"label":"事件发生时间","value":"2026-05-01 03:20:00"},{"itemId":202,"label":"事件发生地点","value":"肿瘤外科病房302床"},{"itemId":203,"label":"事件类型","value":"fall"},{"itemId":204,"label":"当班护士","value":"张某"},{"itemId":205,"label":"患者状态","value":"confused"},{"itemId":206,"label":"事件经过描述","value":"患者夜间自行下床如厕，因体力不支摔倒，护士听到呼叫铃后立即赶到，检查发现左前臂擦伤，已给予消毒包扎处理。"}]',
 1, 205, 1, '1', '2026-05-01 10:00:00', '1', '2026-05-01 10:00:00', 0, 1),

-- 事件4: LEADER_PENDING 待院领导处理 — I级严重事件
(4, 'AE20260501004', 3, 'INFECTION', 1, 30, 1, 1, '2026-05-01 11:00:00', 201,
 'ICU发生多重耐药菌聚集性感染，3名患者先后检出耐碳青霉烯类肺炎克雷伯菌(CRKP)，其中1人死亡。',
 '[{"itemId":301,"label":"事件发生时间","value":"2026-04-28 16:00:00"},{"itemId":302,"label":"发生科室","value":"ICU"},{"itemId":303,"label":"感染类型","value":"mdro"},{"itemId":304,"label":"病原体名称","value":"耐碳青霉烯类肺炎克雷伯菌(CRKP)"},{"itemId":305,"label":"感染发现途径","value":"microbiology"},{"itemId":306,"label":"事件经过描述","value":"2026年4月28日至5月1日期间，ICU病区先后有3名患者痰培养检出CRKP，其中1名高龄患者因基础疾病重、感染难以控制，于4月30日死亡。已启动院感应急预案。"}]',
 1, 205, 1, '1', '2026-05-01 11:00:00', '1', '2026-05-01 11:00:00', 0, 1),

-- 事件5: COMPLETED 已完成 — 直报的器械事件
(5, 'AE20260501005', 4, 'DEVICE', 4, 50, 1, 1, '2026-04-28 14:00:00', 200,
 '肿瘤放疗科一台直线加速器在治疗过程中出现剂量输出异常，技术人员及时发现并停机检查，未对患者造成实际影响。',
 '[{"itemId":401,"label":"事件发生时间","value":"2026-04-28 13:45:00"},{"itemId":402,"label":"设备/耗材名称","value":"直线加速器 Elekta Synergy S/N:ELK-2020-0158"},{"itemId":403,"label":"设备类别","value":"therapeutic"},{"itemId":404,"label":"生产厂家","value":"Elekta"},{"itemId":405,"label":"故障类型","value":"degraded"},{"itemId":406,"label":"对患者影响","value":"none"},{"itemId":407,"label":"事件经过描述","value":"物理师在进行日常QA检测时发现输出剂量偏差超过容许范围(>3%)，立即通知停止当日治疗，联系厂家工程师检修。厂家反馈为电离室故障，已更换备件并重新校准。"}]',
 1, 208, 2, '1', '2026-04-28 14:00:00', '1', '2026-04-28 14:00:00', 0, 1);

-- ====== 5. 事件流程记录 ======
INSERT INTO `ruoyi-vue-pro`.`ae_event_flow` (event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, handle_time, creator, create_time, updater, update_time, deleted, tenant_id) VALUES
-- 事件1(DRAFT): 仅创建记录
(1, 0, 0, 1, 'SUBMIT', '创建上报草稿', NULL, NULL, NULL, '2026-05-01 08:30:00', '1', '2026-05-01 08:30:00', '1', '2026-05-01 08:30:00', 0, 1),

-- 事件2(DEPT_PENDING): 创建 + 提交到科室
(2, 0, 0, 1, 'SUBMIT', '上报医疗不良事件', NULL, NULL, NULL, '2026-05-01 09:15:00', '1', '2026-05-01 09:15:00', '1', '2026-05-01 09:15:00', 0, 1),
(2, 0, 10, 1, 'SUBMIT', '已提交至科室审核', NULL, NULL, NULL, '2026-05-01 09:16:00', '1', '2026-05-01 09:16:00', '1', '2026-05-01 09:16:00', 0, 1),

-- 事件3(FUNC_PENDING): 创建 + 科室处理 + 上报职能
(3, 0, 0, 1, 'SUBMIT', '上报护理不良事件', NULL, NULL, NULL, '2026-05-01 10:00:00', '1', '2026-05-01 10:00:00', '1', '2026-05-01 10:00:00', 0, 1),
(3, 0, 10, 1, 'SUBMIT', '已提交至科室', NULL, NULL, NULL, '2026-05-01 10:01:00', '1', '2026-05-01 10:01:00', '1', '2026-05-01 10:01:00', 0, 1),
(3, 10, 20, 1, 'PROCESS', '经核查属实，已对患者进行处理，转职能部门进一步分析', 'patient_fall', 1, 1, '2026-05-01 10:30:00', '1', '2026-05-01 10:30:00', '1', '2026-05-01 10:30:00', 0, 1),

-- 事件4(LEADER_PENDING): 创建 + 科室 + 职能判断I级需院领导
(4, 0, 0, 1, 'SUBMIT', '上报院感聚集性事件', NULL, NULL, NULL, '2026-05-01 11:00:00', '1', '2026-05-01 11:00:00', '1', '2026-05-01 11:00:00', 0, 1),
(4, 0, 10, 1, 'SUBMIT', '已提交至科室', NULL, NULL, NULL, '2026-05-01 11:01:00', '1', '2026-05-01 11:01:00', '1', '2026-05-01 11:01:00', 0, 1),
(4, 10, 20, 1, 'PROCESS', '情况紧急，转医务处紧急处理', 'mdro_outbreak', 3, 1, '2026-05-01 11:20:00', '1', '2026-05-01 11:20:00', '1', '2026-05-01 11:20:00', 0, 1),
(4, 20, 30, 1, 'PROCESS', 'I级事件，需院领导审核', 'mdro_outbreak', 3, 1, '2026-05-01 11:35:00', '1', '2026-05-01 11:35:00', '1', '2026-05-01 11:35:00', 0, 1),

-- 事件5(COMPLETED): 完整流程 创建 + 直报职能 + 处理完成(IV级不需要院领导)
(5, 0, 0, 1, 'SUBMIT', '直报医疗器械不良事件', NULL, NULL, NULL, '2026-04-28 14:00:00', '1', '2026-04-28 14:00:00', '1', '2026-04-28 14:00:00', 0, 1),
(5, 0, 20, 1, 'SUBMIT', '直报至设备科', NULL, NULL, NULL, '2026-04-28 14:01:00', '1', '2026-04-28 14:01:00', '1', '2026-04-28 14:01:00', 0, 1),
(5, 20, 50, 1, 'PROCESS', '设备故障已确认并修复，IV级事件无需院领导审批，处理完毕', 'device_malfunction', 0, 0, '2026-04-29 09:00:00', '1', '2026-04-29 09:00:00', '1', '2026-04-29 09:00:00', 0, 1);

-- ====== 6. 事件追踪 (3条) ======
INSERT INTO `ruoyi-vue-pro`.`ae_event_track` (id, event_id, track_time, remind_time, content, tracker_id, status, creator, create_time, updater, update_time, deleted, tenant_id) VALUES
(1, 3, '2026-05-02 10:00:00', '2026-05-08 09:00:00', '追踪患者王某跌倒后恢复情况：患者左前臂擦伤已愈合，精神状态良好，已加强夜间巡视频次。', 1, 1, '1', NOW(), '1', NOW(), 0, 1),
(2, 4, '2026-05-02 14:00:00', '2026-05-05 14:00:00', '追踪ICU院感事件：已对病区进行彻底消毒，所有在院患者已进行CRKP筛查，未发现新阳性病例。', 1, 1, '1', NOW(), '1', NOW(), 0, 1),
(3, 5, '2026-05-01 16:00:00', NULL, '追踪直线加速器维修情况：厂家已更换电离室并完成校准，质控检测合格，已于4月29日恢复使用。', 1, 2, '1', NOW(), '1', NOW(), 0, 1);

COMMIT;
