-- ============================================================
-- Mock Data for Radiotherapy Adverse Event System
-- Generated: 2026-05-06
-- Events: 323, Flows: 923, Tracks: 121, Notifications: 587
-- ============================================================

START TRANSACTION;

-- ============================================================
-- PHASE 1: Create user accounts
-- ============================================================
INSERT INTO system_users (id, username, password, nickname, sex, mobile, dept_id, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (154, 'doctor_zhang', '$2a$04$.vd8nPeLwxt6hnSzmAoAyul8BOLX7Cib6QhcxRe30rfvrIPQHH1OG', '张伟', 1, '13800001001', 200, 0, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO system_users (id, username, password, nickname, sex, mobile, dept_id, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (155, 'doctor_li', '$2a$04$.vd8nPeLwxt6hnSzmAoAyul8BOLX7Cib6QhcxRe30rfvrIPQHH1OG', '李芳', 2, '13800001002', 201, 0, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO system_users (id, username, password, nickname, sex, mobile, dept_id, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (156, 'dept_wang', '$2a$04$.vd8nPeLwxt6hnSzmAoAyul8BOLX7Cib6QhcxRe30rfvrIPQHH1OG', '王强', 1, '13800001003', 200, 0, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO system_users (id, username, password, nickname, sex, mobile, dept_id, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (157, 'func_chen', '$2a$04$.vd8nPeLwxt6hnSzmAoAyul8BOLX7Cib6QhcxRe30rfvrIPQHH1OG', '陈静', 2, '13800001004', 205, 0, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO system_users (id, username, password, nickname, sex, mobile, dept_id, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (158, 'leader_zhao', '$2a$04$.vd8nPeLwxt6hnSzmAoAyul8BOLX7Cib6QhcxRe30rfvrIPQHH1OG', '赵明', 1, '13800001005', 1, 0, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO system_users (id, username, password, nickname, sex, mobile, dept_id, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (159, 'committee_liu', '$2a$04$.vd8nPeLwxt6hnSzmAoAyul8BOLX7Cib6QhcxRe30rfvrIPQHH1OG', '刘洋', 1, '13800001006', 206, 0, 'admin', NOW(), 'admin', NOW(), 0, 0);

-- ============================================================
-- PHASE 2: Assign roles to users
-- ============================================================
INSERT INTO system_user_role (user_id, role_id, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (154, 200, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO system_user_role (user_id, role_id, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (154, 2, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO system_user_role (user_id, role_id, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (155, 200, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO system_user_role (user_id, role_id, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (155, 2, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO system_user_role (user_id, role_id, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (156, 201, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO system_user_role (user_id, role_id, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (156, 2, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO system_user_role (user_id, role_id, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (157, 202, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO system_user_role (user_id, role_id, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (157, 2, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO system_user_role (user_id, role_id, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (158, 203, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO system_user_role (user_id, role_id, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (158, 2, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO system_user_role (user_id, role_id, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (159, 204, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO system_user_role (user_id, role_id, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (159, 2, 'admin', NOW(), 'admin', NOW(), 0, 0);

-- ============================================================
-- PHASE 3: Assign posts to users
-- ============================================================
INSERT INTO system_user_post (user_id, post_id, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (154, 4, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO system_user_post (user_id, post_id, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (155, 4, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO system_user_post (user_id, post_id, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (156, 4, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO system_user_post (user_id, post_id, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (157, 4, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO system_user_post (user_id, post_id, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (158, 4, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO system_user_post (user_id, post_id, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (159, 4, 'admin', NOW(), 'admin', NOW(), 0, 0);

-- ============================================================
-- PHASE 4: Insert 323 adverse events
-- ============================================================
INSERT INTO ae_adverse_event (id, event_no, template_id, category, level, status, reporter_id, reporter_type, report_time, dept_id, description, form_data, current_handler_id, current_dept_id, report_mode, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (6, 'AE20230504001', 1, 'MEDICAL', 3, 50, 154, 1, '2023-05-04 08:47:00', 200, '患者在放疗过程中出现定位偏差，导致照射野偏移约5mm，经及时发现并纠正。', '[{"label": "事件发生时间", "value": "见上报时间", "type": "DATETIME"}, {"label": "事件类别", "value": "MEDICAL", "type": "SELECT"}, {"label": "事件经过", "value": "详见事件描述", "type": "TEXTAREA"}]', NULL, NULL, 2, '154', '2023-05-04 08:47:00', '154', '2023-05-04 08:47:00', 0, 0);
INSERT INTO ae_adverse_event (id, event_no, template_id, category, level, status, reporter_id, reporter_type, report_time, dept_id, description, form_data, current_handler_id, current_dept_id, report_mode, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (7, 'AE20230518001', 2, 'NURSING', 3, 50, 154, 1, '2023-05-18 11:45:00', 200, '放疗等候区患者跌倒，造成软组织损伤，需要进一步检查处理。', '[{"label": "事件发生时间", "value": "见上报时间", "type": "DATETIME"}, {"label": "事件类别", "value": "NURSING", "type": "SELECT"}, {"label": "事件经过", "value": "详见事件描述", "type": "TEXTAREA"}]', NULL, NULL, 1, '154', '2023-05-18 11:45:00', '154', '2023-05-18 11:45:00', 0, 0);
INSERT INTO ae_adverse_event (id, event_no, template_id, category, level, status, reporter_id, reporter_type, report_time, dept_id, description, form_data, current_handler_id, current_dept_id, report_mode, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (8, 'AE20230505001', 2, 'NURSING', 2, 50, 154, 1, '2023-05-05 11:48:00', 200, '患者放疗后皮肤护理不当，出现II级放射性皮炎，局部红肿明显。', '[{"label": "事件发生时间", "value": "见上报时间", "type": "DATETIME"}, {"label": "事件类别", "value": "NURSING", "type": "SELECT"}, {"label": "事件经过", "value": "详见事件描述", "type": "TEXTAREA"}]', NULL, NULL, 1, '154', '2023-05-05 11:48:00', '154', '2023-05-05 11:48:00', 0, 0);
INSERT INTO ae_adverse_event (id, event_no, template_id, category, level, status, reporter_id, reporter_type, report_time, dept_id, description, form_data, current_handler_id, current_dept_id, report_mode, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (9, 'AE20230518002', 2, 'NURSING', 4, 50, 155, 1, '2023-05-18 12:53:00', 201, '放疗前患者身份核对出现错误，差点给错误患者执行治疗。', '[{"label": "事件发生时间", "value": "见上报时间", "type": "DATETIME"}, {"label": "事件类别", "value": "NURSING", "type": "SELECT"}, {"label": "事件经过", "value": "详见事件描述", "type": "TEXTAREA"}]', NULL, NULL, 1, '155', '2023-05-18 12:53:00', '155', '2023-05-18 12:53:00', 0, 0);
INSERT INTO ae_adverse_event (id, event_no, template_id, category, level, status, reporter_id, reporter_type, report_time, dept_id, description, form_data, current_handler_id, current_dept_id, report_mode, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (10, 'AE20230528001', 1, 'MEDICAL', 3, 70, 155, 1, '2023-05-28 09:24:00', 201, '放疗计划审核时发现剂量计算错误，实际处方剂量与计划剂量不一致。', '[{"label": "事件发生时间", "value": "见上报时间", "type": "DATETIME"}, {"label": "事件类别", "value": "MEDICAL", "type": "SELECT"}, {"label": "事件经过", "value": "详见事件描述", "type": "TEXTAREA"}]', NULL, NULL, 1, '155', '2023-05-28 09:24:00', '155', '2023-05-28 09:24:00', 0, 0);
INSERT INTO ae_adverse_event (id, event_no, template_id, category, level, status, reporter_id, reporter_type, report_time, dept_id, description, form_data, current_handler_id, current_dept_id, report_mode, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (11, 'AE20230520001', 2, 'NURSING', 3, 70, 155, 1, '2023-05-20 18:10:00', 201, '放疗患者心理护理不到位，患者出现焦虑情绪，拒绝继续治疗。', '[{"label": "事件发生时间", "value": "见上报时间", "type": "DATETIME"}, {"label": "事件类别", "value": "NURSING", "type": "SELECT"}, {"label": "事件经过", "value": "详见事件描述", "type": "TEXTAREA"}]', NULL, NULL, 2, '155', '2023-05-20 18:10:00', '155', '2023-05-20 18:10:00', 0, 0);
INSERT INTO ae_adverse_event (id, event_no, template_id, category, level, status, reporter_id, reporter_type, report_time, dept_id, description, form_data, current_handler_id, current_dept_id, report_mode, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (12, 'AE20230525001', 4, 'DEVICE', 4, 50, 155, 1, '2023-05-25 08:14:00', 201, '放疗设备MLC叶片运动异常，影响调强放疗的实施质量。', '[{"label": "事件发生时间", "value": "见上报时间", "type": "DATETIME"}, {"label": "事件类别", "value": "DEVICE", "type": "SELECT"}, {"label": "事件经过", "value": "详见事件描述", "type": "TEXTAREA"}]', NULL, NULL, 1, '155', '2023-05-25 08:14:00', '155', '2023-05-25 08:14:00', 0, 0);
INSERT INTO ae_adverse_event (id, event_no, template_id, category, level, status, reporter_id, reporter_type, report_time, dept_id, description, form_data, current_handler_id, current_dept_id, report_mode, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (13, 'AE20230529001', 1, 'MEDICAL', 2, 60, 155, 1, '2023-05-29 18:29:00', 201, '患者在放疗过程中出现严重皮肤反应，III级放射性皮炎，需要暂停治疗。', '[{"label": "事件发生时间", "value": "见上报时间", "type": "DATETIME"}, {"label": "事件类别", "value": "MEDICAL", "type": "SELECT"}, {"label": "事件经过", "value": "详见事件描述", "type": "TEXTAREA"}]', NULL, NULL, 1, '155', '2023-05-29 18:29:00', '155', '2023-05-29 18:29:00', 0, 0);
INSERT INTO ae_adverse_event (id, event_no, template_id, category, level, status, reporter_id, reporter_type, report_time, dept_id, description, form_data, current_handler_id, current_dept_id, report_mode, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (14, 'AE20230616001', 1, 'MEDICAL', 2, 50, 154, 1, '2023-06-16 09:48:00', 200, '患者在放疗过程中出现定位偏差，导致照射野偏移约5mm，经及时发现并纠正。', '[{"label": "事件发生时间", "value": "见上报时间", "type": "DATETIME"}, {"label": "事件类别", "value": "MEDICAL", "type": "SELECT"}, {"label": "事件经过", "value": "详见事件描述", "type": "TEXTAREA"}]', NULL, NULL, 1, '154', '2023-06-16 09:48:00', '154', '2023-06-16 09:48:00', 0, 0);
INSERT INTO ae_adverse_event (id, event_no, template_id, category, level, status, reporter_id, reporter_type, report_time, dept_id, description, form_data, current_handler_id, current_dept_id, report_mode, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (15, 'AE20230622001', 4, 'DEVICE', 4, 50, 155, 1, '2023-06-22 09:43:00', 201, '放疗验证设备（EPID）图像采集失败，无法进行治疗验证。', '[{"label": "事件发生时间", "value": "见上报时间", "type": "DATETIME"}, {"label": "事件类别", "value": "DEVICE", "type": "SELECT"}, {"label": "事件经过", "value": "详见事件描述", "type": "TEXTAREA"}]', NULL, NULL, 1, '155', '2023-06-22 09:43:00', '155', '2023-06-22 09:43:00', 0, 0);
INSERT INTO ae_adverse_event (id, event_no, template_id, category, level, status, reporter_id, reporter_type, report_time, dept_id, description, form_data, current_handler_id, current_dept_id, report_mode, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (16, 'AE20230625001', 1, 'INFO', 4, 50, 155, 1, '2023-06-25 10:32:00', 201, '放疗设备监控系统报警延迟，未能及时发现设备异常。', '[{"label": "事件发生时间", "value": "见上报时间", "type": "DATETIME"}, {"label": "事件类别", "value": "INFO", "type": "SELECT"}, {"label": "事件经过", "value": "详见事件描述", "type": "TEXTAREA"}]', NULL, NULL, 1, '155', '2023-06-25 10:32:00', '155', '2023-06-25 10:32:00', 0, 0);
INSERT INTO ae_adverse_event (id, event_no, template_id, category, level, status, reporter_id, reporter_type, report_time, dept_id, description, form_data, current_handler_id, current_dept_id, report_mode, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (17, 'AE20230630001', 2, 'NURSING', 1, 50, 155, 2, '2023-06-30 08:38:00', 201, '放疗患者静脉通路维护不当，导致药物外渗，局部肿胀。', '[{"label": "事件发生时间", "value": "见上报时间", "type": "DATETIME"}, {"label": "事件类别", "value": "NURSING", "type": "SELECT"}, {"label": "事件经过", "value": "详见事件描述", "type": "TEXTAREA"}]', NULL, NULL, 2, '155', '2023-06-30 08:38:00', '155', '2023-06-30 08:38:00', 0, 0);
INSERT INTO ae_adverse_event (id, event_no, template_id, category, level, status, reporter_id, reporter_type, report_time, dept_id, description, form_data, current_handler_id, current_dept_id, report_mode, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (18, 'AE20230627001', 2, 'NURSING', 2, 50, 155, 2, '2023-06-27 09:48:00', 201, '患者放疗后出现严重恶心呕吐，护理记录不完整，未及时报告医生。', '[{"label": "事件发生时间", "value": "见上报时间", "type": "DATETIME"}, {"label": "事件类别", "value": "NURSING", "type": "SELECT"}, {"label": "事件经过", "value": "详见事件描述", "type": "TEXTAREA"}]', NULL, NULL, 1, '155', '2023-06-27 09:48:00', '155', '2023-06-27 09:48:00', 0, 0);
INSERT INTO ae_adverse_event (id, event_no, template_id, category, level, status, reporter_id, reporter_type, report_time, dept_id, description, form_data, current_handler_id, current_dept_id, report_mode, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (19, 'AE20230607001', 5, 'LOGISTICS', 3, 50, 155, 2, '2023-06-07 12:25:00', 201, '放疗等候区座椅损坏，存在安全隐患。', '[{"label": "事件发生时间", "value": "见上报时间", "type": "DATETIME"}, {"label": "事件类别", "value": "LOGISTICS", "type": "SELECT"}, {"label": "事件经过", "value": "详见事件描述", "type": "TEXTAREA"}]', NULL, NULL, 1, '155', '2023-06-07 12:25:00', '155', '2023-06-07 12:25:00', 0, 0);
INSERT INTO ae_adverse_event (id, event_no, template_id, category, level, status, reporter_id, reporter_type, report_time, dept_id, description, form_data, current_handler_id, current_dept_id, report_mode, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (20, 'AE20230608001', 3, 'INFECTION', 2, 50, 154, 2, '2023-06-08 08:04:00', 200, '放疗科医护人员手卫生依从性检查发现不合格，需要整改。', '[{"label": "事件发生时间", "value": "见上报时间", "type": "DATETIME"}, {"label": "事件类别", "value": "INFECTION", "type": "SELECT"}, {"label": "事件经过", "value": "详见事件描述", "type": "TEXTAREA"}]', NULL, NULL, 2, '154', '2023-06-08 08:04:00', '154', '2023-06-08 08:04:00', 0, 0);
INSERT INTO ae_adverse_event (id, event_no, template_id, category, level, status, reporter_id, reporter_type, report_time, dept_id, description, form_data, current_handler_id, current_dept_id, report_mode, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (21, 'AE20230619001', 3, 'INFECTION', 4, 50, 154, 1, '2023-06-19 15:15:00', 200, '放疗科发现多重耐药菌感染病例，需要加强感染防控措施。', '[{"label": "事件发生时间", "value": "见上报时间", "type": "DATETIME"}, {"label": "事件类别", "value": "INFECTION", "type": "SELECT"}, {"label": "事件经过", "value": "详见事件描述", "type": "TEXTAREA"}]', NULL, NULL, 1, '154', '2023-06-19 15:15:00', '154', '2023-06-19 15:15:00', 0, 0);
INSERT INTO ae_adverse_event (id, event_no, template_id, category, level, status, reporter_id, reporter_type, report_time, dept_id, description, form_data, current_handler_id, current_dept_id, report_mode, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (22, 'AE20230713001', 4, 'DEVICE', 3, 50, 154, 1, '2023-07-13 13:51:00', 200, '放疗验证设备（EPID）图像采集失败，无法进行治疗验证。', '[{"label": "事件发生时间", "value": "见上报时间", "type": "DATETIME"}, {"label": "事件类别", "value": "DEVICE", "type": "SELECT"}, {"label": "事件经过", "value": "详见事件描述", "type": "TEXTAREA"}]', NULL, NULL, 1, '154', '2023-07-13 13:51:00', '154', '2023-07-13 13:51:00', 0, 0);
INSERT INTO ae_adverse_event (id, event_no, template_id, category, level, status, reporter_id, reporter_type, report_time, dept_id, description, form_data, current_handler_id, current_dept_id, report_mode, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (23, 'AE20230704001', 5, 'LOGISTICS', 4, 50, 154, 2, '2023-07-04 08:41:00', 200, '放疗科空调系统故障，治疗室温度超标，影响设备运行。', '[{"label": "事件发生时间", "value": "见上报时间", "type": "DATETIME"}, {"label": "事件类别", "value": "LOGISTICS", "type": "SELECT"}, {"label": "事件经过", "value": "详见事件描述", "type": "TEXTAREA"}]', NULL, NULL, 2, '154', '2023-07-04 08:41:00', '154', '2023-07-04 08:41:00', 0, 0);
INSERT INTO ae_adverse_event (id, event_no, template_id, category, level, status, reporter_id, reporter_type, report_time, dept_id, description, form_data, current_handler_id, current_dept_id, report_mode, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (24, 'AE20230706001', 5, 'LOGISTICS', 3, 80, 155, 1, '2023-07-06 14:00:00', 201, '放疗科供电系统不稳定，设备意外断电导致治疗中断。', '[{"label": "事件发生时间", "value": "见上报时间", "type": "DATETIME"}, {"label": "事件类别", "value": "LOGISTICS", "type": "SELECT"}, {"label": "事件经过", "value": "详见事件描述", "type": "TEXTAREA"}]', NULL, NULL, 1, '155', '2023-07-06 14:00:00', '155', '2023-07-06 14:00:00', 0, 0);
INSERT INTO ae_adverse_event (id, event_no, template_id, category, level, status, reporter_id, reporter_type, report_time, dept_id, description, form_data, current_handler_id, current_dept_id, report_mode, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (25, 'AE20230705001', 1, 'MEDICAL', 2, 60, 154, 1, '2023-07-05 11:18:00', 200, '患者在放疗过程中出现严重皮肤反应，III级放射性皮炎，需要暂停治疗。', '[{"label": "事件发生时间", "value": "见上报时间", "type": "DATETIME"}, {"label": "事件类别", "value": "MEDICAL", "type": "SELECT"}, {"label": "事件经过", "value": "详见事件描述", "type": "TEXTAREA"}]', NULL, NULL, 1, '154', '2023-07-05 11:18:00', '154', '2023-07-05 11:18:00', 0, 0);
INSERT INTO ae_adverse_event (id, event_no, template_id, category, level, status, reporter_id, reporter_type, report_time, dept_id, description, form_data, current_handler_id, current_dept_id, report_mode, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (26, 'AE20230702001', 4, 'DEVICE', 2, 50, 154, 1, '2023-07-02 16:05:00', 200, '放疗设备MLC叶片运动异常，影响调强放疗的实施质量。', '[{"label": "事件发生时间", "value": "见上报时间", "type": "DATETIME"}, {"label": "事件类别", "value": "DEVICE", "type": "SELECT"}, {"label": "事件经过", "value": "详见事件描述", "type": "TEXTAREA"}]', NULL, NULL, 1, '154', '2023-07-02 16:05:00', '154', '2023-07-02 16:05:00', 0, 0);
INSERT INTO ae_adverse_event (id, event_no, template_id, category, level, status, reporter_id, reporter_type, report_time, dept_id, description, form_data, current_handler_id, current_dept_id, report_mode, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (27, 'AE20230722001', 2, 'NURSING', 4, 50, 154, 1, '2023-07-22 17:36:00', 200, '放疗患者心理护理不到位，患者出现焦虑情绪，拒绝继续治疗。', '[{"label": "事件发生时间", "value": "见上报时间", "type": "DATETIME"}, {"label": "事件类别", "value": "NURSING", "type": "SELECT"}, {"label": "事件经过", "value": "详见事件描述", "type": "TEXTAREA"}]', NULL, NULL, 1, '154', '2023-07-22 17:36:00', '154', '2023-07-22 17:36:00', 0, 0);
INSERT INTO ae_adverse_event (id, event_no, template_id, category, level, status, reporter_id, reporter_type, report_time, dept_id, description, form_data, current_handler_id, current_dept_id, report_mode, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (28, 'AE20230801001', 5, 'LOGISTICS', 4, 50, 154, 1, '2023-08-01 15:39:00', 200, '放疗科供电系统不稳定，设备意外断电导致治疗中断。', '[{"label": "事件发生时间", "value": "见上报时间", "type": "DATETIME"}, {"label": "事件类别", "value": "LOGISTICS", "type": "SELECT"}, {"label": "事件经过", "value": "详见事件描述", "type": "TEXTAREA"}]', NULL, NULL, 1, '154', '2023-08-01 15:39:00', '154', '2023-08-01 15:39:00', 0, 0);
INSERT INTO ae_adverse_event (id, event_no, template_id, category, level, status, reporter_id, reporter_type, report_time, dept_id, description, form_data, current_handler_id, current_dept_id, report_mode, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (29, 'AE20230806001', 2, 'NURSING', 3, 50, 154, 1, '2023-08-06 15:53:00', 200, '患者放疗后皮肤护理不当，出现II级放射性皮炎，局部红肿明显。', '[{"label": "事件发生时间", "value": "见上报时间", "type": "DATETIME"}, {"label": "事件类别", "value": "NURSING", "type": "SELECT"}, {"label": "事件经过", "value": "详见事件描述", "type": "TEXTAREA"}]', NULL, NULL, 1, '154', '2023-08-06 15:53:00', '154', '2023-08-06 15:53:00', 0, 0);
INSERT INTO ae_adverse_event (id, event_no, template_id, category, level, status, reporter_id, reporter_type, report_time, dept_id, description, form_data, current_handler_id, current_dept_id, report_mode, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (30, 'AE20230824001', 1, 'MEDICAL', 3, 50, 155, 1, '2023-08-24 16:09:00', 201, '放疗计划审核时发现剂量计算错误，实际处方剂量与计划剂量不一致。', '[{"label": "事件发生时间", "value": "见上报时间", "type": "DATETIME"}, {"label": "事件类别", "value": "MEDICAL", "type": "SELECT"}, {"label": "事件经过", "value": "详见事件描述", "type": "TEXTAREA"}]', NULL, NULL, 1, '155', '2023-08-24 16:09:00', '155', '2023-08-24 16:09:00', 0, 0);
INSERT INTO ae_adverse_event (id, event_no, template_id, category, level, status, reporter_id, reporter_type, report_time, dept_id, description, form_data, current_handler_id, current_dept_id, report_mode, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (31, 'AE20230821001', 1, 'MEDICAL', 1, 80, 154, 1, '2023-08-21 14:53:00', 200, '患者在放疗过程中出现定位偏差，导致照射野偏移约5mm，经及时发现并纠正。', '[{"label": "事件发生时间", "value": "见上报时间", "type": "DATETIME"}, {"label": "事件类别", "value": "MEDICAL", "type": "SELECT"}, {"label": "事件经过", "value": "详见事件描述", "type": "TEXTAREA"}]', NULL, NULL, 1, '154', '2023-08-21 14:53:00', '154', '2023-08-21 14:53:00', 0, 0);
INSERT INTO ae_adverse_event (id, event_no, template_id, category, level, status, reporter_id, reporter_type, report_time, dept_id, description, form_data, current_handler_id, current_dept_id, report_mode, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (32, 'AE20230804001', 3, 'INFECTION', 2, 50, 154, 1, '2023-08-04 09:56:00', 200, '放疗科发现多重耐药菌感染病例，需要加强感染防控措施。', '[{"label": "事件发生时间", "value": "见上报时间", "type": "DATETIME"}, {"label": "事件类别", "value": "INFECTION", "type": "SELECT"}, {"label": "事件经过", "value": "详见事件描述", "type": "TEXTAREA"}]', NULL, NULL, 1, '154', '2023-08-04 09:56:00', '154', '2023-08-04 09:56:00', 0, 0);
INSERT INTO ae_adverse_event (id, event_no, template_id, category, level, status, reporter_id, reporter_type, report_time, dept_id, description, form_data, current_handler_id, current_dept_id, report_mode, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (33, 'AE20230829001', 3, 'INFECTION', 4, 50, 155, 1, '2023-08-29 13:13:00', 201, '放疗设备表面采样检出致病菌，消毒流程存在漏洞。', '[{"label": "事件发生时间", "value": "见上报时间", "type": "DATETIME"}, {"label": "事件类别", "value": "INFECTION", "type": "SELECT"}, {"label": "事件经过", "value": "详见事件描述", "type": "TEXTAREA"}]', NULL, NULL, 2, '155', '2023-08-29 13:13:00', '155', '2023-08-29 13:13:00', 0, 0);
INSERT INTO ae_adverse_event (id, event_no, template_id, category, level, status, reporter_id, reporter_type, report_time, dept_id, description, form_data, current_handler_id, current_dept_id, report_mode, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (34, 'AE20230929001', 1, 'MEDICAL', 4, 30, 155, 1, '2023-09-29 14:01:00', 201, '放射治疗中发现患者合并用药与放疗存在相互作用，需调整用药方案。', '[{"label": "事件发生时间", "value": "见上报时间", "type": "DATETIME"}, {"label": "事件类别", "value": "MEDICAL", "type": "SELECT"}, {"label": "事件经过", "value": "详见事件描述", "type": "TEXTAREA"}]', 158, 1, 2, '155', '2023-09-29 14:01:00', '155', '2023-09-29 14:01:00', 0, 0);
INSERT INTO ae_adverse_event (id, event_no, template_id, category, level, status, reporter_id, reporter_type, report_time, dept_id, description, form_data, current_handler_id, current_dept_id, report_mode, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (35, 'AE20230928001', 2, 'NURSING', 2, 50, 155, 1, '2023-09-28 08:54:00', 201, '患者放疗后皮肤护理不当，出现II级放射性皮炎，局部红肿明显。', '[{"label": "事件发生时间", "value": "见上报时间", "type": "DATETIME"}, {"label": "事件类别", "value": "NURSING", "type": "SELECT"}, {"label": "事件经过", "value": "详见事件描述", "type": "TEXTAREA"}]', NULL, NULL, 2, '155', '2023-09-28 08:54:00', '155', '2023-09-28 08:54:00', 0, 0);
INSERT INTO ae_adverse_event (id, event_no, template_id, category, level, status, reporter_id, reporter_type, report_time, dept_id, description, form_data, current_handler_id, current_dept_id, report_mode, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (36, 'AE20230925001', 2, 'NURSING', 3, 50, 155, 2, '2023-09-25 12:22:00', 201, '患者放疗后皮肤护理不当，出现II级放射性皮炎，局部红肿明显。', '[{"label": "事件发生时间", "value": "见上报时间", "type": "DATETIME"}, {"label": "事件类别", "value": "NURSING", "type": "SELECT"}, {"label": "事件经过", "value": "详见事件描述", "type": "TEXTAREA"}]', NULL, NULL, 1, '155', '2023-09-25 12:22:00', '155', '2023-09-25 12:22:00', 0, 0);
INSERT INTO ae_adverse_event (id, event_no, template_id, category, level, status, reporter_id, reporter_type, report_time, dept_id, description, form_data, current_handler_id, current_dept_id, report_mode, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (37, 'AE20230920001', 3, 'INFECTION', 3, 50, 154, 1, '2023-09-20 14:22:00', 200, '放疗科医护人员手卫生依从性检查发现不合格，需要整改。', '[{"label": "事件发生时间", "value": "见上报时间", "type": "DATETIME"}, {"label": "事件类别", "value": "INFECTION", "type": "SELECT"}, {"label": "事件经过", "value": "详见事件描述", "type": "TEXTAREA"}]', NULL, NULL, 1, '154', '2023-09-20 14:22:00', '154', '2023-09-20 14:22:00', 0, 0);
INSERT INTO ae_adverse_event (id, event_no, template_id, category, level, status, reporter_id, reporter_type, report_time, dept_id, description, form_data, current_handler_id, current_dept_id, report_mode, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (38, 'AE20230922001', 2, 'NURSING', 2, 50, 155, 1, '2023-09-22 18:12:00', 201, '患者放疗后出现严重恶心呕吐，护理记录不完整，未及时报告医生。', '[{"label": "事件发生时间", "value": "见上报时间", "type": "DATETIME"}, {"label": "事件类别", "value": "NURSING", "type": "SELECT"}, {"label": "事件经过", "value": "详见事件描述", "type": "TEXTAREA"}]', NULL, NULL, 1, '155', '2023-09-22 18:12:00', '155', '2023-09-22 18:12:00', 0, 0);
INSERT INTO ae_adverse_event (id, event_no, template_id, category, level, status, reporter_id, reporter_type, report_time, dept_id, description, form_data, current_handler_id, current_dept_id, report_mode, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (39, 'AE20230910001', 1, 'MEDICAL', 4, 60, 155, 1, '2023-09-10 16:08:00', 201, '患者在放疗过程中出现定位偏差，导致照射野偏移约5mm，经及时发现并纠正。', '[{"label": "事件发生时间", "value": "见上报时间", "type": "DATETIME"}, {"label": "事件类别", "value": "MEDICAL", "type": "SELECT"}, {"label": "事件经过", "value": "详见事件描述", "type": "TEXTAREA"}]', NULL, NULL, 2, '155', '2023-09-10 16:08:00', '155', '2023-09-10 16:08:00', 0, 0);
INSERT INTO ae_adverse_event (id, event_no, template_id, category, level, status, reporter_id, reporter_type, report_time, dept_id, description, form_data, current_handler_id, current_dept_id, report_mode, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (40, 'AE20231010001', 3, 'INFECTION', 3, 50, 155, 1, '2023-10-10 11:27:00', 201, '放疗设备表面采样检出致病菌，消毒流程存在漏洞。', '[{"label": "事件发生时间", "value": "见上报时间", "type": "DATETIME"}, {"label": "事件类别", "value": "INFECTION", "type": "SELECT"}, {"label": "事件经过", "value": "详见事件描述", "type": "TEXTAREA"}]', NULL, NULL, 1, '155', '2023-10-10 11:27:00', '155', '2023-10-10 11:27:00', 0, 0);
INSERT INTO ae_adverse_event (id, event_no, template_id, category, level, status, reporter_id, reporter_type, report_time, dept_id, description, form_data, current_handler_id, current_dept_id, report_mode, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (41, 'AE20231022001', 2, 'NURSING', 3, 50, 155, 1, '2023-10-22 09:18:00', 201, '患者放疗后皮肤护理不当，出现II级放射性皮炎，局部红肿明显。', '[{"label": "事件发生时间", "value": "见上报时间", "type": "DATETIME"}, {"label": "事件类别", "value": "NURSING", "type": "SELECT"}, {"label": "事件经过", "value": "详见事件描述", "type": "TEXTAREA"}]', NULL, NULL, 2, '155', '2023-10-22 09:18:00', '155', '2023-10-22 09:18:00', 0, 0);
INSERT INTO ae_adverse_event (id, event_no, template_id, category, level, status, reporter_id, reporter_type, report_time, dept_id, description, form_data, current_handler_id, current_dept_id, report_mode, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (42, 'AE20231008001', 4, 'DEVICE', 2, 80, 155, 2, '2023-10-08 15:39:00', 201, '放疗定位CT图像质量下降，影响靶区勾画精度。', '[{"label": "事件发生时间", "value": "见上报时间", "type": "DATETIME"}, {"label": "事件类别", "value": "DEVICE", "type": "SELECT"}, {"label": "事件经过", "value": "详见事件描述", "type": "TEXTAREA"}]', NULL, NULL, 1, '155', '2023-10-08 15:39:00', '155', '2023-10-08 15:39:00', 0, 0);
INSERT INTO ae_adverse_event (id, event_no, template_id, category, level, status, reporter_id, reporter_type, report_time, dept_id, description, form_data, current_handler_id, current_dept_id, report_mode, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (43, 'AE20231021001', 3, 'INFECTION', 4, 40, 154, 1, '2023-10-21 08:57:00', 200, '放疗科发现多重耐药菌感染病例，需要加强感染防控措施。', '[{"label": "事件发生时间", "value": "见上报时间", "type": "DATETIME"}, {"label": "事件类别", "value": "INFECTION", "type": "SELECT"}, {"label": "事件经过", "value": "详见事件描述", "type": "TEXTAREA"}]', 159, 206, 1, '154', '2023-10-21 08:57:00', '154', '2023-10-21 08:57:00', 0, 0);
INSERT INTO ae_adverse_event (id, event_no, template_id, category, level, status, reporter_id, reporter_type, report_time, dept_id, description, form_data, current_handler_id, current_dept_id, report_mode, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (44, 'AE20231015001', 2, 'NURSING', 3, 60, 155, 2, '2023-10-15 10:51:00', 201, '放疗患者心理护理不到位，患者出现焦虑情绪，拒绝继续治疗。', '[{"label": "事件发生时间", "value": "见上报时间", "type": "DATETIME"}, {"label": "事件类别", "value": "NURSING", "type": "SELECT"}, {"label": "事件经过", "value": "详见事件描述", "type": "TEXTAREA"}]', NULL, NULL, 2, '155', '2023-10-15 10:51:00', '155', '2023-10-15 10:51:00', 0, 0);
INSERT INTO ae_adverse_event (id, event_no, template_id, category, level, status, reporter_id, reporter_type, report_time, dept_id, description, form_data, current_handler_id, current_dept_id, report_mode, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (45, 'AE20231030001', 4, 'DEVICE', 4, 30, 155, 1, '2023-10-30 16:28:00', 201, '放疗定位CT图像质量下降，影响靶区勾画精度。', '[{"label": "事件发生时间", "value": "见上报时间", "type": "DATETIME"}, {"label": "事件类别", "value": "DEVICE", "type": "SELECT"}, {"label": "事件经过", "value": "详见事件描述", "type": "TEXTAREA"}]', 158, 1, 1, '155', '2023-10-30 16:28:00', '155', '2023-10-30 16:28:00', 0, 0);
INSERT INTO ae_adverse_event (id, event_no, template_id, category, level, status, reporter_id, reporter_type, report_time, dept_id, description, form_data, current_handler_id, current_dept_id, report_mode, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (46, 'AE20231009001', 3, 'INFECTION', 3, 50, 155, 1, '2023-10-09 15:04:00', 201, '放疗科发现多重耐药菌感染病例，需要加强感染防控措施。', '[{"label": "事件发生时间", "value": "见上报时间", "type": "DATETIME"}, {"label": "事件类别", "value": "INFECTION", "type": "SELECT"}, {"label": "事件经过", "value": "详见事件描述", "type": "TEXTAREA"}]', NULL, NULL, 1, '155', '2023-10-09 15:04:00', '155', '2023-10-09 15:04:00', 0, 0);
INSERT INTO ae_adverse_event (id, event_no, template_id, category, level, status, reporter_id, reporter_type, report_time, dept_id, description, form_data, current_handler_id, current_dept_id, report_mode, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (47, 'AE20231114001', 2, 'NURSING', 2, 50, 155, 1, '2023-11-14 13:34:00', 201, '放疗等候区患者跌倒，造成软组织损伤，需要进一步检查处理。', '[{"label": "事件发生时间", "value": "见上报时间", "type": "DATETIME"}, {"label": "事件类别", "value": "NURSING", "type": "SELECT"}, {"label": "事件经过", "value": "详见事件描述", "type": "TEXTAREA"}]', NULL, NULL, 1, '155', '2023-11-14 13:34:00', '155', '2023-11-14 13:34:00', 0, 0);
INSERT INTO ae_adverse_event (id, event_no, template_id, category, level, status, reporter_id, reporter_type, report_time, dept_id, description, form_data, current_handler_id, current_dept_id, report_mode, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (48, 'AE20231110001', 4, 'DEVICE', 4, 50, 154, 1, '2023-11-10 14:54:00', 200, '放疗定位CT图像质量下降，影响靶区勾画精度。', '[{"label": "事件发生时间", "value": "见上报时间", "type": "DATETIME"}, {"label": "事件类别", "value": "DEVICE", "type": "SELECT"}, {"label": "事件经过", "value": "详见事件描述", "type": "TEXTAREA"}]', NULL, NULL, 1, '154', '2023-11-10 14:54:00', '154', '2023-11-10 14:54:00', 0, 0);
INSERT INTO ae_adverse_event (id, event_no, template_id, category, level, status, reporter_id, reporter_type, report_time, dept_id, description, form_data, current_handler_id, current_dept_id, report_mode, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (49, 'AE20231127001', 1, 'MEDICAL', 3, 70, 154, 2, '2023-11-27 15:58:00', 200, '放疗计划中危及器官限量超标，经物理师复核后重新优化计划。', '[{"label": "事件发生时间", "value": "见上报时间", "type": "DATETIME"}, {"label": "事件类别", "value": "MEDICAL", "type": "SELECT"}, {"label": "事件经过", "value": "详见事件描述", "type": "TEXTAREA"}]', NULL, NULL, 1, '154', '2023-11-27 15:58:00', '154', '2023-11-27 15:58:00', 0, 0);
INSERT INTO ae_adverse_event (id, event_no, template_id, category, level, status, reporter_id, reporter_type, report_time, dept_id, description, form_data, current_handler_id, current_dept_id, report_mode, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (50, 'AE20231106001', 2, 'NURSING', 3, 50, 155, 1, '2023-11-06 08:16:00', 201, '放疗患者静脉通路维护不当，导致药物外渗，局部肿胀。', '[{"label": "事件发生时间", "value": "见上报时间", "type": "DATETIME"}, {"label": "事件类别", "value": "NURSING", "type": "SELECT"}, {"label": "事件经过", "value": "详见事件描述", "type": "TEXTAREA"}]', NULL, NULL, 2, '155', '2023-11-06 08:16:00', '155', '2023-11-06 08:16:00', 0, 0);
INSERT INTO ae_adverse_event (id, event_no, template_id, category, level, status, reporter_id, reporter_type, report_time, dept_id, description, form_data, current_handler_id, current_dept_id, report_mode, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (51, 'AE20231101001', 5, 'LOGISTICS', 3, 20, 154, 1, '2023-11-01 16:03:00', 200, '放疗科空调系统故障，治疗室温度超标，影响设备运行。', '[{"label": "事件发生时间", "value": "见上报时间", "type": "DATETIME"}, {"label": "事件类别", "value": "LOGISTICS", "type": "SELECT"}, {"label": "事件经过", "value": "详见事件描述", "type": "TEXTAREA"}]', 157, 207, 1, '154', '2023-11-01 16:03:00', '154', '2023-11-01 16:03:00', 0, 0);
INSERT INTO ae_adverse_event (id, event_no, template_id, category, level, status, reporter_id, reporter_type, report_time, dept_id, description, form_data, current_handler_id, current_dept_id, report_mode, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (52, 'AE20231108001', 3, 'INFECTION', 3, 50, 154, 1, '2023-11-08 10:30:00', 200, '放疗设备表面采样检出致病菌，消毒流程存在漏洞。', '[{"label": "事件发生时间", "value": "见上报时间", "type": "DATETIME"}, {"label": "事件类别", "value": "INFECTION", "type": "SELECT"}, {"label": "事件经过", "value": "详见事件描述", "type": "TEXTAREA"}]', NULL, NULL, 1, '154', '2023-11-08 10:30:00', '154', '2023-11-08 10:30:00', 0, 0);
INSERT INTO ae_adverse_event (id, event_no, template_id, category, level, status, reporter_id, reporter_type, report_time, dept_id, description, form_data, current_handler_id, current_dept_id, report_mode, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (53, 'AE20231110002', 1, 'MEDICAL', 3, 50, 155, 1, '2023-11-10 09:37:00', 201, '患者放疗计划中靶区勾画存在争议，多学科会诊后修改了治疗方案。', '[{"label": "事件发生时间", "value": "见上报时间", "type": "DATETIME"}, {"label": "事件类别", "value": "MEDICAL", "type": "SELECT"}, {"label": "事件经过", "value": "详见事件描述", "type": "TEXTAREA"}]', NULL, NULL, 1, '155', '2023-11-10 09:37:00', '155', '2023-11-10 09:37:00', 0, 0);
INSERT INTO ae_adverse_event (id, event_no, template_id, category, level, status, reporter_id, reporter_type, report_time, dept_id, description, form_data, current_handler_id, current_dept_id, report_mode, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (54, 'AE20231220001', 5, 'LOGISTICS', 4, 50, 155, 1, '2023-12-20 09:50:00', 201, '放疗科供电系统不稳定，设备意外断电导致治疗中断。', '[{"label": "事件发生时间", "value": "见上报时间", "type": "DATETIME"}, {"label": "事件类别", "value": "LOGISTICS", "type": "SELECT"}, {"label": "事件经过", "value": "详见事件描述", "type": "TEXTAREA"}]', NULL, NULL, 1, '155', '2023-12-20 09:50:00', '155', '2023-12-20 09:50:00', 0, 0);
INSERT INTO ae_adverse_event (id, event_no, template_id, category, level, status, reporter_id, reporter_type, report_time, dept_id, description, form_data, current_handler_id, current_dept_id, report_mode, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (55, 'AE20231204001', 2, 'NURSING', 4, 50, 154, 1, '2023-12-04 14:23:00', 200, '放疗患者静脉通路维护不当，导致药物外渗，局部肿胀。', '[{"label": "事件发生时间", "value": "见上报时间", "type": "DATETIME"}, {"label": "事件类别", "value": "NURSING", "type": "SELECT"}, {"label": "事件经过", "value": "详见事件描述", "type": "TEXTAREA"}]', NULL, NULL, 1, '154', '2023-12-04 14:23:00', '154', '2023-12-04 14:23:00', 0, 0);
INSERT INTO ae_adverse_event (id, event_no, template_id, category, level, status, reporter_id, reporter_type, report_time, dept_id, description, form_data, current_handler_id, current_dept_id, report_mode, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (56, 'AE20231215001', 3, 'INFECTION', 3, 50, 154, 1, '2023-12-15 14:52:00', 200, '放疗患者PICC置管处出现感染征象，需要抗感染治疗。', '[{"label": "事件发生时间", "value": "见上报时间", "type": "DATETIME"}, {"label": "事件类别", "value": "INFECTION", "type": "SELECT"}, {"label": "事件经过", "value": "详见事件描述", "type": "TEXTAREA"}]', NULL, NULL, 1, '154', '2023-12-15 14:52:00', '154', '2023-12-15 14:52:00', 0, 0);
INSERT INTO ae_adverse_event (id, event_no, template_id, category, level, status, reporter_id, reporter_type, report_time, dept_id, description, form_data, current_handler_id, current_dept_id, report_mode, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (57, 'AE20231211001', 4, 'DEVICE', 2, 50, 154, 1, '2023-12-11 08:31:00', 200, '放疗定位CT图像质量下降，影响靶区勾画精度。', '[{"label": "事件发生时间", "value": "见上报时间", "type": "DATETIME"}, {"label": "事件类别", "value": "DEVICE", "type": "SELECT"}, {"label": "事件经过", "value": "详见事件描述", "type": "TEXTAREA"}]', NULL, NULL, 1, '154', '2023-12-11 08:31:00', '154', '2023-12-11 08:31:00', 0, 0);
INSERT INTO ae_adverse_event (id, event_no, template_id, category, level, status, reporter_id, reporter_type, report_time, dept_id, description, form_data, current_handler_id, current_dept_id, report_mode, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (58, 'AE20231203001', 2, 'NURSING', 3, 50, 154, 1, '2023-12-03 11:46:00', 200, '患者放疗后出现严重恶心呕吐，护理记录不完整，未及时报告医生。', '[{"label": "事件发生时间", "value": "见上报时间", "type": "DATETIME"}, {"label": "事件类别", "value": "NURSING", "type": "SELECT"}, {"label": "事件经过", "value": "详见事件描述", "type": "TEXTAREA"}]', NULL, NULL, 1, '154', '2023-12-03 11:46:00', '154', '2023-12-03 11:46:00', 0, 0);
INSERT INTO ae_adverse_event (id, event_no, template_id, category, level, status, reporter_id, reporter_type, report_time, dept_id, description, form_data, current_handler_id, current_dept_id, report_mode, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (59, 'AE20231208001', 2, 'NURSING', 3, 50, 155, 1, '2023-12-08 12:42:00', 201, '患者放疗后皮肤护理不当，出现II级放射性皮炎，局部红肿明显。', '[{"label": "事件发生时间", "value": "见上报时间", "type": "DATETIME"}, {"label": "事件类别", "value": "NURSING", "type": "SELECT"}, {"label": "事件经过", "value": "详见事件描述", "type": "TEXTAREA"}]', NULL, NULL, 1, '155', '2023-12-08 12:42:00', '155', '2023-12-08 12:42:00', 0, 0);
INSERT INTO ae_adverse_event (id, event_no, template_id, category, level, status, reporter_id, reporter_type, report_time, dept_id, description, form_data, current_handler_id, current_dept_id, report_mode, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (60, 'AE20231224001', 1, 'MEDICAL', 3, 50, 154, 1, '2023-12-24 11:20:00', 200, '放疗计划审核时发现剂量计算错误，实际处方剂量与计划剂量不一致。', '[{"label": "事件发生时间", "value": "见上报时间", "type": "DATETIME"}, {"label": "事件类别", "value": "MEDICAL", "type": "SELECT"}, {"label": "事件经过", "value": "详见事件描述", "type": "TEXTAREA"}]', NULL, NULL, 1, '154', '2023-12-24 11:20:00', '154', '2023-12-24 11:20:00', 0, 0);
INSERT INTO ae_adverse_event (id, event_no, template_id, category, level, status, reporter_id, reporter_type, report_time, dept_id, description, form_data, current_handler_id, current_dept_id, report_mode, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (61, 'AE20231227001', 1, 'MEDICAL', 2, 50, 154, 1, '2023-12-27 11:18:00', 200, '放疗计划中危及器官限量超标，经物理师复核后重新优化计划。', '[{"label": "事件发生时间", "value": "见上报时间", "type": "DATETIME"}, {"label": "事件类别", "value": "MEDICAL", "type": "SELECT"}, {"label": "事件经过", "value": "详见事件描述", "type": "TEXTAREA"}]', NULL, NULL, 1, '154', '2023-12-27 11:18:00', '154', '2023-12-27 11:18:00', 0, 0);
INSERT INTO ae_adverse_event (id, event_no, template_id, category, level, status, reporter_id, reporter_type, report_time, dept_id, description, form_data, current_handler_id, current_dept_id, report_mode, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (62, 'AE20240128001', 1, 'MEDICAL', 3, 50, 155, 1, '2024-01-28 08:36:00', 201, '放疗计划审核时发现剂量计算错误，实际处方剂量与计划剂量不一致。', '[{"label": "事件发生时间", "value": "见上报时间", "type": "DATETIME"}, {"label": "事件类别", "value": "MEDICAL", "type": "SELECT"}, {"label": "事件经过", "value": "详见事件描述", "type": "TEXTAREA"}]', NULL, NULL, 1, '155', '2024-01-28 08:36:00', '155', '2024-01-28 08:36:00', 0, 0);
INSERT INTO ae_adverse_event (id, event_no, template_id, category, level, status, reporter_id, reporter_type, report_time, dept_id, description, form_data, current_handler_id, current_dept_id, report_mode, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (63, 'AE20240119001', 1, 'MEDICAL', 2, 60, 155, 1, '2024-01-19 18:43:00', 201, '放疗设备晨检时发现输出剂量异常，偏差超过3%，需停机检修。', '[{"label": "事件发生时间", "value": "见上报时间", "type": "DATETIME"}, {"label": "事件类别", "value": "MEDICAL", "type": "SELECT"}, {"label": "事件经过", "value": "详见事件描述", "type": "TEXTAREA"}]', NULL, NULL, 1, '155', '2024-01-19 18:43:00', '155', '2024-01-19 18:43:00', 0, 0);
INSERT INTO ae_adverse_event (id, event_no, template_id, category, level, status, reporter_id, reporter_type, report_time, dept_id, description, form_data, current_handler_id, current_dept_id, report_mode, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (64, 'AE20240125001', 2, 'NURSING', 3, 60, 155, 1, '2024-01-25 16:24:00', 201, '放疗前患者身份核对出现错误，差点给错误患者执行治疗。', '[{"label": "事件发生时间", "value": "见上报时间", "type": "DATETIME"}, {"label": "事件类别", "value": "NURSING", "type": "SELECT"}, {"label": "事件经过", "value": "详见事件描述", "type": "TEXTAREA"}]', NULL, NULL, 1, '155', '2024-01-25 16:24:00', '155', '2024-01-25 16:24:00', 0, 0);
INSERT INTO ae_adverse_event (id, event_no, template_id, category, level, status, reporter_id, reporter_type, report_time, dept_id, description, form_data, current_handler_id, current_dept_id, report_mode, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (65, 'AE20240121001', 3, 'INFECTION', 2, 50, 154, 1, '2024-01-21 11:16:00', 200, '放疗等候区通风系统故障，空气质量检测不达标。', '[{"label": "事件发生时间", "value": "见上报时间", "type": "DATETIME"}, {"label": "事件类别", "value": "INFECTION", "type": "SELECT"}, {"label": "事件经过", "value": "详见事件描述", "type": "TEXTAREA"}]', NULL, NULL, 1, '154', '2024-01-21 11:16:00', '154', '2024-01-21 11:16:00', 0, 0);
INSERT INTO ae_adverse_event (id, event_no, template_id, category, level, status, reporter_id, reporter_type, report_time, dept_id, description, form_data, current_handler_id, current_dept_id, report_mode, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (66, 'AE20240123001', 3, 'INFECTION', 4, 70, 154, 1, '2024-01-23 15:04:00', 200, '放疗科发现多重耐药菌感染病例，需要加强感染防控措施。', '[{"label": "事件发生时间", "value": "见上报时间", "type": "DATETIME"}, {"label": "事件类别", "value": "INFECTION", "type": "SELECT"}, {"label": "事件经过", "value": "详见事件描述", "type": "TEXTAREA"}]', NULL, NULL, 1, '154', '2024-01-23 15:04:00', '154', '2024-01-23 15:04:00', 0, 0);
INSERT INTO ae_adverse_event (id, event_no, template_id, category, level, status, reporter_id, reporter_type, report_time, dept_id, description, form_data, current_handler_id, current_dept_id, report_mode, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (67, 'AE20240102001', 2, 'NURSING', 4, 50, 155, 1, '2024-01-02 10:50:00', 201, '放疗患者静脉通路维护不当，导致药物外渗，局部肿胀。', '[{"label": "事件发生时间", "value": "见上报时间", "type": "DATETIME"}, {"label": "事件类别", "value": "NURSING", "type": "SELECT"}, {"label": "事件经过", "value": "详见事件描述", "type": "TEXTAREA"}]', NULL, NULL, 1, '155', '2024-01-02 10:50:00', '155', '2024-01-02 10:50:00', 0, 0);
INSERT INTO ae_adverse_event (id, event_no, template_id, category, level, status, reporter_id, reporter_type, report_time, dept_id, description, form_data, current_handler_id, current_dept_id, report_mode, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (68, 'AE20240220001', 2, 'NURSING', 3, 70, 155, 1, '2024-02-20 08:56:00', 201, '患者放疗后皮肤护理不当，出现II级放射性皮炎，局部红肿明显。', '[{"label": "事件发生时间", "value": "见上报时间", "type": "DATETIME"}, {"label": "事件类别", "value": "NURSING", "type": "SELECT"}, {"label": "事件经过", "value": "详见事件描述", "type": "TEXTAREA"}]', NULL, NULL, 1, '155', '2024-02-20 08:56:00', '155', '2024-02-20 08:56:00', 0, 0);
INSERT INTO ae_adverse_event (id, event_no, template_id, category, level, status, reporter_id, reporter_type, report_time, dept_id, description, form_data, current_handler_id, current_dept_id, report_mode, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (69, 'AE20240225001', 1, 'MEDICAL', 1, 50, 154, 1, '2024-02-25 18:52:00', 200, '放疗计划审核时发现剂量计算错误，实际处方剂量与计划剂量不一致。', '[{"label": "事件发生时间", "value": "见上报时间", "type": "DATETIME"}, {"label": "事件类别", "value": "MEDICAL", "type": "SELECT"}, {"label": "事件经过", "value": "详见事件描述", "type": "TEXTAREA"}]', NULL, NULL, 1, '154', '2024-02-25 18:52:00', '154', '2024-02-25 18:52:00', 0, 0);
INSERT INTO ae_adverse_event (id, event_no, template_id, category, level, status, reporter_id, reporter_type, report_time, dept_id, description, form_data, current_handler_id, current_dept_id, report_mode, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (70, 'AE20240216001', 2, 'NURSING', 4, 50, 154, 1, '2024-02-16 13:26:00', 200, '放疗患者静脉通路维护不当，导致药物外渗，局部肿胀。', '[{"label": "事件发生时间", "value": "见上报时间", "type": "DATETIME"}, {"label": "事件类别", "value": "NURSING", "type": "SELECT"}, {"label": "事件经过", "value": "详见事件描述", "type": "TEXTAREA"}]', NULL, NULL, 1, '154', '2024-02-16 13:26:00', '154', '2024-02-16 13:26:00', 0, 0);
INSERT INTO ae_adverse_event (id, event_no, template_id, category, level, status, reporter_id, reporter_type, report_time, dept_id, description, form_data, current_handler_id, current_dept_id, report_mode, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (71, 'AE20240203001', 2, 'NURSING', 4, 50, 155, 2, '2024-02-03 13:16:00', 201, '放疗期间患者营养评估不到位，体重下降超过10%，影响治疗效果。', '[{"label": "事件发生时间", "value": "见上报时间", "type": "DATETIME"}, {"label": "事件类别", "value": "NURSING", "type": "SELECT"}, {"label": "事件经过", "value": "详见事件描述", "type": "TEXTAREA"}]', NULL, NULL, 2, '155', '2024-02-03 13:16:00', '155', '2024-02-03 13:16:00', 0, 0);
INSERT INTO ae_adverse_event (id, event_no, template_id, category, level, status, reporter_id, reporter_type, report_time, dept_id, description, form_data, current_handler_id, current_dept_id, report_mode, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (72, 'AE20240212001', 2, 'NURSING', 3, 50, 154, 1, '2024-02-12 17:48:00', 200, '患者放疗后出现严重恶心呕吐，护理记录不完整，未及时报告医生。', '[{"label": "事件发生时间", "value": "见上报时间", "type": "DATETIME"}, {"label": "事件类别", "value": "NURSING", "type": "SELECT"}, {"label": "事件经过", "value": "详见事件描述", "type": "TEXTAREA"}]', NULL, NULL, 1, '154', '2024-02-12 17:48:00', '154', '2024-02-12 17:48:00', 0, 0);
INSERT INTO ae_adverse_event (id, event_no, template_id, category, level, status, reporter_id, reporter_type, report_time, dept_id, description, form_data, current_handler_id, current_dept_id, report_mode, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (73, 'AE20240220002', 1, 'MEDICAL', 3, 50, 155, 1, '2024-02-20 11:45:00', 201, '放疗计划中危及器官限量超标，经物理师复核后重新优化计划。', '[{"label": "事件发生时间", "value": "见上报时间", "type": "DATETIME"}, {"label": "事件类别", "value": "MEDICAL", "type": "SELECT"}, {"label": "事件经过", "value": "详见事件描述", "type": "TEXTAREA"}]', NULL, NULL, 2, '155', '2024-02-20 11:45:00', '155', '2024-02-20 11:45:00', 0, 0);
INSERT INTO ae_adverse_event (id, event_no, template_id, category, level, status, reporter_id, reporter_type, report_time, dept_id, description, form_data, current_handler_id, current_dept_id, report_mode, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (74, 'AE20240310001', 1, 'MEDICAL', 4, 50, 155, 1, '2024-03-10 16:45:00', 201, '放疗计划审核时发现剂量计算错误，实际处方剂量与计划剂量不一致。', '[{"label": "事件发生时间", "value": "见上报时间", "type": "DATETIME"}, {"label": "事件类别", "value": "MEDICAL", "type": "SELECT"}, {"label": "事件经过", "value": "详见事件描述", "type": "TEXTAREA"}]', NULL, NULL, 1, '155', '2024-03-10 16:45:00', '155', '2024-03-10 16:45:00', 0, 0);
INSERT INTO ae_adverse_event (id, event_no, template_id, category, level, status, reporter_id, reporter_type, report_time, dept_id, description, form_data, current_handler_id, current_dept_id, report_mode, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (75, 'AE20240309001', 1, 'INFO', 3, 60, 154, 1, '2024-03-09 14:21:00', 200, '放疗信息系统与HIS系统接口异常，患者信息同步失败。', '[{"label": "事件发生时间", "value": "见上报时间", "type": "DATETIME"}, {"label": "事件类别", "value": "INFO", "type": "SELECT"}, {"label": "事件经过", "value": "详见事件描述", "type": "TEXTAREA"}]', NULL, NULL, 1, '154', '2024-03-09 14:21:00', '154', '2024-03-09 14:21:00', 0, 0);
INSERT INTO ae_adverse_event (id, event_no, template_id, category, level, status, reporter_id, reporter_type, report_time, dept_id, description, form_data, current_handler_id, current_dept_id, report_mode, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (76, 'AE20240315001', 2, 'NURSING', 3, 50, 155, 1, '2024-03-15 16:30:00', 201, '放疗患者心理护理不到位，患者出现焦虑情绪，拒绝继续治疗。', '[{"label": "事件发生时间", "value": "见上报时间", "type": "DATETIME"}, {"label": "事件类别", "value": "NURSING", "type": "SELECT"}, {"label": "事件经过", "value": "详见事件描述", "type": "TEXTAREA"}]', NULL, NULL, 1, '155', '2024-03-15 16:30:00', '155', '2024-03-15 16:30:00', 0, 0);
INSERT INTO ae_adverse_event (id, event_no, template_id, category, level, status, reporter_id, reporter_type, report_time, dept_id, description, form_data, current_handler_id, current_dept_id, report_mode, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (77, 'AE20240314001', 3, 'INFECTION', 4, 20, 155, 1, '2024-03-14 08:20:00', 201, '放疗科医护人员手卫生依从性检查发现不合格，需要整改。', '[{"label": "事件发生时间", "value": "见上报时间", "type": "DATETIME"}, {"label": "事件类别", "value": "INFECTION", "type": "SELECT"}, {"label": "事件经过", "value": "详见事件描述", "type": "TEXTAREA"}]', 157, 206, 1, '155', '2024-03-14 08:20:00', '155', '2024-03-14 08:20:00', 0, 0);
INSERT INTO ae_adverse_event (id, event_no, template_id, category, level, status, reporter_id, reporter_type, report_time, dept_id, description, form_data, current_handler_id, current_dept_id, report_mode, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (78, 'AE20240331001', 4, 'DEVICE', 4, 50, 155, 1, '2024-03-31 17:21:00', 201, '直线加速器输出剂量偏差超标，需要紧急停机检修。', '[{"label": "事件发生时间", "value": "见上报时间", "type": "DATETIME"}, {"label": "事件类别", "value": "DEVICE", "type": "SELECT"}, {"label": "事件经过", "value": "详见事件描述", "type": "TEXTAREA"}]', NULL, NULL, 2, '155', '2024-03-31 17:21:00', '155', '2024-03-31 17:21:00', 0, 0);
INSERT INTO ae_adverse_event (id, event_no, template_id, category, level, status, reporter_id, reporter_type, report_time, dept_id, description, form_data, current_handler_id, current_dept_id, report_mode, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (79, 'AE20240316001', 2, 'NURSING', 3, 50, 154, 2, '2024-03-16 12:21:00', 200, '放疗患者心理护理不到位，患者出现焦虑情绪，拒绝继续治疗。', '[{"label": "事件发生时间", "value": "见上报时间", "type": "DATETIME"}, {"label": "事件类别", "value": "NURSING", "type": "SELECT"}, {"label": "事件经过", "value": "详见事件描述", "type": "TEXTAREA"}]', NULL, NULL, 2, '154', '2024-03-16 12:21:00', '154', '2024-03-16 12:21:00', 0, 0);
INSERT INTO ae_adverse_event (id, event_no, template_id, category, level, status, reporter_id, reporter_type, report_time, dept_id, description, form_data, current_handler_id, current_dept_id, report_mode, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (80, 'AE20240316002', 2, 'NURSING', 3, 50, 155, 2, '2024-03-16 16:02:00', 201, '放疗患者静脉通路维护不当，导致药物外渗，局部肿胀。', '[{"label": "事件发生时间", "value": "见上报时间", "type": "DATETIME"}, {"label": "事件类别", "value": "NURSING", "type": "SELECT"}, {"label": "事件经过", "value": "详见事件描述", "type": "TEXTAREA"}]', NULL, NULL, 1, '155', '2024-03-16 16:02:00', '155', '2024-03-16 16:02:00', 0, 0);
INSERT INTO ae_adverse_event (id, event_no, template_id, category, level, status, reporter_id, reporter_type, report_time, dept_id, description, form_data, current_handler_id, current_dept_id, report_mode, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (81, 'AE20240306001', 1, 'MEDICAL', 3, 50, 154, 1, '2024-03-06 12:57:00', 200, '患者在放疗过程中出现严重皮肤反应，III级放射性皮炎，需要暂停治疗。', '[{"label": "事件发生时间", "value": "见上报时间", "type": "DATETIME"}, {"label": "事件类别", "value": "MEDICAL", "type": "SELECT"}, {"label": "事件经过", "value": "详见事件描述", "type": "TEXTAREA"}]', NULL, NULL, 1, '154', '2024-03-06 12:57:00', '154', '2024-03-06 12:57:00', 0, 0);
INSERT INTO ae_adverse_event (id, event_no, template_id, category, level, status, reporter_id, reporter_type, report_time, dept_id, description, form_data, current_handler_id, current_dept_id, report_mode, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (82, 'AE20240403001', 2, 'NURSING', 4, 50, 155, 2, '2024-04-03 17:55:00', 201, '放疗患者心理护理不到位，患者出现焦虑情绪，拒绝继续治疗。', '[{"label": "事件发生时间", "value": "见上报时间", "type": "DATETIME"}, {"label": "事件类别", "value": "NURSING", "type": "SELECT"}, {"label": "事件经过", "value": "详见事件描述", "type": "TEXTAREA"}]', NULL, NULL, 1, '155', '2024-04-03 17:55:00', '155', '2024-04-03 17:55:00', 0, 0);
INSERT INTO ae_adverse_event (id, event_no, template_id, category, level, status, reporter_id, reporter_type, report_time, dept_id, description, form_data, current_handler_id, current_dept_id, report_mode, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (83, 'AE20240415001', 2, 'NURSING', 2, 50, 155, 2, '2024-04-15 12:43:00', 201, '放疗患者心理护理不到位，患者出现焦虑情绪，拒绝继续治疗。', '[{"label": "事件发生时间", "value": "见上报时间", "type": "DATETIME"}, {"label": "事件类别", "value": "NURSING", "type": "SELECT"}, {"label": "事件经过", "value": "详见事件描述", "type": "TEXTAREA"}]', NULL, NULL, 1, '155', '2024-04-15 12:43:00', '155', '2024-04-15 12:43:00', 0, 0);
INSERT INTO ae_adverse_event (id, event_no, template_id, category, level, status, reporter_id, reporter_type, report_time, dept_id, description, form_data, current_handler_id, current_dept_id, report_mode, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (84, 'AE20240416001', 2, 'NURSING', 3, 50, 155, 2, '2024-04-16 09:15:00', 201, '患者放疗后出现严重恶心呕吐，护理记录不完整，未及时报告医生。', '[{"label": "事件发生时间", "value": "见上报时间", "type": "DATETIME"}, {"label": "事件类别", "value": "NURSING", "type": "SELECT"}, {"label": "事件经过", "value": "详见事件描述", "type": "TEXTAREA"}]', NULL, NULL, 1, '155', '2024-04-16 09:15:00', '155', '2024-04-16 09:15:00', 0, 0);
INSERT INTO ae_adverse_event (id, event_no, template_id, category, level, status, reporter_id, reporter_type, report_time, dept_id, description, form_data, current_handler_id, current_dept_id, report_mode, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (85, 'AE20240425001', 2, 'NURSING', 3, 20, 155, 1, '2024-04-25 08:58:00', 201, '患者放疗后出现严重恶心呕吐，护理记录不完整，未及时报告医生。', '[{"label": "事件发生时间", "value": "见上报时间", "type": "DATETIME"}, {"label": "事件类别", "value": "NURSING", "type": "SELECT"}, {"label": "事件经过", "value": "详见事件描述", "type": "TEXTAREA"}]', 157, 205, 1, '155', '2024-04-25 08:58:00', '155', '2024-04-25 08:58:00', 0, 0);
INSERT INTO ae_adverse_event (id, event_no, template_id, category, level, status, reporter_id, reporter_type, report_time, dept_id, description, form_data, current_handler_id, current_dept_id, report_mode, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (86, 'AE20240425002', 4, 'DEVICE', 3, 60, 154, 1, '2024-04-25 18:43:00', 200, '放疗计划系统软件出现故障，无法正常进行剂量计算。', '[{"label": "事件发生时间", "value": "见上报时间", "type": "DATETIME"}, {"label": "事件类别", "value": "DEVICE", "type": "SELECT"}, {"label": "事件经过", "value": "详见事件描述", "type": "TEXTAREA"}]', NULL, NULL, 1, '154', '2024-04-25 18:43:00', '154', '2024-04-25 18:43:00', 0, 0);
INSERT INTO ae_adverse_event (id, event_no, template_id, category, level, status, reporter_id, reporter_type, report_time, dept_id, description, form_data, current_handler_id, current_dept_id, report_mode, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (87, 'AE20240411001', 1, 'MEDICAL', 4, 30, 155, 1, '2024-04-11 14:11:00', 201, '患者放疗计划中靶区勾画存在争议，多学科会诊后修改了治疗方案。', '[{"label": "事件发生时间", "value": "见上报时间", "type": "DATETIME"}, {"label": "事件类别", "value": "MEDICAL", "type": "SELECT"}, {"label": "事件经过", "value": "详见事件描述", "type": "TEXTAREA"}]', 158, 1, 2, '155', '2024-04-11 14:11:00', '155', '2024-04-11 14:11:00', 0, 0);
INSERT INTO ae_adverse_event (id, event_no, template_id, category, level, status, reporter_id, reporter_type, report_time, dept_id, description, form_data, current_handler_id, current_dept_id, report_mode, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (88, 'AE20240528001', 1, 'MEDICAL', 4, 70, 154, 1, '2024-05-28 13:51:00', 200, '放疗过程中患者体位移动，导致CBCT验证发现偏差超限，需重新摆位。', '[{"label": "事件发生时间", "value": "见上报时间", "type": "DATETIME"}, {"label": "事件类别", "value": "MEDICAL", "type": "SELECT"}, {"label": "事件经过", "value": "详见事件描述", "type": "TEXTAREA"}]', NULL, NULL, 1, '154', '2024-05-28 13:51:00', '154', '2024-05-28 13:51:00', 0, 0);
INSERT INTO ae_adverse_event (id, event_no, template_id, category, level, status, reporter_id, reporter_type, report_time, dept_id, description, form_data, current_handler_id, current_dept_id, report_mode, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (89, 'AE20240503001', 1, 'MEDICAL', 2, 60, 155, 1, '2024-05-03 14:00:00', 201, '放疗计划审核时发现剂量计算错误，实际处方剂量与计划剂量不一致。', '[{"label": "事件发生时间", "value": "见上报时间", "type": "DATETIME"}, {"label": "事件类别", "value": "MEDICAL", "type": "SELECT"}, {"label": "事件经过", "value": "详见事件描述", "type": "TEXTAREA"}]', NULL, NULL, 1, '155', '2024-05-03 14:00:00', '155', '2024-05-03 14:00:00', 0, 0);
INSERT INTO ae_adverse_event (id, event_no, template_id, category, level, status, reporter_id, reporter_type, report_time, dept_id, description, form_data, current_handler_id, current_dept_id, report_mode, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (90, 'AE20240522001', 1, 'MEDICAL', 4, 50, 155, 2, '2024-05-22 11:30:00', 201, '放射治疗中发现患者合并用药与放疗存在相互作用，需调整用药方案。', '[{"label": "事件发生时间", "value": "见上报时间", "type": "DATETIME"}, {"label": "事件类别", "value": "MEDICAL", "type": "SELECT"}, {"label": "事件经过", "value": "详见事件描述", "type": "TEXTAREA"}]', NULL, NULL, 1, '155', '2024-05-22 11:30:00', '155', '2024-05-22 11:30:00', 0, 0);
INSERT INTO ae_adverse_event (id, event_no, template_id, category, level, status, reporter_id, reporter_type, report_time, dept_id, description, form_data, current_handler_id, current_dept_id, report_mode, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (91, 'AE20240504001', 1, 'INFO', 3, 50, 155, 1, '2024-05-04 10:02:00', 201, '放疗设备监控系统报警延迟，未能及时发现设备异常。', '[{"label": "事件发生时间", "value": "见上报时间", "type": "DATETIME"}, {"label": "事件类别", "value": "INFO", "type": "SELECT"}, {"label": "事件经过", "value": "详见事件描述", "type": "TEXTAREA"}]', NULL, NULL, 1, '155', '2024-05-04 10:02:00', '155', '2024-05-04 10:02:00', 0, 0);
INSERT INTO ae_adverse_event (id, event_no, template_id, category, level, status, reporter_id, reporter_type, report_time, dept_id, description, form_data, current_handler_id, current_dept_id, report_mode, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (92, 'AE20240531001', 2, 'NURSING', 4, 60, 155, 1, '2024-05-31 16:26:00', 201, '患者放疗后出现严重恶心呕吐，护理记录不完整，未及时报告医生。', '[{"label": "事件发生时间", "value": "见上报时间", "type": "DATETIME"}, {"label": "事件类别", "value": "NURSING", "type": "SELECT"}, {"label": "事件经过", "value": "详见事件描述", "type": "TEXTAREA"}]', NULL, NULL, 2, '155', '2024-05-31 16:26:00', '155', '2024-05-31 16:26:00', 0, 0);
INSERT INTO ae_adverse_event (id, event_no, template_id, category, level, status, reporter_id, reporter_type, report_time, dept_id, description, form_data, current_handler_id, current_dept_id, report_mode, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (93, 'AE20240512001', 2, 'NURSING', 3, 50, 155, 1, '2024-05-12 11:28:00', 201, '放疗前患者身份核对出现错误，差点给错误患者执行治疗。', '[{"label": "事件发生时间", "value": "见上报时间", "type": "DATETIME"}, {"label": "事件类别", "value": "NURSING", "type": "SELECT"}, {"label": "事件经过", "value": "详见事件描述", "type": "TEXTAREA"}]', NULL, NULL, 1, '155', '2024-05-12 11:28:00', '155', '2024-05-12 11:28:00', 0, 0);
INSERT INTO ae_adverse_event (id, event_no, template_id, category, level, status, reporter_id, reporter_type, report_time, dept_id, description, form_data, current_handler_id, current_dept_id, report_mode, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (94, 'AE20240531002', 4, 'DEVICE', 2, 50, 154, 1, '2024-05-31 09:54:00', 200, '直线加速器输出剂量偏差超标，需要紧急停机检修。', '[{"label": "事件发生时间", "value": "见上报时间", "type": "DATETIME"}, {"label": "事件类别", "value": "DEVICE", "type": "SELECT"}, {"label": "事件经过", "value": "详见事件描述", "type": "TEXTAREA"}]', NULL, NULL, 1, '154', '2024-05-31 09:54:00', '154', '2024-05-31 09:54:00', 0, 0);
INSERT INTO ae_adverse_event (id, event_no, template_id, category, level, status, reporter_id, reporter_type, report_time, dept_id, description, form_data, current_handler_id, current_dept_id, report_mode, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (95, 'AE20240527001', 2, 'NURSING', 4, 50, 154, 1, '2024-05-27 16:13:00', 200, '放疗前患者身份核对出现错误，差点给错误患者执行治疗。', '[{"label": "事件发生时间", "value": "见上报时间", "type": "DATETIME"}, {"label": "事件类别", "value": "NURSING", "type": "SELECT"}, {"label": "事件经过", "value": "详见事件描述", "type": "TEXTAREA"}]', NULL, NULL, 1, '154', '2024-05-27 16:13:00', '154', '2024-05-27 16:13:00', 0, 0);
INSERT INTO ae_adverse_event (id, event_no, template_id, category, level, status, reporter_id, reporter_type, report_time, dept_id, description, form_data, current_handler_id, current_dept_id, report_mode, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (96, 'AE20240518001', 1, 'MEDICAL', 4, 30, 154, 1, '2024-05-18 12:51:00', 200, '患者在放疗过程中出现严重皮肤反应，III级放射性皮炎，需要暂停治疗。', '[{"label": "事件发生时间", "value": "见上报时间", "type": "DATETIME"}, {"label": "事件类别", "value": "MEDICAL", "type": "SELECT"}, {"label": "事件经过", "value": "详见事件描述", "type": "TEXTAREA"}]', 158, 1, 1, '154', '2024-05-18 12:51:00', '154', '2024-05-18 12:51:00', 0, 0);
INSERT INTO ae_adverse_event (id, event_no, template_id, category, level, status, reporter_id, reporter_type, report_time, dept_id, description, form_data, current_handler_id, current_dept_id, report_mode, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (97, 'AE20240524001', 1, 'MEDICAL', 2, 50, 155, 1, '2024-05-24 14:33:00', 201, '患者放疗计划中靶区勾画存在争议，多学科会诊后修改了治疗方案。', '[{"label": "事件发生时间", "value": "见上报时间", "type": "DATETIME"}, {"label": "事件类别", "value": "MEDICAL", "type": "SELECT"}, {"label": "事件经过", "value": "详见事件描述", "type": "TEXTAREA"}]', NULL, NULL, 1, '155', '2024-05-24 14:33:00', '155', '2024-05-24 14:33:00', 0, 0);
INSERT INTO ae_adverse_event (id, event_no, template_id, category, level, status, reporter_id, reporter_type, report_time, dept_id, description, form_data, current_handler_id, current_dept_id, report_mode, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (98, 'AE20240621001', 5, 'LOGISTICS', 4, 50, 155, 1, '2024-06-21 08:03:00', 201, '放疗科空调系统故障，治疗室温度超标，影响设备运行。', '[{"label": "事件发生时间", "value": "见上报时间", "type": "DATETIME"}, {"label": "事件类别", "value": "LOGISTICS", "type": "SELECT"}, {"label": "事件经过", "value": "详见事件描述", "type": "TEXTAREA"}]', NULL, NULL, 1, '155', '2024-06-21 08:03:00', '155', '2024-06-21 08:03:00', 0, 0);
INSERT INTO ae_adverse_event (id, event_no, template_id, category, level, status, reporter_id, reporter_type, report_time, dept_id, description, form_data, current_handler_id, current_dept_id, report_mode, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (99, 'AE20240605001', 2, 'NURSING', 3, 50, 155, 1, '2024-06-05 12:39:00', 201, '患者放疗后皮肤护理不当，出现II级放射性皮炎，局部红肿明显。', '[{"label": "事件发生时间", "value": "见上报时间", "type": "DATETIME"}, {"label": "事件类别", "value": "NURSING", "type": "SELECT"}, {"label": "事件经过", "value": "详见事件描述", "type": "TEXTAREA"}]', NULL, NULL, 1, '155', '2024-06-05 12:39:00', '155', '2024-06-05 12:39:00', 0, 0);
INSERT INTO ae_adverse_event (id, event_no, template_id, category, level, status, reporter_id, reporter_type, report_time, dept_id, description, form_data, current_handler_id, current_dept_id, report_mode, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (100, 'AE20240628001', 4, 'DEVICE', 3, 50, 154, 1, '2024-06-28 18:41:00', 200, '放疗计划系统软件出现故障，无法正常进行剂量计算。', '[{"label": "事件发生时间", "value": "见上报时间", "type": "DATETIME"}, {"label": "事件类别", "value": "DEVICE", "type": "SELECT"}, {"label": "事件经过", "value": "详见事件描述", "type": "TEXTAREA"}]', NULL, NULL, 2, '154', '2024-06-28 18:41:00', '154', '2024-06-28 18:41:00', 0, 0);
INSERT INTO ae_adverse_event (id, event_no, template_id, category, level, status, reporter_id, reporter_type, report_time, dept_id, description, form_data, current_handler_id, current_dept_id, report_mode, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (101, 'AE20240614001', 1, 'MEDICAL', 4, 50, 155, 1, '2024-06-14 13:42:00', 201, '患者在放疗过程中出现定位偏差，导致照射野偏移约5mm，经及时发现并纠正。', '[{"label": "事件发生时间", "value": "见上报时间", "type": "DATETIME"}, {"label": "事件类别", "value": "MEDICAL", "type": "SELECT"}, {"label": "事件经过", "value": "详见事件描述", "type": "TEXTAREA"}]', NULL, NULL, 2, '155', '2024-06-14 13:42:00', '155', '2024-06-14 13:42:00', 0, 0);
INSERT INTO ae_adverse_event (id, event_no, template_id, category, level, status, reporter_id, reporter_type, report_time, dept_id, description, form_data, current_handler_id, current_dept_id, report_mode, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (102, 'AE20240619001', 2, 'NURSING', 2, 50, 155, 2, '2024-06-19 16:35:00', 201, '患者放疗后皮肤护理不当，出现II级放射性皮炎，局部红肿明显。', '[{"label": "事件发生时间", "value": "见上报时间", "type": "DATETIME"}, {"label": "事件类别", "value": "NURSING", "type": "SELECT"}, {"label": "事件经过", "value": "详见事件描述", "type": "TEXTAREA"}]', NULL, NULL, 2, '155', '2024-06-19 16:35:00', '155', '2024-06-19 16:35:00', 0, 0);
INSERT INTO ae_adverse_event (id, event_no, template_id, category, level, status, reporter_id, reporter_type, report_time, dept_id, description, form_data, current_handler_id, current_dept_id, report_mode, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (103, 'AE20240619002', 1, 'MEDICAL', 3, 50, 154, 1, '2024-06-19 16:13:00', 200, '患者在放疗过程中出现定位偏差，导致照射野偏移约5mm，经及时发现并纠正。', '[{"label": "事件发生时间", "value": "见上报时间", "type": "DATETIME"}, {"label": "事件类别", "value": "MEDICAL", "type": "SELECT"}, {"label": "事件经过", "value": "详见事件描述", "type": "TEXTAREA"}]', NULL, NULL, 1, '154', '2024-06-19 16:13:00', '154', '2024-06-19 16:13:00', 0, 0);
INSERT INTO ae_adverse_event (id, event_no, template_id, category, level, status, reporter_id, reporter_type, report_time, dept_id, description, form_data, current_handler_id, current_dept_id, report_mode, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (104, 'AE20240620001', 3, 'INFECTION', 1, 50, 155, 1, '2024-06-20 18:53:00', 201, '放疗设备表面采样检出致病菌，消毒流程存在漏洞。', '[{"label": "事件发生时间", "value": "见上报时间", "type": "DATETIME"}, {"label": "事件类别", "value": "INFECTION", "type": "SELECT"}, {"label": "事件经过", "value": "详见事件描述", "type": "TEXTAREA"}]', NULL, NULL, 1, '155', '2024-06-20 18:53:00', '155', '2024-06-20 18:53:00', 0, 0);
INSERT INTO ae_adverse_event (id, event_no, template_id, category, level, status, reporter_id, reporter_type, report_time, dept_id, description, form_data, current_handler_id, current_dept_id, report_mode, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (105, 'AE20240624001', 1, 'MEDICAL', 3, 50, 155, 1, '2024-06-24 18:01:00', 201, '放疗计划审核时发现剂量计算错误，实际处方剂量与计划剂量不一致。', '[{"label": "事件发生时间", "value": "见上报时间", "type": "DATETIME"}, {"label": "事件类别", "value": "MEDICAL", "type": "SELECT"}, {"label": "事件经过", "value": "详见事件描述", "type": "TEXTAREA"}]', NULL, NULL, 1, '155', '2024-06-24 18:01:00', '155', '2024-06-24 18:01:00', 0, 0);
INSERT INTO ae_adverse_event (id, event_no, template_id, category, level, status, reporter_id, reporter_type, report_time, dept_id, description, form_data, current_handler_id, current_dept_id, report_mode, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (106, 'AE20240629001', 1, 'MEDICAL', 3, 50, 154, 1, '2024-06-29 08:09:00', 200, '放疗计划审核时发现剂量计算错误，实际处方剂量与计划剂量不一致。', '[{"label": "事件发生时间", "value": "见上报时间", "type": "DATETIME"}, {"label": "事件类别", "value": "MEDICAL", "type": "SELECT"}, {"label": "事件经过", "value": "详见事件描述", "type": "TEXTAREA"}]', NULL, NULL, 1, '154', '2024-06-29 08:09:00', '154', '2024-06-29 08:09:00', 0, 0);
INSERT INTO ae_adverse_event (id, event_no, template_id, category, level, status, reporter_id, reporter_type, report_time, dept_id, description, form_data, current_handler_id, current_dept_id, report_mode, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (107, 'AE20240714001', 3, 'INFECTION', 3, 60, 155, 1, '2024-07-14 09:18:00', 201, '放疗设备表面采样检出致病菌，消毒流程存在漏洞。', '[{"label": "事件发生时间", "value": "见上报时间", "type": "DATETIME"}, {"label": "事件类别", "value": "INFECTION", "type": "SELECT"}, {"label": "事件经过", "value": "详见事件描述", "type": "TEXTAREA"}]', NULL, NULL, 1, '155', '2024-07-14 09:18:00', '155', '2024-07-14 09:18:00', 0, 0);
INSERT INTO ae_adverse_event (id, event_no, template_id, category, level, status, reporter_id, reporter_type, report_time, dept_id, description, form_data, current_handler_id, current_dept_id, report_mode, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (108, 'AE20240725001', 1, 'MEDICAL', 3, 50, 154, 1, '2024-07-25 10:48:00', 200, '放疗过程中患者体位移动，导致CBCT验证发现偏差超限，需重新摆位。', '[{"label": "事件发生时间", "value": "见上报时间", "type": "DATETIME"}, {"label": "事件类别", "value": "MEDICAL", "type": "SELECT"}, {"label": "事件经过", "value": "详见事件描述", "type": "TEXTAREA"}]', NULL, NULL, 1, '154', '2024-07-25 10:48:00', '154', '2024-07-25 10:48:00', 0, 0);
INSERT INTO ae_adverse_event (id, event_no, template_id, category, level, status, reporter_id, reporter_type, report_time, dept_id, description, form_data, current_handler_id, current_dept_id, report_mode, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (109, 'AE20240703001', 3, 'INFECTION', 3, 60, 155, 2, '2024-07-03 14:55:00', 201, '放疗患者PICC置管处出现感染征象，需要抗感染治疗。', '[{"label": "事件发生时间", "value": "见上报时间", "type": "DATETIME"}, {"label": "事件类别", "value": "INFECTION", "type": "SELECT"}, {"label": "事件经过", "value": "详见事件描述", "type": "TEXTAREA"}]', NULL, NULL, 2, '155', '2024-07-03 14:55:00', '155', '2024-07-03 14:55:00', 0, 0);
INSERT INTO ae_adverse_event (id, event_no, template_id, category, level, status, reporter_id, reporter_type, report_time, dept_id, description, form_data, current_handler_id, current_dept_id, report_mode, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (110, 'AE20240710001', 1, 'MEDICAL', 3, 50, 155, 1, '2024-07-10 09:25:00', 201, '放疗计划审核时发现剂量计算错误，实际处方剂量与计划剂量不一致。', '[{"label": "事件发生时间", "value": "见上报时间", "type": "DATETIME"}, {"label": "事件类别", "value": "MEDICAL", "type": "SELECT"}, {"label": "事件经过", "value": "详见事件描述", "type": "TEXTAREA"}]', NULL, NULL, 2, '155', '2024-07-10 09:25:00', '155', '2024-07-10 09:25:00', 0, 0);
INSERT INTO ae_adverse_event (id, event_no, template_id, category, level, status, reporter_id, reporter_type, report_time, dept_id, description, form_data, current_handler_id, current_dept_id, report_mode, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (111, 'AE20240713001', 2, 'NURSING', 3, 50, 154, 1, '2024-07-13 12:47:00', 200, '放疗患者心理护理不到位，患者出现焦虑情绪，拒绝继续治疗。', '[{"label": "事件发生时间", "value": "见上报时间", "type": "DATETIME"}, {"label": "事件类别", "value": "NURSING", "type": "SELECT"}, {"label": "事件经过", "value": "详见事件描述", "type": "TEXTAREA"}]', NULL, NULL, 1, '154', '2024-07-13 12:47:00', '154', '2024-07-13 12:47:00', 0, 0);
INSERT INTO ae_adverse_event (id, event_no, template_id, category, level, status, reporter_id, reporter_type, report_time, dept_id, description, form_data, current_handler_id, current_dept_id, report_mode, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (112, 'AE20240721001', 1, 'MEDICAL', 3, 70, 154, 1, '2024-07-21 10:15:00', 200, '放疗计划中危及器官限量超标，经物理师复核后重新优化计划。', '[{"label": "事件发生时间", "value": "见上报时间", "type": "DATETIME"}, {"label": "事件类别", "value": "MEDICAL", "type": "SELECT"}, {"label": "事件经过", "value": "详见事件描述", "type": "TEXTAREA"}]', NULL, NULL, 1, '154', '2024-07-21 10:15:00', '154', '2024-07-21 10:15:00', 0, 0);
INSERT INTO ae_adverse_event (id, event_no, template_id, category, level, status, reporter_id, reporter_type, report_time, dept_id, description, form_data, current_handler_id, current_dept_id, report_mode, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (113, 'AE20240715001', 2, 'NURSING', 4, 50, 155, 2, '2024-07-15 17:48:00', 201, '放疗等候区患者跌倒，造成软组织损伤，需要进一步检查处理。', '[{"label": "事件发生时间", "value": "见上报时间", "type": "DATETIME"}, {"label": "事件类别", "value": "NURSING", "type": "SELECT"}, {"label": "事件经过", "value": "详见事件描述", "type": "TEXTAREA"}]', NULL, NULL, 1, '155', '2024-07-15 17:48:00', '155', '2024-07-15 17:48:00', 0, 0);
INSERT INTO ae_adverse_event (id, event_no, template_id, category, level, status, reporter_id, reporter_type, report_time, dept_id, description, form_data, current_handler_id, current_dept_id, report_mode, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (114, 'AE20240719001', 2, 'NURSING', 3, 50, 155, 1, '2024-07-19 08:22:00', 201, '放疗期间患者营养评估不到位，体重下降超过10%，影响治疗效果。', '[{"label": "事件发生时间", "value": "见上报时间", "type": "DATETIME"}, {"label": "事件类别", "value": "NURSING", "type": "SELECT"}, {"label": "事件经过", "value": "详见事件描述", "type": "TEXTAREA"}]', NULL, NULL, 1, '155', '2024-07-19 08:22:00', '155', '2024-07-19 08:22:00', 0, 0);
INSERT INTO ae_adverse_event (id, event_no, template_id, category, level, status, reporter_id, reporter_type, report_time, dept_id, description, form_data, current_handler_id, current_dept_id, report_mode, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (115, 'AE20240717001', 2, 'NURSING', 4, 70, 154, 1, '2024-07-17 14:29:00', 200, '放疗前患者身份核对出现错误，差点给错误患者执行治疗。', '[{"label": "事件发生时间", "value": "见上报时间", "type": "DATETIME"}, {"label": "事件类别", "value": "NURSING", "type": "SELECT"}, {"label": "事件经过", "value": "详见事件描述", "type": "TEXTAREA"}]', NULL, NULL, 2, '154', '2024-07-17 14:29:00', '154', '2024-07-17 14:29:00', 0, 0);
INSERT INTO ae_adverse_event (id, event_no, template_id, category, level, status, reporter_id, reporter_type, report_time, dept_id, description, form_data, current_handler_id, current_dept_id, report_mode, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (116, 'AE20240815001', 4, 'DEVICE', 3, 50, 154, 1, '2024-08-15 09:51:00', 200, '放疗定位CT图像质量下降，影响靶区勾画精度。', '[{"label": "事件发生时间", "value": "见上报时间", "type": "DATETIME"}, {"label": "事件类别", "value": "DEVICE", "type": "SELECT"}, {"label": "事件经过", "value": "详见事件描述", "type": "TEXTAREA"}]', NULL, NULL, 1, '154', '2024-08-15 09:51:00', '154', '2024-08-15 09:51:00', 0, 0);
INSERT INTO ae_adverse_event (id, event_no, template_id, category, level, status, reporter_id, reporter_type, report_time, dept_id, description, form_data, current_handler_id, current_dept_id, report_mode, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (117, 'AE20240812001', 1, 'MEDICAL', 3, 70, 155, 1, '2024-08-12 13:58:00', 201, '放射治疗中发现患者合并用药与放疗存在相互作用，需调整用药方案。', '[{"label": "事件发生时间", "value": "见上报时间", "type": "DATETIME"}, {"label": "事件类别", "value": "MEDICAL", "type": "SELECT"}, {"label": "事件经过", "value": "详见事件描述", "type": "TEXTAREA"}]', NULL, NULL, 1, '155', '2024-08-12 13:58:00', '155', '2024-08-12 13:58:00', 0, 0);
INSERT INTO ae_adverse_event (id, event_no, template_id, category, level, status, reporter_id, reporter_type, report_time, dept_id, description, form_data, current_handler_id, current_dept_id, report_mode, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (118, 'AE20240810001', 4, 'DEVICE', 4, 50, 154, 1, '2024-08-10 12:46:00', 200, '放疗设备MLC叶片运动异常，影响调强放疗的实施质量。', '[{"label": "事件发生时间", "value": "见上报时间", "type": "DATETIME"}, {"label": "事件类别", "value": "DEVICE", "type": "SELECT"}, {"label": "事件经过", "value": "详见事件描述", "type": "TEXTAREA"}]', NULL, NULL, 1, '154', '2024-08-10 12:46:00', '154', '2024-08-10 12:46:00', 0, 0);
INSERT INTO ae_adverse_event (id, event_no, template_id, category, level, status, reporter_id, reporter_type, report_time, dept_id, description, form_data, current_handler_id, current_dept_id, report_mode, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (119, 'AE20240805001', 1, 'INFO', 3, 50, 155, 1, '2024-08-05 17:45:00', 201, '放疗设备监控系统报警延迟，未能及时发现设备异常。', '[{"label": "事件发生时间", "value": "见上报时间", "type": "DATETIME"}, {"label": "事件类别", "value": "INFO", "type": "SELECT"}, {"label": "事件经过", "value": "详见事件描述", "type": "TEXTAREA"}]', NULL, NULL, 1, '155', '2024-08-05 17:45:00', '155', '2024-08-05 17:45:00', 0, 0);
INSERT INTO ae_adverse_event (id, event_no, template_id, category, level, status, reporter_id, reporter_type, report_time, dept_id, description, form_data, current_handler_id, current_dept_id, report_mode, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (120, 'AE20240803001', 2, 'NURSING', 3, 50, 155, 1, '2024-08-03 18:42:00', 201, '放疗前患者身份核对出现错误，差点给错误患者执行治疗。', '[{"label": "事件发生时间", "value": "见上报时间", "type": "DATETIME"}, {"label": "事件类别", "value": "NURSING", "type": "SELECT"}, {"label": "事件经过", "value": "详见事件描述", "type": "TEXTAREA"}]', NULL, NULL, 2, '155', '2024-08-03 18:42:00', '155', '2024-08-03 18:42:00', 0, 0);
INSERT INTO ae_adverse_event (id, event_no, template_id, category, level, status, reporter_id, reporter_type, report_time, dept_id, description, form_data, current_handler_id, current_dept_id, report_mode, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (121, 'AE20240803002', 3, 'INFECTION', 3, 60, 154, 1, '2024-08-03 12:54:00', 200, '放疗设备表面采样检出致病菌，消毒流程存在漏洞。', '[{"label": "事件发生时间", "value": "见上报时间", "type": "DATETIME"}, {"label": "事件类别", "value": "INFECTION", "type": "SELECT"}, {"label": "事件经过", "value": "详见事件描述", "type": "TEXTAREA"}]', NULL, NULL, 2, '154', '2024-08-03 12:54:00', '154', '2024-08-03 12:54:00', 0, 0);
INSERT INTO ae_adverse_event (id, event_no, template_id, category, level, status, reporter_id, reporter_type, report_time, dept_id, description, form_data, current_handler_id, current_dept_id, report_mode, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (122, 'AE20240827001', 1, 'INFO', 4, 50, 154, 1, '2024-08-27 17:51:00', 200, '放疗计划数据备份失败，存在数据丢失风险。', '[{"label": "事件发生时间", "value": "见上报时间", "type": "DATETIME"}, {"label": "事件类别", "value": "INFO", "type": "SELECT"}, {"label": "事件经过", "value": "详见事件描述", "type": "TEXTAREA"}]', NULL, NULL, 1, '154', '2024-08-27 17:51:00', '154', '2024-08-27 17:51:00', 0, 0);
INSERT INTO ae_adverse_event (id, event_no, template_id, category, level, status, reporter_id, reporter_type, report_time, dept_id, description, form_data, current_handler_id, current_dept_id, report_mode, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (123, 'AE20240808001', 2, 'NURSING', 4, 70, 155, 2, '2024-08-08 16:15:00', 201, '放疗患者心理护理不到位，患者出现焦虑情绪，拒绝继续治疗。', '[{"label": "事件发生时间", "value": "见上报时间", "type": "DATETIME"}, {"label": "事件类别", "value": "NURSING", "type": "SELECT"}, {"label": "事件经过", "value": "详见事件描述", "type": "TEXTAREA"}]', NULL, NULL, 1, '155', '2024-08-08 16:15:00', '155', '2024-08-08 16:15:00', 0, 0);
INSERT INTO ae_adverse_event (id, event_no, template_id, category, level, status, reporter_id, reporter_type, report_time, dept_id, description, form_data, current_handler_id, current_dept_id, report_mode, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (124, 'AE20240925001', 2, 'NURSING', 4, 50, 154, 1, '2024-09-25 14:32:00', 200, '患者放疗后皮肤护理不当，出现II级放射性皮炎，局部红肿明显。', '[{"label": "事件发生时间", "value": "见上报时间", "type": "DATETIME"}, {"label": "事件类别", "value": "NURSING", "type": "SELECT"}, {"label": "事件经过", "value": "详见事件描述", "type": "TEXTAREA"}]', NULL, NULL, 1, '154', '2024-09-25 14:32:00', '154', '2024-09-25 14:32:00', 0, 0);
INSERT INTO ae_adverse_event (id, event_no, template_id, category, level, status, reporter_id, reporter_type, report_time, dept_id, description, form_data, current_handler_id, current_dept_id, report_mode, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (125, 'AE20240923001', 1, 'MEDICAL', 2, 50, 154, 1, '2024-09-23 16:54:00', 200, '放疗过程中患者体位移动，导致CBCT验证发现偏差超限，需重新摆位。', '[{"label": "事件发生时间", "value": "见上报时间", "type": "DATETIME"}, {"label": "事件类别", "value": "MEDICAL", "type": "SELECT"}, {"label": "事件经过", "value": "详见事件描述", "type": "TEXTAREA"}]', NULL, NULL, 2, '154', '2024-09-23 16:54:00', '154', '2024-09-23 16:54:00', 0, 0);
INSERT INTO ae_adverse_event (id, event_no, template_id, category, level, status, reporter_id, reporter_type, report_time, dept_id, description, form_data, current_handler_id, current_dept_id, report_mode, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (126, 'AE20240930001', 1, 'MEDICAL', 3, 50, 154, 1, '2024-09-30 08:26:00', 200, '放疗过程中患者体位移动，导致CBCT验证发现偏差超限，需重新摆位。', '[{"label": "事件发生时间", "value": "见上报时间", "type": "DATETIME"}, {"label": "事件类别", "value": "MEDICAL", "type": "SELECT"}, {"label": "事件经过", "value": "详见事件描述", "type": "TEXTAREA"}]', NULL, NULL, 1, '154', '2024-09-30 08:26:00', '154', '2024-09-30 08:26:00', 0, 0);
INSERT INTO ae_adverse_event (id, event_no, template_id, category, level, status, reporter_id, reporter_type, report_time, dept_id, description, form_data, current_handler_id, current_dept_id, report_mode, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (127, 'AE20240926001', 1, 'MEDICAL', 4, 80, 155, 1, '2024-09-26 10:08:00', 201, '放疗计划审核时发现剂量计算错误，实际处方剂量与计划剂量不一致。', '[{"label": "事件发生时间", "value": "见上报时间", "type": "DATETIME"}, {"label": "事件类别", "value": "MEDICAL", "type": "SELECT"}, {"label": "事件经过", "value": "详见事件描述", "type": "TEXTAREA"}]', NULL, NULL, 1, '155', '2024-09-26 10:08:00', '155', '2024-09-26 10:08:00', 0, 0);
INSERT INTO ae_adverse_event (id, event_no, template_id, category, level, status, reporter_id, reporter_type, report_time, dept_id, description, form_data, current_handler_id, current_dept_id, report_mode, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (128, 'AE20240901001', 4, 'DEVICE', 3, 50, 155, 1, '2024-09-01 12:13:00', 201, '放疗设备MLC叶片运动异常，影响调强放疗的实施质量。', '[{"label": "事件发生时间", "value": "见上报时间", "type": "DATETIME"}, {"label": "事件类别", "value": "DEVICE", "type": "SELECT"}, {"label": "事件经过", "value": "详见事件描述", "type": "TEXTAREA"}]', NULL, NULL, 1, '155', '2024-09-01 12:13:00', '155', '2024-09-01 12:13:00', 0, 0);
INSERT INTO ae_adverse_event (id, event_no, template_id, category, level, status, reporter_id, reporter_type, report_time, dept_id, description, form_data, current_handler_id, current_dept_id, report_mode, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (129, 'AE20240903001', 1, 'INFO', 3, 80, 154, 1, '2024-09-03 09:53:00', 200, '放疗计划数据备份失败，存在数据丢失风险。', '[{"label": "事件发生时间", "value": "见上报时间", "type": "DATETIME"}, {"label": "事件类别", "value": "INFO", "type": "SELECT"}, {"label": "事件经过", "value": "详见事件描述", "type": "TEXTAREA"}]', NULL, NULL, 1, '154', '2024-09-03 09:53:00', '154', '2024-09-03 09:53:00', 0, 0);
INSERT INTO ae_adverse_event (id, event_no, template_id, category, level, status, reporter_id, reporter_type, report_time, dept_id, description, form_data, current_handler_id, current_dept_id, report_mode, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (130, 'AE20240908001', 1, 'MEDICAL', 4, 50, 155, 1, '2024-09-08 17:26:00', 201, '放疗计划中危及器官限量超标，经物理师复核后重新优化计划。', '[{"label": "事件发生时间", "value": "见上报时间", "type": "DATETIME"}, {"label": "事件类别", "value": "MEDICAL", "type": "SELECT"}, {"label": "事件经过", "value": "详见事件描述", "type": "TEXTAREA"}]', NULL, NULL, 1, '155', '2024-09-08 17:26:00', '155', '2024-09-08 17:26:00', 0, 0);
INSERT INTO ae_adverse_event (id, event_no, template_id, category, level, status, reporter_id, reporter_type, report_time, dept_id, description, form_data, current_handler_id, current_dept_id, report_mode, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (131, 'AE20240902001', 5, 'LOGISTICS', 3, 50, 154, 1, '2024-09-02 18:24:00', 200, '放疗科供电系统不稳定，设备意外断电导致治疗中断。', '[{"label": "事件发生时间", "value": "见上报时间", "type": "DATETIME"}, {"label": "事件类别", "value": "LOGISTICS", "type": "SELECT"}, {"label": "事件经过", "value": "详见事件描述", "type": "TEXTAREA"}]', NULL, NULL, 1, '154', '2024-09-02 18:24:00', '154', '2024-09-02 18:24:00', 0, 0);
INSERT INTO ae_adverse_event (id, event_no, template_id, category, level, status, reporter_id, reporter_type, report_time, dept_id, description, form_data, current_handler_id, current_dept_id, report_mode, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (132, 'AE20240905001', 2, 'NURSING', 4, 50, 154, 1, '2024-09-05 08:22:00', 200, '患者放疗后出现严重恶心呕吐，护理记录不完整，未及时报告医生。', '[{"label": "事件发生时间", "value": "见上报时间", "type": "DATETIME"}, {"label": "事件类别", "value": "NURSING", "type": "SELECT"}, {"label": "事件经过", "value": "详见事件描述", "type": "TEXTAREA"}]', NULL, NULL, 1, '154', '2024-09-05 08:22:00', '154', '2024-09-05 08:22:00', 0, 0);
INSERT INTO ae_adverse_event (id, event_no, template_id, category, level, status, reporter_id, reporter_type, report_time, dept_id, description, form_data, current_handler_id, current_dept_id, report_mode, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (133, 'AE20241002001', 1, 'MEDICAL', 2, 50, 154, 1, '2024-10-02 12:12:00', 200, '患者放疗计划中靶区勾画存在争议，多学科会诊后修改了治疗方案。', '[{"label": "事件发生时间", "value": "见上报时间", "type": "DATETIME"}, {"label": "事件类别", "value": "MEDICAL", "type": "SELECT"}, {"label": "事件经过", "value": "详见事件描述", "type": "TEXTAREA"}]', NULL, NULL, 1, '154', '2024-10-02 12:12:00', '154', '2024-10-02 12:12:00', 0, 0);
INSERT INTO ae_adverse_event (id, event_no, template_id, category, level, status, reporter_id, reporter_type, report_time, dept_id, description, form_data, current_handler_id, current_dept_id, report_mode, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (134, 'AE20241012001', 3, 'INFECTION', 3, 50, 155, 1, '2024-10-12 08:55:00', 201, '放疗患者PICC置管处出现感染征象，需要抗感染治疗。', '[{"label": "事件发生时间", "value": "见上报时间", "type": "DATETIME"}, {"label": "事件类别", "value": "INFECTION", "type": "SELECT"}, {"label": "事件经过", "value": "详见事件描述", "type": "TEXTAREA"}]', NULL, NULL, 1, '155', '2024-10-12 08:55:00', '155', '2024-10-12 08:55:00', 0, 0);
INSERT INTO ae_adverse_event (id, event_no, template_id, category, level, status, reporter_id, reporter_type, report_time, dept_id, description, form_data, current_handler_id, current_dept_id, report_mode, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (135, 'AE20241012002', 4, 'DEVICE', 4, 50, 154, 1, '2024-10-12 16:17:00', 200, '放疗计划系统软件出现故障，无法正常进行剂量计算。', '[{"label": "事件发生时间", "value": "见上报时间", "type": "DATETIME"}, {"label": "事件类别", "value": "DEVICE", "type": "SELECT"}, {"label": "事件经过", "value": "详见事件描述", "type": "TEXTAREA"}]', NULL, NULL, 2, '154', '2024-10-12 16:17:00', '154', '2024-10-12 16:17:00', 0, 0);
INSERT INTO ae_adverse_event (id, event_no, template_id, category, level, status, reporter_id, reporter_type, report_time, dept_id, description, form_data, current_handler_id, current_dept_id, report_mode, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (136, 'AE20241010001', 3, 'INFECTION', 2, 50, 155, 1, '2024-10-10 15:38:00', 201, '放疗科发现多重耐药菌感染病例，需要加强感染防控措施。', '[{"label": "事件发生时间", "value": "见上报时间", "type": "DATETIME"}, {"label": "事件类别", "value": "INFECTION", "type": "SELECT"}, {"label": "事件经过", "value": "详见事件描述", "type": "TEXTAREA"}]', NULL, NULL, 1, '155', '2024-10-10 15:38:00', '155', '2024-10-10 15:38:00', 0, 0);
INSERT INTO ae_adverse_event (id, event_no, template_id, category, level, status, reporter_id, reporter_type, report_time, dept_id, description, form_data, current_handler_id, current_dept_id, report_mode, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (137, 'AE20241003001', 2, 'NURSING', 3, 60, 154, 2, '2024-10-03 18:40:00', 200, '患者放疗后皮肤护理不当，出现II级放射性皮炎，局部红肿明显。', '[{"label": "事件发生时间", "value": "见上报时间", "type": "DATETIME"}, {"label": "事件类别", "value": "NURSING", "type": "SELECT"}, {"label": "事件经过", "value": "详见事件描述", "type": "TEXTAREA"}]', NULL, NULL, 1, '154', '2024-10-03 18:40:00', '154', '2024-10-03 18:40:00', 0, 0);
INSERT INTO ae_adverse_event (id, event_no, template_id, category, level, status, reporter_id, reporter_type, report_time, dept_id, description, form_data, current_handler_id, current_dept_id, report_mode, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (138, 'AE20241008001', 2, 'NURSING', 4, 50, 154, 1, '2024-10-08 18:23:00', 200, '放疗期间患者营养评估不到位，体重下降超过10%，影响治疗效果。', '[{"label": "事件发生时间", "value": "见上报时间", "type": "DATETIME"}, {"label": "事件类别", "value": "NURSING", "type": "SELECT"}, {"label": "事件经过", "value": "详见事件描述", "type": "TEXTAREA"}]', NULL, NULL, 1, '154', '2024-10-08 18:23:00', '154', '2024-10-08 18:23:00', 0, 0);
INSERT INTO ae_adverse_event (id, event_no, template_id, category, level, status, reporter_id, reporter_type, report_time, dept_id, description, form_data, current_handler_id, current_dept_id, report_mode, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (139, 'AE20241012003', 2, 'NURSING', 3, 50, 154, 1, '2024-10-12 14:20:00', 200, '患者放疗后出现严重恶心呕吐，护理记录不完整，未及时报告医生。', '[{"label": "事件发生时间", "value": "见上报时间", "type": "DATETIME"}, {"label": "事件类别", "value": "NURSING", "type": "SELECT"}, {"label": "事件经过", "value": "详见事件描述", "type": "TEXTAREA"}]', NULL, NULL, 1, '154', '2024-10-12 14:20:00', '154', '2024-10-12 14:20:00', 0, 0);
INSERT INTO ae_adverse_event (id, event_no, template_id, category, level, status, reporter_id, reporter_type, report_time, dept_id, description, form_data, current_handler_id, current_dept_id, report_mode, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (140, 'AE20241015001', 1, 'MEDICAL', 4, 50, 155, 1, '2024-10-15 11:39:00', 201, '放疗过程中患者体位移动，导致CBCT验证发现偏差超限，需重新摆位。', '[{"label": "事件发生时间", "value": "见上报时间", "type": "DATETIME"}, {"label": "事件类别", "value": "MEDICAL", "type": "SELECT"}, {"label": "事件经过", "value": "详见事件描述", "type": "TEXTAREA"}]', NULL, NULL, 1, '155', '2024-10-15 11:39:00', '155', '2024-10-15 11:39:00', 0, 0);
INSERT INTO ae_adverse_event (id, event_no, template_id, category, level, status, reporter_id, reporter_type, report_time, dept_id, description, form_data, current_handler_id, current_dept_id, report_mode, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (141, 'AE20241022001', 1, 'MEDICAL', 3, 50, 155, 2, '2024-10-22 13:45:00', 201, '放疗计划审核时发现剂量计算错误，实际处方剂量与计划剂量不一致。', '[{"label": "事件发生时间", "value": "见上报时间", "type": "DATETIME"}, {"label": "事件类别", "value": "MEDICAL", "type": "SELECT"}, {"label": "事件经过", "value": "详见事件描述", "type": "TEXTAREA"}]', NULL, NULL, 1, '155', '2024-10-22 13:45:00', '155', '2024-10-22 13:45:00', 0, 0);
INSERT INTO ae_adverse_event (id, event_no, template_id, category, level, status, reporter_id, reporter_type, report_time, dept_id, description, form_data, current_handler_id, current_dept_id, report_mode, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (142, 'AE20241126001', 3, 'INFECTION', 1, 50, 155, 1, '2024-11-26 10:15:00', 201, '放疗患者PICC置管处出现感染征象，需要抗感染治疗。', '[{"label": "事件发生时间", "value": "见上报时间", "type": "DATETIME"}, {"label": "事件类别", "value": "INFECTION", "type": "SELECT"}, {"label": "事件经过", "value": "详见事件描述", "type": "TEXTAREA"}]', NULL, NULL, 2, '155', '2024-11-26 10:15:00', '155', '2024-11-26 10:15:00', 0, 0);
INSERT INTO ae_adverse_event (id, event_no, template_id, category, level, status, reporter_id, reporter_type, report_time, dept_id, description, form_data, current_handler_id, current_dept_id, report_mode, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (143, 'AE20241117001', 2, 'NURSING', 3, 50, 154, 2, '2024-11-17 14:49:00', 200, '放疗患者心理护理不到位，患者出现焦虑情绪，拒绝继续治疗。', '[{"label": "事件发生时间", "value": "见上报时间", "type": "DATETIME"}, {"label": "事件类别", "value": "NURSING", "type": "SELECT"}, {"label": "事件经过", "value": "详见事件描述", "type": "TEXTAREA"}]', NULL, NULL, 1, '154', '2024-11-17 14:49:00', '154', '2024-11-17 14:49:00', 0, 0);
INSERT INTO ae_adverse_event (id, event_no, template_id, category, level, status, reporter_id, reporter_type, report_time, dept_id, description, form_data, current_handler_id, current_dept_id, report_mode, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (144, 'AE20241118001', 1, 'MEDICAL', 4, 20, 155, 1, '2024-11-18 18:37:00', 201, '放疗设备晨检时发现输出剂量异常，偏差超过3%，需停机检修。', '[{"label": "事件发生时间", "value": "见上报时间", "type": "DATETIME"}, {"label": "事件类别", "value": "MEDICAL", "type": "SELECT"}, {"label": "事件经过", "value": "详见事件描述", "type": "TEXTAREA"}]', 157, 205, 2, '155', '2024-11-18 18:37:00', '155', '2024-11-18 18:37:00', 0, 0);
INSERT INTO ae_adverse_event (id, event_no, template_id, category, level, status, reporter_id, reporter_type, report_time, dept_id, description, form_data, current_handler_id, current_dept_id, report_mode, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (145, 'AE20241112001', 1, 'MEDICAL', 2, 50, 154, 1, '2024-11-12 16:57:00', 200, '患者在放疗过程中出现严重皮肤反应，III级放射性皮炎，需要暂停治疗。', '[{"label": "事件发生时间", "value": "见上报时间", "type": "DATETIME"}, {"label": "事件类别", "value": "MEDICAL", "type": "SELECT"}, {"label": "事件经过", "value": "详见事件描述", "type": "TEXTAREA"}]', NULL, NULL, 1, '154', '2024-11-12 16:57:00', '154', '2024-11-12 16:57:00', 0, 0);
INSERT INTO ae_adverse_event (id, event_no, template_id, category, level, status, reporter_id, reporter_type, report_time, dept_id, description, form_data, current_handler_id, current_dept_id, report_mode, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (146, 'AE20241106001', 3, 'INFECTION', 3, 50, 154, 1, '2024-11-06 18:39:00', 200, '放疗科医护人员手卫生依从性检查发现不合格，需要整改。', '[{"label": "事件发生时间", "value": "见上报时间", "type": "DATETIME"}, {"label": "事件类别", "value": "INFECTION", "type": "SELECT"}, {"label": "事件经过", "value": "详见事件描述", "type": "TEXTAREA"}]', NULL, NULL, 1, '154', '2024-11-06 18:39:00', '154', '2024-11-06 18:39:00', 0, 0);
INSERT INTO ae_adverse_event (id, event_no, template_id, category, level, status, reporter_id, reporter_type, report_time, dept_id, description, form_data, current_handler_id, current_dept_id, report_mode, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (147, 'AE20241114001', 1, 'MEDICAL', 4, 50, 155, 1, '2024-11-14 17:40:00', 201, '患者在放疗过程中出现定位偏差，导致照射野偏移约5mm，经及时发现并纠正。', '[{"label": "事件发生时间", "value": "见上报时间", "type": "DATETIME"}, {"label": "事件类别", "value": "MEDICAL", "type": "SELECT"}, {"label": "事件经过", "value": "详见事件描述", "type": "TEXTAREA"}]', NULL, NULL, 1, '155', '2024-11-14 17:40:00', '155', '2024-11-14 17:40:00', 0, 0);
INSERT INTO ae_adverse_event (id, event_no, template_id, category, level, status, reporter_id, reporter_type, report_time, dept_id, description, form_data, current_handler_id, current_dept_id, report_mode, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (148, 'AE20241106002', 2, 'NURSING', 3, 80, 154, 1, '2024-11-06 15:26:00', 200, '放疗前患者身份核对出现错误，差点给错误患者执行治疗。', '[{"label": "事件发生时间", "value": "见上报时间", "type": "DATETIME"}, {"label": "事件类别", "value": "NURSING", "type": "SELECT"}, {"label": "事件经过", "value": "详见事件描述", "type": "TEXTAREA"}]', NULL, NULL, 1, '154', '2024-11-06 15:26:00', '154', '2024-11-06 15:26:00', 0, 0);
INSERT INTO ae_adverse_event (id, event_no, template_id, category, level, status, reporter_id, reporter_type, report_time, dept_id, description, form_data, current_handler_id, current_dept_id, report_mode, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (149, 'AE20241125001', 2, 'NURSING', 3, 50, 155, 1, '2024-11-25 13:32:00', 201, '放疗患者静脉通路维护不当，导致药物外渗，局部肿胀。', '[{"label": "事件发生时间", "value": "见上报时间", "type": "DATETIME"}, {"label": "事件类别", "value": "NURSING", "type": "SELECT"}, {"label": "事件经过", "value": "详见事件描述", "type": "TEXTAREA"}]', NULL, NULL, 1, '155', '2024-11-25 13:32:00', '155', '2024-11-25 13:32:00', 0, 0);
INSERT INTO ae_adverse_event (id, event_no, template_id, category, level, status, reporter_id, reporter_type, report_time, dept_id, description, form_data, current_handler_id, current_dept_id, report_mode, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (150, 'AE20241231001', 2, 'NURSING', 3, 50, 155, 1, '2024-12-31 10:52:00', 201, '患者放疗后皮肤护理不当，出现II级放射性皮炎，局部红肿明显。', '[{"label": "事件发生时间", "value": "见上报时间", "type": "DATETIME"}, {"label": "事件类别", "value": "NURSING", "type": "SELECT"}, {"label": "事件经过", "value": "详见事件描述", "type": "TEXTAREA"}]', NULL, NULL, 1, '155', '2024-12-31 10:52:00', '155', '2024-12-31 10:52:00', 0, 0);
INSERT INTO ae_adverse_event (id, event_no, template_id, category, level, status, reporter_id, reporter_type, report_time, dept_id, description, form_data, current_handler_id, current_dept_id, report_mode, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (151, 'AE20241231002', 2, 'NURSING', 3, 60, 155, 1, '2024-12-31 14:32:00', 201, '放疗等候区患者跌倒，造成软组织损伤，需要进一步检查处理。', '[{"label": "事件发生时间", "value": "见上报时间", "type": "DATETIME"}, {"label": "事件类别", "value": "NURSING", "type": "SELECT"}, {"label": "事件经过", "value": "详见事件描述", "type": "TEXTAREA"}]', NULL, NULL, 1, '155', '2024-12-31 14:32:00', '155', '2024-12-31 14:32:00', 0, 0);
INSERT INTO ae_adverse_event (id, event_no, template_id, category, level, status, reporter_id, reporter_type, report_time, dept_id, description, form_data, current_handler_id, current_dept_id, report_mode, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (152, 'AE20241218001', 1, 'MEDICAL', 2, 50, 155, 1, '2024-12-18 08:54:00', 201, '放疗计划审核时发现剂量计算错误，实际处方剂量与计划剂量不一致。', '[{"label": "事件发生时间", "value": "见上报时间", "type": "DATETIME"}, {"label": "事件类别", "value": "MEDICAL", "type": "SELECT"}, {"label": "事件经过", "value": "详见事件描述", "type": "TEXTAREA"}]', NULL, NULL, 1, '155', '2024-12-18 08:54:00', '155', '2024-12-18 08:54:00', 0, 0);
INSERT INTO ae_adverse_event (id, event_no, template_id, category, level, status, reporter_id, reporter_type, report_time, dept_id, description, form_data, current_handler_id, current_dept_id, report_mode, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (153, 'AE20241213001', 3, 'INFECTION', 3, 50, 154, 1, '2024-12-13 16:28:00', 200, '放疗设备表面采样检出致病菌，消毒流程存在漏洞。', '[{"label": "事件发生时间", "value": "见上报时间", "type": "DATETIME"}, {"label": "事件类别", "value": "INFECTION", "type": "SELECT"}, {"label": "事件经过", "value": "详见事件描述", "type": "TEXTAREA"}]', NULL, NULL, 1, '154', '2024-12-13 16:28:00', '154', '2024-12-13 16:28:00', 0, 0);
INSERT INTO ae_adverse_event (id, event_no, template_id, category, level, status, reporter_id, reporter_type, report_time, dept_id, description, form_data, current_handler_id, current_dept_id, report_mode, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (154, 'AE20241207001', 2, 'NURSING', 1, 50, 154, 1, '2024-12-07 17:32:00', 200, '放疗期间患者营养评估不到位，体重下降超过10%，影响治疗效果。', '[{"label": "事件发生时间", "value": "见上报时间", "type": "DATETIME"}, {"label": "事件类别", "value": "NURSING", "type": "SELECT"}, {"label": "事件经过", "value": "详见事件描述", "type": "TEXTAREA"}]', NULL, NULL, 1, '154', '2024-12-07 17:32:00', '154', '2024-12-07 17:32:00', 0, 0);
INSERT INTO ae_adverse_event (id, event_no, template_id, category, level, status, reporter_id, reporter_type, report_time, dept_id, description, form_data, current_handler_id, current_dept_id, report_mode, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (155, 'AE20241211001', 5, 'LOGISTICS', 4, 50, 155, 1, '2024-12-11 10:25:00', 201, '放疗科空调系统故障，治疗室温度超标，影响设备运行。', '[{"label": "事件发生时间", "value": "见上报时间", "type": "DATETIME"}, {"label": "事件类别", "value": "LOGISTICS", "type": "SELECT"}, {"label": "事件经过", "value": "详见事件描述", "type": "TEXTAREA"}]', NULL, NULL, 1, '155', '2024-12-11 10:25:00', '155', '2024-12-11 10:25:00', 0, 0);
INSERT INTO ae_adverse_event (id, event_no, template_id, category, level, status, reporter_id, reporter_type, report_time, dept_id, description, form_data, current_handler_id, current_dept_id, report_mode, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (156, 'AE20241212001', 1, 'MEDICAL', 3, 80, 155, 1, '2024-12-12 13:43:00', 201, '放疗设备晨检时发现输出剂量异常，偏差超过3%，需停机检修。', '[{"label": "事件发生时间", "value": "见上报时间", "type": "DATETIME"}, {"label": "事件类别", "value": "MEDICAL", "type": "SELECT"}, {"label": "事件经过", "value": "详见事件描述", "type": "TEXTAREA"}]', NULL, NULL, 1, '155', '2024-12-12 13:43:00', '155', '2024-12-12 13:43:00', 0, 0);
INSERT INTO ae_adverse_event (id, event_no, template_id, category, level, status, reporter_id, reporter_type, report_time, dept_id, description, form_data, current_handler_id, current_dept_id, report_mode, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (157, 'AE20241224001', 2, 'NURSING', 3, 50, 155, 1, '2024-12-24 08:37:00', 201, '放疗等候区患者跌倒，造成软组织损伤，需要进一步检查处理。', '[{"label": "事件发生时间", "value": "见上报时间", "type": "DATETIME"}, {"label": "事件类别", "value": "NURSING", "type": "SELECT"}, {"label": "事件经过", "value": "详见事件描述", "type": "TEXTAREA"}]', NULL, NULL, 1, '155', '2024-12-24 08:37:00', '155', '2024-12-24 08:37:00', 0, 0);
INSERT INTO ae_adverse_event (id, event_no, template_id, category, level, status, reporter_id, reporter_type, report_time, dept_id, description, form_data, current_handler_id, current_dept_id, report_mode, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (158, 'AE20250105001', 1, 'MEDICAL', 3, 50, 155, 2, '2025-01-05 14:44:00', 201, '放疗计划中危及器官限量超标，经物理师复核后重新优化计划。', '[{"label": "事件发生时间", "value": "见上报时间", "type": "DATETIME"}, {"label": "事件类别", "value": "MEDICAL", "type": "SELECT"}, {"label": "事件经过", "value": "详见事件描述", "type": "TEXTAREA"}]', NULL, NULL, 1, '155', '2025-01-05 14:44:00', '155', '2025-01-05 14:44:00', 0, 0);
INSERT INTO ae_adverse_event (id, event_no, template_id, category, level, status, reporter_id, reporter_type, report_time, dept_id, description, form_data, current_handler_id, current_dept_id, report_mode, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (159, 'AE20250117001', 5, 'LOGISTICS', 3, 50, 155, 1, '2025-01-17 14:20:00', 201, '放疗科供电系统不稳定，设备意外断电导致治疗中断。', '[{"label": "事件发生时间", "value": "见上报时间", "type": "DATETIME"}, {"label": "事件类别", "value": "LOGISTICS", "type": "SELECT"}, {"label": "事件经过", "value": "详见事件描述", "type": "TEXTAREA"}]', NULL, NULL, 1, '155', '2025-01-17 14:20:00', '155', '2025-01-17 14:20:00', 0, 0);
INSERT INTO ae_adverse_event (id, event_no, template_id, category, level, status, reporter_id, reporter_type, report_time, dept_id, description, form_data, current_handler_id, current_dept_id, report_mode, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (160, 'AE20250107001', 2, 'NURSING', 3, 80, 155, 1, '2025-01-07 11:17:00', 201, '放疗期间患者营养评估不到位，体重下降超过10%，影响治疗效果。', '[{"label": "事件发生时间", "value": "见上报时间", "type": "DATETIME"}, {"label": "事件类别", "value": "NURSING", "type": "SELECT"}, {"label": "事件经过", "value": "详见事件描述", "type": "TEXTAREA"}]', NULL, NULL, 1, '155', '2025-01-07 11:17:00', '155', '2025-01-07 11:17:00', 0, 0);
INSERT INTO ae_adverse_event (id, event_no, template_id, category, level, status, reporter_id, reporter_type, report_time, dept_id, description, form_data, current_handler_id, current_dept_id, report_mode, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (161, 'AE20250130001', 1, 'MEDICAL', 4, 50, 155, 2, '2025-01-30 12:18:00', 201, '放疗计划审核时发现剂量计算错误，实际处方剂量与计划剂量不一致。', '[{"label": "事件发生时间", "value": "见上报时间", "type": "DATETIME"}, {"label": "事件类别", "value": "MEDICAL", "type": "SELECT"}, {"label": "事件经过", "value": "详见事件描述", "type": "TEXTAREA"}]', NULL, NULL, 1, '155', '2025-01-30 12:18:00', '155', '2025-01-30 12:18:00', 0, 0);
INSERT INTO ae_adverse_event (id, event_no, template_id, category, level, status, reporter_id, reporter_type, report_time, dept_id, description, form_data, current_handler_id, current_dept_id, report_mode, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (162, 'AE20250112001', 1, 'MEDICAL', 3, 60, 154, 1, '2025-01-12 15:41:00', 200, '放疗设备晨检时发现输出剂量异常，偏差超过3%，需停机检修。', '[{"label": "事件发生时间", "value": "见上报时间", "type": "DATETIME"}, {"label": "事件类别", "value": "MEDICAL", "type": "SELECT"}, {"label": "事件经过", "value": "详见事件描述", "type": "TEXTAREA"}]', NULL, NULL, 1, '154', '2025-01-12 15:41:00', '154', '2025-01-12 15:41:00', 0, 0);
INSERT INTO ae_adverse_event (id, event_no, template_id, category, level, status, reporter_id, reporter_type, report_time, dept_id, description, form_data, current_handler_id, current_dept_id, report_mode, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (163, 'AE20250108001', 1, 'INFO', 3, 80, 154, 1, '2025-01-08 08:42:00', 200, '放疗信息系统与HIS系统接口异常，患者信息同步失败。', '[{"label": "事件发生时间", "value": "见上报时间", "type": "DATETIME"}, {"label": "事件类别", "value": "INFO", "type": "SELECT"}, {"label": "事件经过", "value": "详见事件描述", "type": "TEXTAREA"}]', NULL, NULL, 1, '154', '2025-01-08 08:42:00', '154', '2025-01-08 08:42:00', 0, 0);
INSERT INTO ae_adverse_event (id, event_no, template_id, category, level, status, reporter_id, reporter_type, report_time, dept_id, description, form_data, current_handler_id, current_dept_id, report_mode, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (164, 'AE20250131001', 1, 'MEDICAL', 4, 50, 155, 1, '2025-01-31 16:59:00', 201, '放疗计划审核时发现剂量计算错误，实际处方剂量与计划剂量不一致。', '[{"label": "事件发生时间", "value": "见上报时间", "type": "DATETIME"}, {"label": "事件类别", "value": "MEDICAL", "type": "SELECT"}, {"label": "事件经过", "value": "详见事件描述", "type": "TEXTAREA"}]', NULL, NULL, 1, '155', '2025-01-31 16:59:00', '155', '2025-01-31 16:59:00', 0, 0);
INSERT INTO ae_adverse_event (id, event_no, template_id, category, level, status, reporter_id, reporter_type, report_time, dept_id, description, form_data, current_handler_id, current_dept_id, report_mode, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (165, 'AE20250121001', 2, 'NURSING', 4, 50, 154, 2, '2025-01-21 17:14:00', 200, '放疗患者静脉通路维护不当，导致药物外渗，局部肿胀。', '[{"label": "事件发生时间", "value": "见上报时间", "type": "DATETIME"}, {"label": "事件类别", "value": "NURSING", "type": "SELECT"}, {"label": "事件经过", "value": "详见事件描述", "type": "TEXTAREA"}]', NULL, NULL, 1, '154', '2025-01-21 17:14:00', '154', '2025-01-21 17:14:00', 0, 0);
INSERT INTO ae_adverse_event (id, event_no, template_id, category, level, status, reporter_id, reporter_type, report_time, dept_id, description, form_data, current_handler_id, current_dept_id, report_mode, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (166, 'AE20250126001', 1, 'INFO', 4, 60, 155, 2, '2025-01-26 15:11:00', 201, '放疗计划数据备份失败，存在数据丢失风险。', '[{"label": "事件发生时间", "value": "见上报时间", "type": "DATETIME"}, {"label": "事件类别", "value": "INFO", "type": "SELECT"}, {"label": "事件经过", "value": "详见事件描述", "type": "TEXTAREA"}]', NULL, NULL, 1, '155', '2025-01-26 15:11:00', '155', '2025-01-26 15:11:00', 0, 0);
INSERT INTO ae_adverse_event (id, event_no, template_id, category, level, status, reporter_id, reporter_type, report_time, dept_id, description, form_data, current_handler_id, current_dept_id, report_mode, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (167, 'AE20250221001', 2, 'NURSING', 4, 50, 155, 1, '2025-02-21 16:33:00', 201, '患者放疗后皮肤护理不当，出现II级放射性皮炎，局部红肿明显。', '[{"label": "事件发生时间", "value": "见上报时间", "type": "DATETIME"}, {"label": "事件类别", "value": "NURSING", "type": "SELECT"}, {"label": "事件经过", "value": "详见事件描述", "type": "TEXTAREA"}]', NULL, NULL, 2, '155', '2025-02-21 16:33:00', '155', '2025-02-21 16:33:00', 0, 0);
INSERT INTO ae_adverse_event (id, event_no, template_id, category, level, status, reporter_id, reporter_type, report_time, dept_id, description, form_data, current_handler_id, current_dept_id, report_mode, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (168, 'AE20250224001', 1, 'MEDICAL', 4, 50, 154, 1, '2025-02-24 13:50:00', 200, '放疗计划审核时发现剂量计算错误，实际处方剂量与计划剂量不一致。', '[{"label": "事件发生时间", "value": "见上报时间", "type": "DATETIME"}, {"label": "事件类别", "value": "MEDICAL", "type": "SELECT"}, {"label": "事件经过", "value": "详见事件描述", "type": "TEXTAREA"}]', NULL, NULL, 2, '154', '2025-02-24 13:50:00', '154', '2025-02-24 13:50:00', 0, 0);
INSERT INTO ae_adverse_event (id, event_no, template_id, category, level, status, reporter_id, reporter_type, report_time, dept_id, description, form_data, current_handler_id, current_dept_id, report_mode, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (169, 'AE20250206001', 2, 'NURSING', 3, 50, 155, 1, '2025-02-06 10:30:00', 201, '放疗等候区患者跌倒，造成软组织损伤，需要进一步检查处理。', '[{"label": "事件发生时间", "value": "见上报时间", "type": "DATETIME"}, {"label": "事件类别", "value": "NURSING", "type": "SELECT"}, {"label": "事件经过", "value": "详见事件描述", "type": "TEXTAREA"}]', NULL, NULL, 1, '155', '2025-02-06 10:30:00', '155', '2025-02-06 10:30:00', 0, 0);
INSERT INTO ae_adverse_event (id, event_no, template_id, category, level, status, reporter_id, reporter_type, report_time, dept_id, description, form_data, current_handler_id, current_dept_id, report_mode, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (170, 'AE20250221002', 1, 'MEDICAL', 4, 50, 155, 1, '2025-02-21 13:44:00', 201, '放疗计划审核时发现剂量计算错误，实际处方剂量与计划剂量不一致。', '[{"label": "事件发生时间", "value": "见上报时间", "type": "DATETIME"}, {"label": "事件类别", "value": "MEDICAL", "type": "SELECT"}, {"label": "事件经过", "value": "详见事件描述", "type": "TEXTAREA"}]', NULL, NULL, 1, '155', '2025-02-21 13:44:00', '155', '2025-02-21 13:44:00', 0, 0);
INSERT INTO ae_adverse_event (id, event_no, template_id, category, level, status, reporter_id, reporter_type, report_time, dept_id, description, form_data, current_handler_id, current_dept_id, report_mode, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (171, 'AE20250221003', 2, 'NURSING', 3, 50, 154, 1, '2025-02-21 12:23:00', 200, '放疗患者心理护理不到位，患者出现焦虑情绪，拒绝继续治疗。', '[{"label": "事件发生时间", "value": "见上报时间", "type": "DATETIME"}, {"label": "事件类别", "value": "NURSING", "type": "SELECT"}, {"label": "事件经过", "value": "详见事件描述", "type": "TEXTAREA"}]', NULL, NULL, 1, '154', '2025-02-21 12:23:00', '154', '2025-02-21 12:23:00', 0, 0);
INSERT INTO ae_adverse_event (id, event_no, template_id, category, level, status, reporter_id, reporter_type, report_time, dept_id, description, form_data, current_handler_id, current_dept_id, report_mode, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (172, 'AE20250218001', 1, 'MEDICAL', 3, 50, 154, 1, '2025-02-18 18:52:00', 200, '放疗设备晨检时发现输出剂量异常，偏差超过3%，需停机检修。', '[{"label": "事件发生时间", "value": "见上报时间", "type": "DATETIME"}, {"label": "事件类别", "value": "MEDICAL", "type": "SELECT"}, {"label": "事件经过", "value": "详见事件描述", "type": "TEXTAREA"}]', NULL, NULL, 1, '154', '2025-02-18 18:52:00', '154', '2025-02-18 18:52:00', 0, 0);
INSERT INTO ae_adverse_event (id, event_no, template_id, category, level, status, reporter_id, reporter_type, report_time, dept_id, description, form_data, current_handler_id, current_dept_id, report_mode, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (173, 'AE20250219001', 1, 'MEDICAL', 4, 60, 155, 1, '2025-02-19 16:09:00', 201, '患者在放疗过程中出现定位偏差，导致照射野偏移约5mm，经及时发现并纠正。', '[{"label": "事件发生时间", "value": "见上报时间", "type": "DATETIME"}, {"label": "事件类别", "value": "MEDICAL", "type": "SELECT"}, {"label": "事件经过", "value": "详见事件描述", "type": "TEXTAREA"}]', NULL, NULL, 1, '155', '2025-02-19 16:09:00', '155', '2025-02-19 16:09:00', 0, 0);
INSERT INTO ae_adverse_event (id, event_no, template_id, category, level, status, reporter_id, reporter_type, report_time, dept_id, description, form_data, current_handler_id, current_dept_id, report_mode, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (174, 'AE20250215001', 2, 'NURSING', 3, 50, 155, 1, '2025-02-15 10:32:00', 201, '患者放疗后皮肤护理不当，出现II级放射性皮炎，局部红肿明显。', '[{"label": "事件发生时间", "value": "见上报时间", "type": "DATETIME"}, {"label": "事件类别", "value": "NURSING", "type": "SELECT"}, {"label": "事件经过", "value": "详见事件描述", "type": "TEXTAREA"}]', NULL, NULL, 1, '155', '2025-02-15 10:32:00', '155', '2025-02-15 10:32:00', 0, 0);
INSERT INTO ae_adverse_event (id, event_no, template_id, category, level, status, reporter_id, reporter_type, report_time, dept_id, description, form_data, current_handler_id, current_dept_id, report_mode, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (175, 'AE20250202001', 3, 'INFECTION', 3, 50, 154, 2, '2025-02-02 14:22:00', 200, '放疗患者PICC置管处出现感染征象，需要抗感染治疗。', '[{"label": "事件发生时间", "value": "见上报时间", "type": "DATETIME"}, {"label": "事件类别", "value": "INFECTION", "type": "SELECT"}, {"label": "事件经过", "value": "详见事件描述", "type": "TEXTAREA"}]', NULL, NULL, 1, '154', '2025-02-02 14:22:00', '154', '2025-02-02 14:22:00', 0, 0);
INSERT INTO ae_adverse_event (id, event_no, template_id, category, level, status, reporter_id, reporter_type, report_time, dept_id, description, form_data, current_handler_id, current_dept_id, report_mode, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (176, 'AE20250329001', 4, 'DEVICE', 4, 50, 155, 1, '2025-03-29 14:28:00', 201, '放疗验证设备（EPID）图像采集失败，无法进行治疗验证。', '[{"label": "事件发生时间", "value": "见上报时间", "type": "DATETIME"}, {"label": "事件类别", "value": "DEVICE", "type": "SELECT"}, {"label": "事件经过", "value": "详见事件描述", "type": "TEXTAREA"}]', NULL, NULL, 2, '155', '2025-03-29 14:28:00', '155', '2025-03-29 14:28:00', 0, 0);
INSERT INTO ae_adverse_event (id, event_no, template_id, category, level, status, reporter_id, reporter_type, report_time, dept_id, description, form_data, current_handler_id, current_dept_id, report_mode, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (177, 'AE20250313001', 3, 'INFECTION', 3, 50, 154, 1, '2025-03-13 16:08:00', 200, '放疗设备表面采样检出致病菌，消毒流程存在漏洞。', '[{"label": "事件发生时间", "value": "见上报时间", "type": "DATETIME"}, {"label": "事件类别", "value": "INFECTION", "type": "SELECT"}, {"label": "事件经过", "value": "详见事件描述", "type": "TEXTAREA"}]', NULL, NULL, 2, '154', '2025-03-13 16:08:00', '154', '2025-03-13 16:08:00', 0, 0);
INSERT INTO ae_adverse_event (id, event_no, template_id, category, level, status, reporter_id, reporter_type, report_time, dept_id, description, form_data, current_handler_id, current_dept_id, report_mode, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (178, 'AE20250308001', 1, 'MEDICAL', 2, 60, 154, 1, '2025-03-08 15:22:00', 200, '放疗设备晨检时发现输出剂量异常，偏差超过3%，需停机检修。', '[{"label": "事件发生时间", "value": "见上报时间", "type": "DATETIME"}, {"label": "事件类别", "value": "MEDICAL", "type": "SELECT"}, {"label": "事件经过", "value": "详见事件描述", "type": "TEXTAREA"}]', NULL, NULL, 1, '154', '2025-03-08 15:22:00', '154', '2025-03-08 15:22:00', 0, 0);
INSERT INTO ae_adverse_event (id, event_no, template_id, category, level, status, reporter_id, reporter_type, report_time, dept_id, description, form_data, current_handler_id, current_dept_id, report_mode, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (179, 'AE20250307001', 2, 'NURSING', 3, 50, 154, 1, '2025-03-07 09:06:00', 200, '放疗前患者身份核对出现错误，差点给错误患者执行治疗。', '[{"label": "事件发生时间", "value": "见上报时间", "type": "DATETIME"}, {"label": "事件类别", "value": "NURSING", "type": "SELECT"}, {"label": "事件经过", "value": "详见事件描述", "type": "TEXTAREA"}]', NULL, NULL, 1, '154', '2025-03-07 09:06:00', '154', '2025-03-07 09:06:00', 0, 0);
INSERT INTO ae_adverse_event (id, event_no, template_id, category, level, status, reporter_id, reporter_type, report_time, dept_id, description, form_data, current_handler_id, current_dept_id, report_mode, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (180, 'AE20250317001', 4, 'DEVICE', 4, 20, 155, 1, '2025-03-17 12:14:00', 201, '放疗验证设备（EPID）图像采集失败，无法进行治疗验证。', '[{"label": "事件发生时间", "value": "见上报时间", "type": "DATETIME"}, {"label": "事件类别", "value": "DEVICE", "type": "SELECT"}, {"label": "事件经过", "value": "详见事件描述", "type": "TEXTAREA"}]', 157, 208, 1, '155', '2025-03-17 12:14:00', '155', '2025-03-17 12:14:00', 0, 0);
INSERT INTO ae_adverse_event (id, event_no, template_id, category, level, status, reporter_id, reporter_type, report_time, dept_id, description, form_data, current_handler_id, current_dept_id, report_mode, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (181, 'AE20250308002', 1, 'MEDICAL', 3, 50, 154, 1, '2025-03-08 14:19:00', 200, '放疗过程中患者体位移动，导致CBCT验证发现偏差超限，需重新摆位。', '[{"label": "事件发生时间", "value": "见上报时间", "type": "DATETIME"}, {"label": "事件类别", "value": "MEDICAL", "type": "SELECT"}, {"label": "事件经过", "value": "详见事件描述", "type": "TEXTAREA"}]', NULL, NULL, 1, '154', '2025-03-08 14:19:00', '154', '2025-03-08 14:19:00', 0, 0);
INSERT INTO ae_adverse_event (id, event_no, template_id, category, level, status, reporter_id, reporter_type, report_time, dept_id, description, form_data, current_handler_id, current_dept_id, report_mode, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (182, 'AE20250323001', 1, 'MEDICAL', 3, 50, 155, 1, '2025-03-23 14:26:00', 201, '放射治疗中发现患者合并用药与放疗存在相互作用，需调整用药方案。', '[{"label": "事件发生时间", "value": "见上报时间", "type": "DATETIME"}, {"label": "事件类别", "value": "MEDICAL", "type": "SELECT"}, {"label": "事件经过", "value": "详见事件描述", "type": "TEXTAREA"}]', NULL, NULL, 1, '155', '2025-03-23 14:26:00', '155', '2025-03-23 14:26:00', 0, 0);
INSERT INTO ae_adverse_event (id, event_no, template_id, category, level, status, reporter_id, reporter_type, report_time, dept_id, description, form_data, current_handler_id, current_dept_id, report_mode, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (183, 'AE20250331001', 2, 'NURSING', 3, 50, 155, 1, '2025-03-31 14:35:00', 201, '放疗前患者身份核对出现错误，差点给错误患者执行治疗。', '[{"label": "事件发生时间", "value": "见上报时间", "type": "DATETIME"}, {"label": "事件类别", "value": "NURSING", "type": "SELECT"}, {"label": "事件经过", "value": "详见事件描述", "type": "TEXTAREA"}]', NULL, NULL, 1, '155', '2025-03-31 14:35:00', '155', '2025-03-31 14:35:00', 0, 0);
INSERT INTO ae_adverse_event (id, event_no, template_id, category, level, status, reporter_id, reporter_type, report_time, dept_id, description, form_data, current_handler_id, current_dept_id, report_mode, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (184, 'AE20250302001', 3, 'INFECTION', 3, 80, 154, 1, '2025-03-02 12:24:00', 200, '放疗等候区通风系统故障，空气质量检测不达标。', '[{"label": "事件发生时间", "value": "见上报时间", "type": "DATETIME"}, {"label": "事件类别", "value": "INFECTION", "type": "SELECT"}, {"label": "事件经过", "value": "详见事件描述", "type": "TEXTAREA"}]', NULL, NULL, 1, '154', '2025-03-02 12:24:00', '154', '2025-03-02 12:24:00', 0, 0);
INSERT INTO ae_adverse_event (id, event_no, template_id, category, level, status, reporter_id, reporter_type, report_time, dept_id, description, form_data, current_handler_id, current_dept_id, report_mode, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (185, 'AE20250430001', 1, 'INFO', 4, 50, 154, 1, '2025-04-30 08:13:00', 200, '放疗信息系统与HIS系统接口异常，患者信息同步失败。', '[{"label": "事件发生时间", "value": "见上报时间", "type": "DATETIME"}, {"label": "事件类别", "value": "INFO", "type": "SELECT"}, {"label": "事件经过", "value": "详见事件描述", "type": "TEXTAREA"}]', NULL, NULL, 1, '154', '2025-04-30 08:13:00', '154', '2025-04-30 08:13:00', 0, 0);
INSERT INTO ae_adverse_event (id, event_no, template_id, category, level, status, reporter_id, reporter_type, report_time, dept_id, description, form_data, current_handler_id, current_dept_id, report_mode, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (186, 'AE20250418001', 1, 'MEDICAL', 3, 50, 155, 1, '2025-04-18 13:49:00', 201, '放疗过程中患者体位移动，导致CBCT验证发现偏差超限，需重新摆位。', '[{"label": "事件发生时间", "value": "见上报时间", "type": "DATETIME"}, {"label": "事件类别", "value": "MEDICAL", "type": "SELECT"}, {"label": "事件经过", "value": "详见事件描述", "type": "TEXTAREA"}]', NULL, NULL, 1, '155', '2025-04-18 13:49:00', '155', '2025-04-18 13:49:00', 0, 0);
INSERT INTO ae_adverse_event (id, event_no, template_id, category, level, status, reporter_id, reporter_type, report_time, dept_id, description, form_data, current_handler_id, current_dept_id, report_mode, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (187, 'AE20250430002', 2, 'NURSING', 1, 60, 154, 1, '2025-04-30 11:23:00', 200, '放疗等候区患者跌倒，造成软组织损伤，需要进一步检查处理。', '[{"label": "事件发生时间", "value": "见上报时间", "type": "DATETIME"}, {"label": "事件类别", "value": "NURSING", "type": "SELECT"}, {"label": "事件经过", "value": "详见事件描述", "type": "TEXTAREA"}]', NULL, NULL, 1, '154', '2025-04-30 11:23:00', '154', '2025-04-30 11:23:00', 0, 0);
INSERT INTO ae_adverse_event (id, event_no, template_id, category, level, status, reporter_id, reporter_type, report_time, dept_id, description, form_data, current_handler_id, current_dept_id, report_mode, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (188, 'AE20250405001', 1, 'MEDICAL', 3, 80, 154, 1, '2025-04-05 11:21:00', 200, '放疗计划中危及器官限量超标，经物理师复核后重新优化计划。', '[{"label": "事件发生时间", "value": "见上报时间", "type": "DATETIME"}, {"label": "事件类别", "value": "MEDICAL", "type": "SELECT"}, {"label": "事件经过", "value": "详见事件描述", "type": "TEXTAREA"}]', NULL, NULL, 1, '154', '2025-04-05 11:21:00', '154', '2025-04-05 11:21:00', 0, 0);
INSERT INTO ae_adverse_event (id, event_no, template_id, category, level, status, reporter_id, reporter_type, report_time, dept_id, description, form_data, current_handler_id, current_dept_id, report_mode, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (189, 'AE20250415001', 3, 'INFECTION', 2, 50, 155, 1, '2025-04-15 10:46:00', 201, '放疗科发现多重耐药菌感染病例，需要加强感染防控措施。', '[{"label": "事件发生时间", "value": "见上报时间", "type": "DATETIME"}, {"label": "事件类别", "value": "INFECTION", "type": "SELECT"}, {"label": "事件经过", "value": "详见事件描述", "type": "TEXTAREA"}]', NULL, NULL, 2, '155', '2025-04-15 10:46:00', '155', '2025-04-15 10:46:00', 0, 0);
INSERT INTO ae_adverse_event (id, event_no, template_id, category, level, status, reporter_id, reporter_type, report_time, dept_id, description, form_data, current_handler_id, current_dept_id, report_mode, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (190, 'AE20250425001', 1, 'MEDICAL', 3, 50, 154, 1, '2025-04-25 08:26:00', 200, '放疗计划中危及器官限量超标，经物理师复核后重新优化计划。', '[{"label": "事件发生时间", "value": "见上报时间", "type": "DATETIME"}, {"label": "事件类别", "value": "MEDICAL", "type": "SELECT"}, {"label": "事件经过", "value": "详见事件描述", "type": "TEXTAREA"}]', NULL, NULL, 1, '154', '2025-04-25 08:26:00', '154', '2025-04-25 08:26:00', 0, 0);
INSERT INTO ae_adverse_event (id, event_no, template_id, category, level, status, reporter_id, reporter_type, report_time, dept_id, description, form_data, current_handler_id, current_dept_id, report_mode, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (191, 'AE20250422001', 1, 'MEDICAL', 3, 50, 154, 1, '2025-04-22 15:01:00', 200, '放射治疗中发现患者合并用药与放疗存在相互作用，需调整用药方案。', '[{"label": "事件发生时间", "value": "见上报时间", "type": "DATETIME"}, {"label": "事件类别", "value": "MEDICAL", "type": "SELECT"}, {"label": "事件经过", "value": "详见事件描述", "type": "TEXTAREA"}]', NULL, NULL, 1, '154', '2025-04-22 15:01:00', '154', '2025-04-22 15:01:00', 0, 0);
INSERT INTO ae_adverse_event (id, event_no, template_id, category, level, status, reporter_id, reporter_type, report_time, dept_id, description, form_data, current_handler_id, current_dept_id, report_mode, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (192, 'AE20250426001', 1, 'INFO', 3, 30, 154, 1, '2025-04-26 10:06:00', 200, '放疗计划数据备份失败，存在数据丢失风险。', '[{"label": "事件发生时间", "value": "见上报时间", "type": "DATETIME"}, {"label": "事件类别", "value": "INFO", "type": "SELECT"}, {"label": "事件经过", "value": "详见事件描述", "type": "TEXTAREA"}]', 158, 1, 1, '154', '2025-04-26 10:06:00', '154', '2025-04-26 10:06:00', 0, 0);
INSERT INTO ae_adverse_event (id, event_no, template_id, category, level, status, reporter_id, reporter_type, report_time, dept_id, description, form_data, current_handler_id, current_dept_id, report_mode, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (193, 'AE20250415002', 5, 'LOGISTICS', 3, 10, 154, 1, '2025-04-15 17:15:00', 200, '放疗科供电系统不稳定，设备意外断电导致治疗中断。', '[{"label": "事件发生时间", "value": "见上报时间", "type": "DATETIME"}, {"label": "事件类别", "value": "LOGISTICS", "type": "SELECT"}, {"label": "事件经过", "value": "详见事件描述", "type": "TEXTAREA"}]', 156, 200, 2, '154', '2025-04-15 17:15:00', '154', '2025-04-15 17:15:00', 0, 0);
INSERT INTO ae_adverse_event (id, event_no, template_id, category, level, status, reporter_id, reporter_type, report_time, dept_id, description, form_data, current_handler_id, current_dept_id, report_mode, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (194, 'AE20250521001', 1, 'MEDICAL', 3, 50, 155, 1, '2025-05-21 08:44:00', 201, '放疗设备晨检时发现输出剂量异常，偏差超过3%，需停机检修。', '[{"label": "事件发生时间", "value": "见上报时间", "type": "DATETIME"}, {"label": "事件类别", "value": "MEDICAL", "type": "SELECT"}, {"label": "事件经过", "value": "详见事件描述", "type": "TEXTAREA"}]', NULL, NULL, 1, '155', '2025-05-21 08:44:00', '155', '2025-05-21 08:44:00', 0, 0);
INSERT INTO ae_adverse_event (id, event_no, template_id, category, level, status, reporter_id, reporter_type, report_time, dept_id, description, form_data, current_handler_id, current_dept_id, report_mode, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (195, 'AE20250507001', 1, 'MEDICAL', 4, 50, 155, 2, '2025-05-07 17:30:00', 201, '患者在放疗过程中出现严重皮肤反应，III级放射性皮炎，需要暂停治疗。', '[{"label": "事件发生时间", "value": "见上报时间", "type": "DATETIME"}, {"label": "事件类别", "value": "MEDICAL", "type": "SELECT"}, {"label": "事件经过", "value": "详见事件描述", "type": "TEXTAREA"}]', NULL, NULL, 1, '155', '2025-05-07 17:30:00', '155', '2025-05-07 17:30:00', 0, 0);
INSERT INTO ae_adverse_event (id, event_no, template_id, category, level, status, reporter_id, reporter_type, report_time, dept_id, description, form_data, current_handler_id, current_dept_id, report_mode, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (196, 'AE20250525001', 1, 'MEDICAL', 2, 70, 154, 1, '2025-05-25 14:59:00', 200, '患者在放疗过程中出现严重皮肤反应，III级放射性皮炎，需要暂停治疗。', '[{"label": "事件发生时间", "value": "见上报时间", "type": "DATETIME"}, {"label": "事件类别", "value": "MEDICAL", "type": "SELECT"}, {"label": "事件经过", "value": "详见事件描述", "type": "TEXTAREA"}]', NULL, NULL, 2, '154', '2025-05-25 14:59:00', '154', '2025-05-25 14:59:00', 0, 0);
INSERT INTO ae_adverse_event (id, event_no, template_id, category, level, status, reporter_id, reporter_type, report_time, dept_id, description, form_data, current_handler_id, current_dept_id, report_mode, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (197, 'AE20250526001', 3, 'INFECTION', 3, 50, 154, 1, '2025-05-26 09:32:00', 200, '放疗等候区通风系统故障，空气质量检测不达标。', '[{"label": "事件发生时间", "value": "见上报时间", "type": "DATETIME"}, {"label": "事件类别", "value": "INFECTION", "type": "SELECT"}, {"label": "事件经过", "value": "详见事件描述", "type": "TEXTAREA"}]', NULL, NULL, 2, '154', '2025-05-26 09:32:00', '154', '2025-05-26 09:32:00', 0, 0);
INSERT INTO ae_adverse_event (id, event_no, template_id, category, level, status, reporter_id, reporter_type, report_time, dept_id, description, form_data, current_handler_id, current_dept_id, report_mode, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (198, 'AE20250501001', 3, 'INFECTION', 3, 50, 154, 1, '2025-05-01 18:17:00', 200, '放疗科医护人员手卫生依从性检查发现不合格，需要整改。', '[{"label": "事件发生时间", "value": "见上报时间", "type": "DATETIME"}, {"label": "事件类别", "value": "INFECTION", "type": "SELECT"}, {"label": "事件经过", "value": "详见事件描述", "type": "TEXTAREA"}]', NULL, NULL, 2, '154', '2025-05-01 18:17:00', '154', '2025-05-01 18:17:00', 0, 0);
INSERT INTO ae_adverse_event (id, event_no, template_id, category, level, status, reporter_id, reporter_type, report_time, dept_id, description, form_data, current_handler_id, current_dept_id, report_mode, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (199, 'AE20250510001', 1, 'MEDICAL', 3, 80, 155, 1, '2025-05-10 11:45:00', 201, '患者在放疗过程中出现定位偏差，导致照射野偏移约5mm，经及时发现并纠正。', '[{"label": "事件发生时间", "value": "见上报时间", "type": "DATETIME"}, {"label": "事件类别", "value": "MEDICAL", "type": "SELECT"}, {"label": "事件经过", "value": "详见事件描述", "type": "TEXTAREA"}]', NULL, NULL, 1, '155', '2025-05-10 11:45:00', '155', '2025-05-10 11:45:00', 0, 0);
INSERT INTO ae_adverse_event (id, event_no, template_id, category, level, status, reporter_id, reporter_type, report_time, dept_id, description, form_data, current_handler_id, current_dept_id, report_mode, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (200, 'AE20250531001', 2, 'NURSING', 3, 60, 154, 1, '2025-05-31 12:28:00', 200, '患者放疗后皮肤护理不当，出现II级放射性皮炎，局部红肿明显。', '[{"label": "事件发生时间", "value": "见上报时间", "type": "DATETIME"}, {"label": "事件类别", "value": "NURSING", "type": "SELECT"}, {"label": "事件经过", "value": "详见事件描述", "type": "TEXTAREA"}]', NULL, NULL, 1, '154', '2025-05-31 12:28:00', '154', '2025-05-31 12:28:00', 0, 0);
INSERT INTO ae_adverse_event (id, event_no, template_id, category, level, status, reporter_id, reporter_type, report_time, dept_id, description, form_data, current_handler_id, current_dept_id, report_mode, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (201, 'AE20250512001', 2, 'NURSING', 4, 20, 155, 1, '2025-05-12 16:05:00', 201, '放疗患者静脉通路维护不当，导致药物外渗，局部肿胀。', '[{"label": "事件发生时间", "value": "见上报时间", "type": "DATETIME"}, {"label": "事件类别", "value": "NURSING", "type": "SELECT"}, {"label": "事件经过", "value": "详见事件描述", "type": "TEXTAREA"}]', 157, 205, 1, '155', '2025-05-12 16:05:00', '155', '2025-05-12 16:05:00', 0, 0);
INSERT INTO ae_adverse_event (id, event_no, template_id, category, level, status, reporter_id, reporter_type, report_time, dept_id, description, form_data, current_handler_id, current_dept_id, report_mode, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (202, 'AE20250506001', 2, 'NURSING', 3, 50, 154, 1, '2025-05-06 10:17:00', 200, '患者放疗后出现严重恶心呕吐，护理记录不完整，未及时报告医生。', '[{"label": "事件发生时间", "value": "见上报时间", "type": "DATETIME"}, {"label": "事件类别", "value": "NURSING", "type": "SELECT"}, {"label": "事件经过", "value": "详见事件描述", "type": "TEXTAREA"}]', NULL, NULL, 1, '154', '2025-05-06 10:17:00', '154', '2025-05-06 10:17:00', 0, 0);
INSERT INTO ae_adverse_event (id, event_no, template_id, category, level, status, reporter_id, reporter_type, report_time, dept_id, description, form_data, current_handler_id, current_dept_id, report_mode, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (203, 'AE20250521002', 2, 'NURSING', 3, 50, 154, 1, '2025-05-21 15:38:00', 200, '放疗等候区患者跌倒，造成软组织损伤，需要进一步检查处理。', '[{"label": "事件发生时间", "value": "见上报时间", "type": "DATETIME"}, {"label": "事件类别", "value": "NURSING", "type": "SELECT"}, {"label": "事件经过", "value": "详见事件描述", "type": "TEXTAREA"}]', NULL, NULL, 2, '154', '2025-05-21 15:38:00', '154', '2025-05-21 15:38:00', 0, 0);
INSERT INTO ae_adverse_event (id, event_no, template_id, category, level, status, reporter_id, reporter_type, report_time, dept_id, description, form_data, current_handler_id, current_dept_id, report_mode, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (204, 'AE20250627001', 1, 'MEDICAL', 3, 50, 154, 1, '2025-06-27 18:38:00', 200, '放疗设备晨检时发现输出剂量异常，偏差超过3%，需停机检修。', '[{"label": "事件发生时间", "value": "见上报时间", "type": "DATETIME"}, {"label": "事件类别", "value": "MEDICAL", "type": "SELECT"}, {"label": "事件经过", "value": "详见事件描述", "type": "TEXTAREA"}]', NULL, NULL, 1, '154', '2025-06-27 18:38:00', '154', '2025-06-27 18:38:00', 0, 0);
INSERT INTO ae_adverse_event (id, event_no, template_id, category, level, status, reporter_id, reporter_type, report_time, dept_id, description, form_data, current_handler_id, current_dept_id, report_mode, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (205, 'AE20250611001', 4, 'DEVICE', 3, 50, 154, 2, '2025-06-11 14:17:00', 200, '放疗设备MLC叶片运动异常，影响调强放疗的实施质量。', '[{"label": "事件发生时间", "value": "见上报时间", "type": "DATETIME"}, {"label": "事件类别", "value": "DEVICE", "type": "SELECT"}, {"label": "事件经过", "value": "详见事件描述", "type": "TEXTAREA"}]', NULL, NULL, 1, '154', '2025-06-11 14:17:00', '154', '2025-06-11 14:17:00', 0, 0);
INSERT INTO ae_adverse_event (id, event_no, template_id, category, level, status, reporter_id, reporter_type, report_time, dept_id, description, form_data, current_handler_id, current_dept_id, report_mode, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (206, 'AE20250623001', 3, 'INFECTION', 4, 50, 154, 1, '2025-06-23 11:28:00', 200, '放疗设备表面采样检出致病菌，消毒流程存在漏洞。', '[{"label": "事件发生时间", "value": "见上报时间", "type": "DATETIME"}, {"label": "事件类别", "value": "INFECTION", "type": "SELECT"}, {"label": "事件经过", "value": "详见事件描述", "type": "TEXTAREA"}]', NULL, NULL, 1, '154', '2025-06-23 11:28:00', '154', '2025-06-23 11:28:00', 0, 0);
INSERT INTO ae_adverse_event (id, event_no, template_id, category, level, status, reporter_id, reporter_type, report_time, dept_id, description, form_data, current_handler_id, current_dept_id, report_mode, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (207, 'AE20250623002', 2, 'NURSING', 3, 50, 155, 1, '2025-06-23 14:50:00', 201, '放疗等候区患者跌倒，造成软组织损伤，需要进一步检查处理。', '[{"label": "事件发生时间", "value": "见上报时间", "type": "DATETIME"}, {"label": "事件类别", "value": "NURSING", "type": "SELECT"}, {"label": "事件经过", "value": "详见事件描述", "type": "TEXTAREA"}]', NULL, NULL, 1, '155', '2025-06-23 14:50:00', '155', '2025-06-23 14:50:00', 0, 0);
INSERT INTO ae_adverse_event (id, event_no, template_id, category, level, status, reporter_id, reporter_type, report_time, dept_id, description, form_data, current_handler_id, current_dept_id, report_mode, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (208, 'AE20250623003', 2, 'NURSING', 2, 70, 154, 1, '2025-06-23 16:38:00', 200, '患者放疗后出现严重恶心呕吐，护理记录不完整，未及时报告医生。', '[{"label": "事件发生时间", "value": "见上报时间", "type": "DATETIME"}, {"label": "事件类别", "value": "NURSING", "type": "SELECT"}, {"label": "事件经过", "value": "详见事件描述", "type": "TEXTAREA"}]', NULL, NULL, 1, '154', '2025-06-23 16:38:00', '154', '2025-06-23 16:38:00', 0, 0);
INSERT INTO ae_adverse_event (id, event_no, template_id, category, level, status, reporter_id, reporter_type, report_time, dept_id, description, form_data, current_handler_id, current_dept_id, report_mode, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (209, 'AE20250621001', 2, 'NURSING', 4, 50, 154, 1, '2025-06-21 14:48:00', 200, '放疗患者静脉通路维护不当，导致药物外渗，局部肿胀。', '[{"label": "事件发生时间", "value": "见上报时间", "type": "DATETIME"}, {"label": "事件类别", "value": "NURSING", "type": "SELECT"}, {"label": "事件经过", "value": "详见事件描述", "type": "TEXTAREA"}]', NULL, NULL, 1, '154', '2025-06-21 14:48:00', '154', '2025-06-21 14:48:00', 0, 0);
INSERT INTO ae_adverse_event (id, event_no, template_id, category, level, status, reporter_id, reporter_type, report_time, dept_id, description, form_data, current_handler_id, current_dept_id, report_mode, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (210, 'AE20250612001', 3, 'INFECTION', 3, 50, 154, 1, '2025-06-12 14:29:00', 200, '放疗设备表面采样检出致病菌，消毒流程存在漏洞。', '[{"label": "事件发生时间", "value": "见上报时间", "type": "DATETIME"}, {"label": "事件类别", "value": "INFECTION", "type": "SELECT"}, {"label": "事件经过", "value": "详见事件描述", "type": "TEXTAREA"}]', NULL, NULL, 1, '154', '2025-06-12 14:29:00', '154', '2025-06-12 14:29:00', 0, 0);
INSERT INTO ae_adverse_event (id, event_no, template_id, category, level, status, reporter_id, reporter_type, report_time, dept_id, description, form_data, current_handler_id, current_dept_id, report_mode, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (211, 'AE20250612002', 2, 'NURSING', 3, 80, 155, 1, '2025-06-12 12:21:00', 201, '患者放疗后皮肤护理不当，出现II级放射性皮炎，局部红肿明显。', '[{"label": "事件发生时间", "value": "见上报时间", "type": "DATETIME"}, {"label": "事件类别", "value": "NURSING", "type": "SELECT"}, {"label": "事件经过", "value": "详见事件描述", "type": "TEXTAREA"}]', NULL, NULL, 1, '155', '2025-06-12 12:21:00', '155', '2025-06-12 12:21:00', 0, 0);
INSERT INTO ae_adverse_event (id, event_no, template_id, category, level, status, reporter_id, reporter_type, report_time, dept_id, description, form_data, current_handler_id, current_dept_id, report_mode, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (212, 'AE20250626001', 4, 'DEVICE', 3, 50, 154, 2, '2025-06-26 09:01:00', 200, '放疗设备MLC叶片运动异常，影响调强放疗的实施质量。', '[{"label": "事件发生时间", "value": "见上报时间", "type": "DATETIME"}, {"label": "事件类别", "value": "DEVICE", "type": "SELECT"}, {"label": "事件经过", "value": "详见事件描述", "type": "TEXTAREA"}]', NULL, NULL, 1, '154', '2025-06-26 09:01:00', '154', '2025-06-26 09:01:00', 0, 0);
INSERT INTO ae_adverse_event (id, event_no, template_id, category, level, status, reporter_id, reporter_type, report_time, dept_id, description, form_data, current_handler_id, current_dept_id, report_mode, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (213, 'AE20250608001', 1, 'MEDICAL', 3, 50, 155, 1, '2025-06-08 14:40:00', 201, '放疗设备晨检时发现输出剂量异常，偏差超过3%，需停机检修。', '[{"label": "事件发生时间", "value": "见上报时间", "type": "DATETIME"}, {"label": "事件类别", "value": "MEDICAL", "type": "SELECT"}, {"label": "事件经过", "value": "详见事件描述", "type": "TEXTAREA"}]', NULL, NULL, 1, '155', '2025-06-08 14:40:00', '155', '2025-06-08 14:40:00', 0, 0);
INSERT INTO ae_adverse_event (id, event_no, template_id, category, level, status, reporter_id, reporter_type, report_time, dept_id, description, form_data, current_handler_id, current_dept_id, report_mode, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (214, 'AE20250607001', 3, 'INFECTION', 4, 50, 154, 1, '2025-06-07 12:48:00', 200, '放疗患者PICC置管处出现感染征象，需要抗感染治疗。', '[{"label": "事件发生时间", "value": "见上报时间", "type": "DATETIME"}, {"label": "事件类别", "value": "INFECTION", "type": "SELECT"}, {"label": "事件经过", "value": "详见事件描述", "type": "TEXTAREA"}]', NULL, NULL, 1, '154', '2025-06-07 12:48:00', '154', '2025-06-07 12:48:00', 0, 0);
INSERT INTO ae_adverse_event (id, event_no, template_id, category, level, status, reporter_id, reporter_type, report_time, dept_id, description, form_data, current_handler_id, current_dept_id, report_mode, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (215, 'AE20250731001', 2, 'NURSING', 3, 60, 154, 1, '2025-07-31 18:20:00', 200, '放疗等候区患者跌倒，造成软组织损伤，需要进一步检查处理。', '[{"label": "事件发生时间", "value": "见上报时间", "type": "DATETIME"}, {"label": "事件类别", "value": "NURSING", "type": "SELECT"}, {"label": "事件经过", "value": "详见事件描述", "type": "TEXTAREA"}]', NULL, NULL, 2, '154', '2025-07-31 18:20:00', '154', '2025-07-31 18:20:00', 0, 0);
INSERT INTO ae_adverse_event (id, event_no, template_id, category, level, status, reporter_id, reporter_type, report_time, dept_id, description, form_data, current_handler_id, current_dept_id, report_mode, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (216, 'AE20250730001', 1, 'MEDICAL', 2, 50, 154, 1, '2025-07-30 17:37:00', 200, '放射治疗中发现患者合并用药与放疗存在相互作用，需调整用药方案。', '[{"label": "事件发生时间", "value": "见上报时间", "type": "DATETIME"}, {"label": "事件类别", "value": "MEDICAL", "type": "SELECT"}, {"label": "事件经过", "value": "详见事件描述", "type": "TEXTAREA"}]', NULL, NULL, 1, '154', '2025-07-30 17:37:00', '154', '2025-07-30 17:37:00', 0, 0);
INSERT INTO ae_adverse_event (id, event_no, template_id, category, level, status, reporter_id, reporter_type, report_time, dept_id, description, form_data, current_handler_id, current_dept_id, report_mode, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (217, 'AE20250706001', 2, 'NURSING', 4, 50, 154, 1, '2025-07-06 15:40:00', 200, '放疗等候区患者跌倒，造成软组织损伤，需要进一步检查处理。', '[{"label": "事件发生时间", "value": "见上报时间", "type": "DATETIME"}, {"label": "事件类别", "value": "NURSING", "type": "SELECT"}, {"label": "事件经过", "value": "详见事件描述", "type": "TEXTAREA"}]', NULL, NULL, 1, '154', '2025-07-06 15:40:00', '154', '2025-07-06 15:40:00', 0, 0);
INSERT INTO ae_adverse_event (id, event_no, template_id, category, level, status, reporter_id, reporter_type, report_time, dept_id, description, form_data, current_handler_id, current_dept_id, report_mode, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (218, 'AE20250731002', 1, 'MEDICAL', 4, 80, 155, 1, '2025-07-31 08:31:00', 201, '患者在放疗过程中出现定位偏差，导致照射野偏移约5mm，经及时发现并纠正。', '[{"label": "事件发生时间", "value": "见上报时间", "type": "DATETIME"}, {"label": "事件类别", "value": "MEDICAL", "type": "SELECT"}, {"label": "事件经过", "value": "详见事件描述", "type": "TEXTAREA"}]', NULL, NULL, 1, '155', '2025-07-31 08:31:00', '155', '2025-07-31 08:31:00', 0, 0);
INSERT INTO ae_adverse_event (id, event_no, template_id, category, level, status, reporter_id, reporter_type, report_time, dept_id, description, form_data, current_handler_id, current_dept_id, report_mode, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (219, 'AE20250726001', 1, 'MEDICAL', 3, 80, 155, 1, '2025-07-26 11:18:00', 201, '放疗计划审核时发现剂量计算错误，实际处方剂量与计划剂量不一致。', '[{"label": "事件发生时间", "value": "见上报时间", "type": "DATETIME"}, {"label": "事件类别", "value": "MEDICAL", "type": "SELECT"}, {"label": "事件经过", "value": "详见事件描述", "type": "TEXTAREA"}]', NULL, NULL, 1, '155', '2025-07-26 11:18:00', '155', '2025-07-26 11:18:00', 0, 0);
INSERT INTO ae_adverse_event (id, event_no, template_id, category, level, status, reporter_id, reporter_type, report_time, dept_id, description, form_data, current_handler_id, current_dept_id, report_mode, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (220, 'AE20250719001', 3, 'INFECTION', 4, 40, 155, 1, '2025-07-19 09:17:00', 201, '放疗科发现多重耐药菌感染病例，需要加强感染防控措施。', '[{"label": "事件发生时间", "value": "见上报时间", "type": "DATETIME"}, {"label": "事件类别", "value": "INFECTION", "type": "SELECT"}, {"label": "事件经过", "value": "详见事件描述", "type": "TEXTAREA"}]', 159, 206, 1, '155', '2025-07-19 09:17:00', '155', '2025-07-19 09:17:00', 0, 0);
INSERT INTO ae_adverse_event (id, event_no, template_id, category, level, status, reporter_id, reporter_type, report_time, dept_id, description, form_data, current_handler_id, current_dept_id, report_mode, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (221, 'AE20250724001', 1, 'MEDICAL', 4, 40, 154, 1, '2025-07-24 18:48:00', 200, '放疗设备晨检时发现输出剂量异常，偏差超过3%，需停机检修。', '[{"label": "事件发生时间", "value": "见上报时间", "type": "DATETIME"}, {"label": "事件类别", "value": "MEDICAL", "type": "SELECT"}, {"label": "事件经过", "value": "详见事件描述", "type": "TEXTAREA"}]', 159, 206, 1, '154', '2025-07-24 18:48:00', '154', '2025-07-24 18:48:00', 0, 0);
INSERT INTO ae_adverse_event (id, event_no, template_id, category, level, status, reporter_id, reporter_type, report_time, dept_id, description, form_data, current_handler_id, current_dept_id, report_mode, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (222, 'AE20250707001', 2, 'NURSING', 4, 50, 155, 1, '2025-07-07 17:44:00', 201, '放疗等候区患者跌倒，造成软组织损伤，需要进一步检查处理。', '[{"label": "事件发生时间", "value": "见上报时间", "type": "DATETIME"}, {"label": "事件类别", "value": "NURSING", "type": "SELECT"}, {"label": "事件经过", "value": "详见事件描述", "type": "TEXTAREA"}]', NULL, NULL, 1, '155', '2025-07-07 17:44:00', '155', '2025-07-07 17:44:00', 0, 0);
INSERT INTO ae_adverse_event (id, event_no, template_id, category, level, status, reporter_id, reporter_type, report_time, dept_id, description, form_data, current_handler_id, current_dept_id, report_mode, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (223, 'AE20250720001', 2, 'NURSING', 4, 50, 155, 1, '2025-07-20 16:10:00', 201, '放疗患者心理护理不到位，患者出现焦虑情绪，拒绝继续治疗。', '[{"label": "事件发生时间", "value": "见上报时间", "type": "DATETIME"}, {"label": "事件类别", "value": "NURSING", "type": "SELECT"}, {"label": "事件经过", "value": "详见事件描述", "type": "TEXTAREA"}]', NULL, NULL, 2, '155', '2025-07-20 16:10:00', '155', '2025-07-20 16:10:00', 0, 0);
INSERT INTO ae_adverse_event (id, event_no, template_id, category, level, status, reporter_id, reporter_type, report_time, dept_id, description, form_data, current_handler_id, current_dept_id, report_mode, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (224, 'AE20250726002', 1, 'MEDICAL', 3, 50, 154, 1, '2025-07-26 14:58:00', 200, '放射治疗中发现患者合并用药与放疗存在相互作用，需调整用药方案。', '[{"label": "事件发生时间", "value": "见上报时间", "type": "DATETIME"}, {"label": "事件类别", "value": "MEDICAL", "type": "SELECT"}, {"label": "事件经过", "value": "详见事件描述", "type": "TEXTAREA"}]', NULL, NULL, 1, '154', '2025-07-26 14:58:00', '154', '2025-07-26 14:58:00', 0, 0);
INSERT INTO ae_adverse_event (id, event_no, template_id, category, level, status, reporter_id, reporter_type, report_time, dept_id, description, form_data, current_handler_id, current_dept_id, report_mode, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (225, 'AE20250716001', 2, 'NURSING', 3, 50, 155, 1, '2025-07-16 10:36:00', 201, '放疗等候区患者跌倒，造成软组织损伤，需要进一步检查处理。', '[{"label": "事件发生时间", "value": "见上报时间", "type": "DATETIME"}, {"label": "事件类别", "value": "NURSING", "type": "SELECT"}, {"label": "事件经过", "value": "详见事件描述", "type": "TEXTAREA"}]', NULL, NULL, 1, '155', '2025-07-16 10:36:00', '155', '2025-07-16 10:36:00', 0, 0);
INSERT INTO ae_adverse_event (id, event_no, template_id, category, level, status, reporter_id, reporter_type, report_time, dept_id, description, form_data, current_handler_id, current_dept_id, report_mode, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (226, 'AE20250715001', 2, 'NURSING', 4, 70, 154, 1, '2025-07-15 15:20:00', 200, '放疗期间患者营养评估不到位，体重下降超过10%，影响治疗效果。', '[{"label": "事件发生时间", "value": "见上报时间", "type": "DATETIME"}, {"label": "事件类别", "value": "NURSING", "type": "SELECT"}, {"label": "事件经过", "value": "详见事件描述", "type": "TEXTAREA"}]', NULL, NULL, 1, '154', '2025-07-15 15:20:00', '154', '2025-07-15 15:20:00', 0, 0);
INSERT INTO ae_adverse_event (id, event_no, template_id, category, level, status, reporter_id, reporter_type, report_time, dept_id, description, form_data, current_handler_id, current_dept_id, report_mode, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (227, 'AE20250807001', 1, 'MEDICAL', 3, 60, 155, 1, '2025-08-07 14:52:00', 201, '患者在放疗过程中出现定位偏差，导致照射野偏移约5mm，经及时发现并纠正。', '[{"label": "事件发生时间", "value": "见上报时间", "type": "DATETIME"}, {"label": "事件类别", "value": "MEDICAL", "type": "SELECT"}, {"label": "事件经过", "value": "详见事件描述", "type": "TEXTAREA"}]', NULL, NULL, 1, '155', '2025-08-07 14:52:00', '155', '2025-08-07 14:52:00', 0, 0);
INSERT INTO ae_adverse_event (id, event_no, template_id, category, level, status, reporter_id, reporter_type, report_time, dept_id, description, form_data, current_handler_id, current_dept_id, report_mode, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (228, 'AE20250802001', 3, 'INFECTION', 3, 50, 154, 2, '2025-08-02 09:40:00', 200, '放疗设备表面采样检出致病菌，消毒流程存在漏洞。', '[{"label": "事件发生时间", "value": "见上报时间", "type": "DATETIME"}, {"label": "事件类别", "value": "INFECTION", "type": "SELECT"}, {"label": "事件经过", "value": "详见事件描述", "type": "TEXTAREA"}]', NULL, NULL, 1, '154', '2025-08-02 09:40:00', '154', '2025-08-02 09:40:00', 0, 0);
INSERT INTO ae_adverse_event (id, event_no, template_id, category, level, status, reporter_id, reporter_type, report_time, dept_id, description, form_data, current_handler_id, current_dept_id, report_mode, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (229, 'AE20250829001', 1, 'MEDICAL', 4, 50, 155, 1, '2025-08-29 18:19:00', 201, '患者放疗计划中靶区勾画存在争议，多学科会诊后修改了治疗方案。', '[{"label": "事件发生时间", "value": "见上报时间", "type": "DATETIME"}, {"label": "事件类别", "value": "MEDICAL", "type": "SELECT"}, {"label": "事件经过", "value": "详见事件描述", "type": "TEXTAREA"}]', NULL, NULL, 1, '155', '2025-08-29 18:19:00', '155', '2025-08-29 18:19:00', 0, 0);
INSERT INTO ae_adverse_event (id, event_no, template_id, category, level, status, reporter_id, reporter_type, report_time, dept_id, description, form_data, current_handler_id, current_dept_id, report_mode, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (230, 'AE20250824001', 3, 'INFECTION', 4, 60, 154, 1, '2025-08-24 11:27:00', 200, '放疗科发现多重耐药菌感染病例，需要加强感染防控措施。', '[{"label": "事件发生时间", "value": "见上报时间", "type": "DATETIME"}, {"label": "事件类别", "value": "INFECTION", "type": "SELECT"}, {"label": "事件经过", "value": "详见事件描述", "type": "TEXTAREA"}]', NULL, NULL, 1, '154', '2025-08-24 11:27:00', '154', '2025-08-24 11:27:00', 0, 0);
INSERT INTO ae_adverse_event (id, event_no, template_id, category, level, status, reporter_id, reporter_type, report_time, dept_id, description, form_data, current_handler_id, current_dept_id, report_mode, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (231, 'AE20250823001', 1, 'MEDICAL', 4, 50, 154, 1, '2025-08-23 13:52:00', 200, '患者放疗计划中靶区勾画存在争议，多学科会诊后修改了治疗方案。', '[{"label": "事件发生时间", "value": "见上报时间", "type": "DATETIME"}, {"label": "事件类别", "value": "MEDICAL", "type": "SELECT"}, {"label": "事件经过", "value": "详见事件描述", "type": "TEXTAREA"}]', NULL, NULL, 1, '154', '2025-08-23 13:52:00', '154', '2025-08-23 13:52:00', 0, 0);
INSERT INTO ae_adverse_event (id, event_no, template_id, category, level, status, reporter_id, reporter_type, report_time, dept_id, description, form_data, current_handler_id, current_dept_id, report_mode, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (232, 'AE20250805001', 4, 'DEVICE', 4, 60, 154, 1, '2025-08-05 14:49:00', 200, '放疗定位CT图像质量下降，影响靶区勾画精度。', '[{"label": "事件发生时间", "value": "见上报时间", "type": "DATETIME"}, {"label": "事件类别", "value": "DEVICE", "type": "SELECT"}, {"label": "事件经过", "value": "详见事件描述", "type": "TEXTAREA"}]', NULL, NULL, 1, '154', '2025-08-05 14:49:00', '154', '2025-08-05 14:49:00', 0, 0);
INSERT INTO ae_adverse_event (id, event_no, template_id, category, level, status, reporter_id, reporter_type, report_time, dept_id, description, form_data, current_handler_id, current_dept_id, report_mode, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (233, 'AE20250821001', 2, 'NURSING', 4, 40, 154, 1, '2025-08-21 10:58:00', 200, '放疗患者心理护理不到位，患者出现焦虑情绪，拒绝继续治疗。', '[{"label": "事件发生时间", "value": "见上报时间", "type": "DATETIME"}, {"label": "事件类别", "value": "NURSING", "type": "SELECT"}, {"label": "事件经过", "value": "详见事件描述", "type": "TEXTAREA"}]', 159, 206, 1, '154', '2025-08-21 10:58:00', '154', '2025-08-21 10:58:00', 0, 0);
INSERT INTO ae_adverse_event (id, event_no, template_id, category, level, status, reporter_id, reporter_type, report_time, dept_id, description, form_data, current_handler_id, current_dept_id, report_mode, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (234, 'AE20250805002', 2, 'NURSING', 3, 30, 155, 1, '2025-08-05 11:17:00', 201, '放疗前患者身份核对出现错误，差点给错误患者执行治疗。', '[{"label": "事件发生时间", "value": "见上报时间", "type": "DATETIME"}, {"label": "事件类别", "value": "NURSING", "type": "SELECT"}, {"label": "事件经过", "value": "详见事件描述", "type": "TEXTAREA"}]', 158, 1, 1, '155', '2025-08-05 11:17:00', '155', '2025-08-05 11:17:00', 0, 0);
INSERT INTO ae_adverse_event (id, event_no, template_id, category, level, status, reporter_id, reporter_type, report_time, dept_id, description, form_data, current_handler_id, current_dept_id, report_mode, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (235, 'AE20250824002', 2, 'NURSING', 4, 50, 154, 1, '2025-08-24 14:18:00', 200, '放疗等候区患者跌倒，造成软组织损伤，需要进一步检查处理。', '[{"label": "事件发生时间", "value": "见上报时间", "type": "DATETIME"}, {"label": "事件类别", "value": "NURSING", "type": "SELECT"}, {"label": "事件经过", "value": "详见事件描述", "type": "TEXTAREA"}]', NULL, NULL, 1, '154', '2025-08-24 14:18:00', '154', '2025-08-24 14:18:00', 0, 0);
INSERT INTO ae_adverse_event (id, event_no, template_id, category, level, status, reporter_id, reporter_type, report_time, dept_id, description, form_data, current_handler_id, current_dept_id, report_mode, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (236, 'AE20250830001', 2, 'NURSING', 4, 10, 155, 1, '2025-08-30 13:08:00', 201, '放疗等候区患者跌倒，造成软组织损伤，需要进一步检查处理。', '[{"label": "事件发生时间", "value": "见上报时间", "type": "DATETIME"}, {"label": "事件类别", "value": "NURSING", "type": "SELECT"}, {"label": "事件经过", "value": "详见事件描述", "type": "TEXTAREA"}]', 156, 201, 1, '155', '2025-08-30 13:08:00', '155', '2025-08-30 13:08:00', 0, 0);
INSERT INTO ae_adverse_event (id, event_no, template_id, category, level, status, reporter_id, reporter_type, report_time, dept_id, description, form_data, current_handler_id, current_dept_id, report_mode, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (237, 'AE20250807002', 1, 'MEDICAL', 4, 50, 155, 1, '2025-08-07 08:59:00', 201, '患者在放疗过程中出现严重皮肤反应，III级放射性皮炎，需要暂停治疗。', '[{"label": "事件发生时间", "value": "见上报时间", "type": "DATETIME"}, {"label": "事件类别", "value": "MEDICAL", "type": "SELECT"}, {"label": "事件经过", "value": "详见事件描述", "type": "TEXTAREA"}]', NULL, NULL, 1, '155', '2025-08-07 08:59:00', '155', '2025-08-07 08:59:00', 0, 0);
INSERT INTO ae_adverse_event (id, event_no, template_id, category, level, status, reporter_id, reporter_type, report_time, dept_id, description, form_data, current_handler_id, current_dept_id, report_mode, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (238, 'AE20250903001', 2, 'NURSING', 3, 70, 154, 1, '2025-09-03 12:05:00', 200, '患者放疗后皮肤护理不当，出现II级放射性皮炎，局部红肿明显。', '[{"label": "事件发生时间", "value": "见上报时间", "type": "DATETIME"}, {"label": "事件类别", "value": "NURSING", "type": "SELECT"}, {"label": "事件经过", "value": "详见事件描述", "type": "TEXTAREA"}]', NULL, NULL, 1, '154', '2025-09-03 12:05:00', '154', '2025-09-03 12:05:00', 0, 0);
INSERT INTO ae_adverse_event (id, event_no, template_id, category, level, status, reporter_id, reporter_type, report_time, dept_id, description, form_data, current_handler_id, current_dept_id, report_mode, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (239, 'AE20250910001', 5, 'LOGISTICS', 3, 50, 154, 1, '2025-09-10 14:46:00', 200, '放疗等候区座椅损坏，存在安全隐患。', '[{"label": "事件发生时间", "value": "见上报时间", "type": "DATETIME"}, {"label": "事件类别", "value": "LOGISTICS", "type": "SELECT"}, {"label": "事件经过", "value": "详见事件描述", "type": "TEXTAREA"}]', NULL, NULL, 1, '154', '2025-09-10 14:46:00', '154', '2025-09-10 14:46:00', 0, 0);
INSERT INTO ae_adverse_event (id, event_no, template_id, category, level, status, reporter_id, reporter_type, report_time, dept_id, description, form_data, current_handler_id, current_dept_id, report_mode, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (240, 'AE20250906001', 3, 'INFECTION', 4, 50, 154, 1, '2025-09-06 09:00:00', 200, '放疗等候区通风系统故障，空气质量检测不达标。', '[{"label": "事件发生时间", "value": "见上报时间", "type": "DATETIME"}, {"label": "事件类别", "value": "INFECTION", "type": "SELECT"}, {"label": "事件经过", "value": "详见事件描述", "type": "TEXTAREA"}]', NULL, NULL, 1, '154', '2025-09-06 09:00:00', '154', '2025-09-06 09:00:00', 0, 0);
INSERT INTO ae_adverse_event (id, event_no, template_id, category, level, status, reporter_id, reporter_type, report_time, dept_id, description, form_data, current_handler_id, current_dept_id, report_mode, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (241, 'AE20250924001', 4, 'DEVICE', 3, 80, 155, 1, '2025-09-24 09:49:00', 201, '放疗设备MLC叶片运动异常，影响调强放疗的实施质量。', '[{"label": "事件发生时间", "value": "见上报时间", "type": "DATETIME"}, {"label": "事件类别", "value": "DEVICE", "type": "SELECT"}, {"label": "事件经过", "value": "详见事件描述", "type": "TEXTAREA"}]', NULL, NULL, 1, '155', '2025-09-24 09:49:00', '155', '2025-09-24 09:49:00', 0, 0);
INSERT INTO ae_adverse_event (id, event_no, template_id, category, level, status, reporter_id, reporter_type, report_time, dept_id, description, form_data, current_handler_id, current_dept_id, report_mode, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (242, 'AE20250917001', 2, 'NURSING', 3, 50, 155, 1, '2025-09-17 13:03:00', 201, '患者放疗后皮肤护理不当，出现II级放射性皮炎，局部红肿明显。', '[{"label": "事件发生时间", "value": "见上报时间", "type": "DATETIME"}, {"label": "事件类别", "value": "NURSING", "type": "SELECT"}, {"label": "事件经过", "value": "详见事件描述", "type": "TEXTAREA"}]', NULL, NULL, 1, '155', '2025-09-17 13:03:00', '155', '2025-09-17 13:03:00', 0, 0);
INSERT INTO ae_adverse_event (id, event_no, template_id, category, level, status, reporter_id, reporter_type, report_time, dept_id, description, form_data, current_handler_id, current_dept_id, report_mode, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (243, 'AE20250902001', 1, 'MEDICAL', 3, 50, 154, 1, '2025-09-02 08:15:00', 200, '放疗设备晨检时发现输出剂量异常，偏差超过3%，需停机检修。', '[{"label": "事件发生时间", "value": "见上报时间", "type": "DATETIME"}, {"label": "事件类别", "value": "MEDICAL", "type": "SELECT"}, {"label": "事件经过", "value": "详见事件描述", "type": "TEXTAREA"}]', NULL, NULL, 2, '154', '2025-09-02 08:15:00', '154', '2025-09-02 08:15:00', 0, 0);
INSERT INTO ae_adverse_event (id, event_no, template_id, category, level, status, reporter_id, reporter_type, report_time, dept_id, description, form_data, current_handler_id, current_dept_id, report_mode, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (244, 'AE20250911001', 1, 'INFO', 3, 70, 154, 1, '2025-09-11 11:26:00', 200, '放疗设备监控系统报警延迟，未能及时发现设备异常。', '[{"label": "事件发生时间", "value": "见上报时间", "type": "DATETIME"}, {"label": "事件类别", "value": "INFO", "type": "SELECT"}, {"label": "事件经过", "value": "详见事件描述", "type": "TEXTAREA"}]', NULL, NULL, 1, '154', '2025-09-11 11:26:00', '154', '2025-09-11 11:26:00', 0, 0);
INSERT INTO ae_adverse_event (id, event_no, template_id, category, level, status, reporter_id, reporter_type, report_time, dept_id, description, form_data, current_handler_id, current_dept_id, report_mode, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (245, 'AE20250902002', 4, 'DEVICE', 4, 50, 155, 1, '2025-09-02 14:04:00', 201, '放疗验证设备（EPID）图像采集失败，无法进行治疗验证。', '[{"label": "事件发生时间", "value": "见上报时间", "type": "DATETIME"}, {"label": "事件类别", "value": "DEVICE", "type": "SELECT"}, {"label": "事件经过", "value": "详见事件描述", "type": "TEXTAREA"}]', NULL, NULL, 1, '155', '2025-09-02 14:04:00', '155', '2025-09-02 14:04:00', 0, 0);
INSERT INTO ae_adverse_event (id, event_no, template_id, category, level, status, reporter_id, reporter_type, report_time, dept_id, description, form_data, current_handler_id, current_dept_id, report_mode, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (246, 'AE20250908001', 2, 'NURSING', 3, 20, 154, 1, '2025-09-08 15:23:00', 200, '放疗前患者身份核对出现错误，差点给错误患者执行治疗。', '[{"label": "事件发生时间", "value": "见上报时间", "type": "DATETIME"}, {"label": "事件类别", "value": "NURSING", "type": "SELECT"}, {"label": "事件经过", "value": "详见事件描述", "type": "TEXTAREA"}]', 157, 205, 1, '154', '2025-09-08 15:23:00', '154', '2025-09-08 15:23:00', 0, 0);
INSERT INTO ae_adverse_event (id, event_no, template_id, category, level, status, reporter_id, reporter_type, report_time, dept_id, description, form_data, current_handler_id, current_dept_id, report_mode, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (247, 'AE20250918001', 4, 'DEVICE', 4, 30, 155, 1, '2025-09-18 13:40:00', 201, '放疗定位CT图像质量下降，影响靶区勾画精度。', '[{"label": "事件发生时间", "value": "见上报时间", "type": "DATETIME"}, {"label": "事件类别", "value": "DEVICE", "type": "SELECT"}, {"label": "事件经过", "value": "详见事件描述", "type": "TEXTAREA"}]', 158, 1, 1, '155', '2025-09-18 13:40:00', '155', '2025-09-18 13:40:00', 0, 0);
INSERT INTO ae_adverse_event (id, event_no, template_id, category, level, status, reporter_id, reporter_type, report_time, dept_id, description, form_data, current_handler_id, current_dept_id, report_mode, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (248, 'AE20250914001', 5, 'LOGISTICS', 2, 50, 155, 1, '2025-09-14 15:03:00', 201, '放疗科空调系统故障，治疗室温度超标，影响设备运行。', '[{"label": "事件发生时间", "value": "见上报时间", "type": "DATETIME"}, {"label": "事件类别", "value": "LOGISTICS", "type": "SELECT"}, {"label": "事件经过", "value": "详见事件描述", "type": "TEXTAREA"}]', NULL, NULL, 2, '155', '2025-09-14 15:03:00', '155', '2025-09-14 15:03:00', 0, 0);
INSERT INTO ae_adverse_event (id, event_no, template_id, category, level, status, reporter_id, reporter_type, report_time, dept_id, description, form_data, current_handler_id, current_dept_id, report_mode, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (249, 'AE20251004001', 2, 'NURSING', 3, 50, 154, 1, '2025-10-04 16:08:00', 200, '患者放疗后出现严重恶心呕吐，护理记录不完整，未及时报告医生。', '[{"label": "事件发生时间", "value": "见上报时间", "type": "DATETIME"}, {"label": "事件类别", "value": "NURSING", "type": "SELECT"}, {"label": "事件经过", "value": "详见事件描述", "type": "TEXTAREA"}]', NULL, NULL, 2, '154', '2025-10-04 16:08:00', '154', '2025-10-04 16:08:00', 0, 0);
INSERT INTO ae_adverse_event (id, event_no, template_id, category, level, status, reporter_id, reporter_type, report_time, dept_id, description, form_data, current_handler_id, current_dept_id, report_mode, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (250, 'AE20251027001', 2, 'NURSING', 3, 50, 154, 1, '2025-10-27 13:20:00', 200, '患者放疗后皮肤护理不当，出现II级放射性皮炎，局部红肿明显。', '[{"label": "事件发生时间", "value": "见上报时间", "type": "DATETIME"}, {"label": "事件类别", "value": "NURSING", "type": "SELECT"}, {"label": "事件经过", "value": "详见事件描述", "type": "TEXTAREA"}]', NULL, NULL, 1, '154', '2025-10-27 13:20:00', '154', '2025-10-27 13:20:00', 0, 0);
INSERT INTO ae_adverse_event (id, event_no, template_id, category, level, status, reporter_id, reporter_type, report_time, dept_id, description, form_data, current_handler_id, current_dept_id, report_mode, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (251, 'AE20251018001', 1, 'MEDICAL', 3, 30, 155, 2, '2025-10-18 13:49:00', 201, '患者在放疗过程中出现定位偏差，导致照射野偏移约5mm，经及时发现并纠正。', '[{"label": "事件发生时间", "value": "见上报时间", "type": "DATETIME"}, {"label": "事件类别", "value": "MEDICAL", "type": "SELECT"}, {"label": "事件经过", "value": "详见事件描述", "type": "TEXTAREA"}]', 158, 1, 1, '155', '2025-10-18 13:49:00', '155', '2025-10-18 13:49:00', 0, 0);
INSERT INTO ae_adverse_event (id, event_no, template_id, category, level, status, reporter_id, reporter_type, report_time, dept_id, description, form_data, current_handler_id, current_dept_id, report_mode, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (252, 'AE20251007001', 1, 'MEDICAL', 3, 50, 155, 1, '2025-10-07 13:09:00', 201, '放疗计划中危及器官限量超标，经物理师复核后重新优化计划。', '[{"label": "事件发生时间", "value": "见上报时间", "type": "DATETIME"}, {"label": "事件类别", "value": "MEDICAL", "type": "SELECT"}, {"label": "事件经过", "value": "详见事件描述", "type": "TEXTAREA"}]', NULL, NULL, 1, '155', '2025-10-07 13:09:00', '155', '2025-10-07 13:09:00', 0, 0);
INSERT INTO ae_adverse_event (id, event_no, template_id, category, level, status, reporter_id, reporter_type, report_time, dept_id, description, form_data, current_handler_id, current_dept_id, report_mode, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (253, 'AE20251018002', 1, 'MEDICAL', 2, 20, 154, 1, '2025-10-18 16:15:00', 200, '放疗过程中患者体位移动，导致CBCT验证发现偏差超限，需重新摆位。', '[{"label": "事件发生时间", "value": "见上报时间", "type": "DATETIME"}, {"label": "事件类别", "value": "MEDICAL", "type": "SELECT"}, {"label": "事件经过", "value": "详见事件描述", "type": "TEXTAREA"}]', 157, 205, 1, '154', '2025-10-18 16:15:00', '154', '2025-10-18 16:15:00', 0, 0);
INSERT INTO ae_adverse_event (id, event_no, template_id, category, level, status, reporter_id, reporter_type, report_time, dept_id, description, form_data, current_handler_id, current_dept_id, report_mode, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (254, 'AE20251022001', 1, 'MEDICAL', 3, 50, 154, 1, '2025-10-22 18:41:00', 200, '放疗过程中患者体位移动，导致CBCT验证发现偏差超限，需重新摆位。', '[{"label": "事件发生时间", "value": "见上报时间", "type": "DATETIME"}, {"label": "事件类别", "value": "MEDICAL", "type": "SELECT"}, {"label": "事件经过", "value": "详见事件描述", "type": "TEXTAREA"}]', NULL, NULL, 1, '154', '2025-10-22 18:41:00', '154', '2025-10-22 18:41:00', 0, 0);
INSERT INTO ae_adverse_event (id, event_no, template_id, category, level, status, reporter_id, reporter_type, report_time, dept_id, description, form_data, current_handler_id, current_dept_id, report_mode, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (255, 'AE20251004002', 1, 'MEDICAL', 4, 50, 155, 1, '2025-10-04 08:29:00', 201, '患者在放疗过程中出现严重皮肤反应，III级放射性皮炎，需要暂停治疗。', '[{"label": "事件发生时间", "value": "见上报时间", "type": "DATETIME"}, {"label": "事件类别", "value": "MEDICAL", "type": "SELECT"}, {"label": "事件经过", "value": "详见事件描述", "type": "TEXTAREA"}]', NULL, NULL, 1, '155', '2025-10-04 08:29:00', '155', '2025-10-04 08:29:00', 0, 0);
INSERT INTO ae_adverse_event (id, event_no, template_id, category, level, status, reporter_id, reporter_type, report_time, dept_id, description, form_data, current_handler_id, current_dept_id, report_mode, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (256, 'AE20251009001', 4, 'DEVICE', 1, 50, 154, 1, '2025-10-09 12:28:00', 200, '放疗验证设备（EPID）图像采集失败，无法进行治疗验证。', '[{"label": "事件发生时间", "value": "见上报时间", "type": "DATETIME"}, {"label": "事件类别", "value": "DEVICE", "type": "SELECT"}, {"label": "事件经过", "value": "详见事件描述", "type": "TEXTAREA"}]', NULL, NULL, 1, '154', '2025-10-09 12:28:00', '154', '2025-10-09 12:28:00', 0, 0);
INSERT INTO ae_adverse_event (id, event_no, template_id, category, level, status, reporter_id, reporter_type, report_time, dept_id, description, form_data, current_handler_id, current_dept_id, report_mode, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (257, 'AE20251008001', 2, 'NURSING', 1, 50, 155, 1, '2025-10-08 18:51:00', 201, '放疗前患者身份核对出现错误，差点给错误患者执行治疗。', '[{"label": "事件发生时间", "value": "见上报时间", "type": "DATETIME"}, {"label": "事件类别", "value": "NURSING", "type": "SELECT"}, {"label": "事件经过", "value": "详见事件描述", "type": "TEXTAREA"}]', NULL, NULL, 1, '155', '2025-10-08 18:51:00', '155', '2025-10-08 18:51:00', 0, 0);
INSERT INTO ae_adverse_event (id, event_no, template_id, category, level, status, reporter_id, reporter_type, report_time, dept_id, description, form_data, current_handler_id, current_dept_id, report_mode, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (258, 'AE20251001001', 1, 'MEDICAL', 4, 50, 155, 1, '2025-10-01 13:38:00', 201, '放疗计划审核时发现剂量计算错误，实际处方剂量与计划剂量不一致。', '[{"label": "事件发生时间", "value": "见上报时间", "type": "DATETIME"}, {"label": "事件类别", "value": "MEDICAL", "type": "SELECT"}, {"label": "事件经过", "value": "详见事件描述", "type": "TEXTAREA"}]', NULL, NULL, 2, '155', '2025-10-01 13:38:00', '155', '2025-10-01 13:38:00', 0, 0);
INSERT INTO ae_adverse_event (id, event_no, template_id, category, level, status, reporter_id, reporter_type, report_time, dept_id, description, form_data, current_handler_id, current_dept_id, report_mode, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (259, 'AE20251008002', 1, 'MEDICAL', 4, 60, 154, 1, '2025-10-08 18:15:00', 200, '患者在放疗过程中出现严重皮肤反应，III级放射性皮炎，需要暂停治疗。', '[{"label": "事件发生时间", "value": "见上报时间", "type": "DATETIME"}, {"label": "事件类别", "value": "MEDICAL", "type": "SELECT"}, {"label": "事件经过", "value": "详见事件描述", "type": "TEXTAREA"}]', NULL, NULL, 2, '154', '2025-10-08 18:15:00', '154', '2025-10-08 18:15:00', 0, 0);
INSERT INTO ae_adverse_event (id, event_no, template_id, category, level, status, reporter_id, reporter_type, report_time, dept_id, description, form_data, current_handler_id, current_dept_id, report_mode, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (260, 'AE20251006001', 2, 'NURSING', 4, 80, 155, 2, '2025-10-06 11:37:00', 201, '放疗期间患者营养评估不到位，体重下降超过10%，影响治疗效果。', '[{"label": "事件发生时间", "value": "见上报时间", "type": "DATETIME"}, {"label": "事件类别", "value": "NURSING", "type": "SELECT"}, {"label": "事件经过", "value": "详见事件描述", "type": "TEXTAREA"}]', NULL, NULL, 1, '155', '2025-10-06 11:37:00', '155', '2025-10-06 11:37:00', 0, 0);
INSERT INTO ae_adverse_event (id, event_no, template_id, category, level, status, reporter_id, reporter_type, report_time, dept_id, description, form_data, current_handler_id, current_dept_id, report_mode, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (261, 'AE20251127001', 2, 'NURSING', 3, 50, 154, 1, '2025-11-27 15:34:00', 200, '放疗患者心理护理不到位，患者出现焦虑情绪，拒绝继续治疗。', '[{"label": "事件发生时间", "value": "见上报时间", "type": "DATETIME"}, {"label": "事件类别", "value": "NURSING", "type": "SELECT"}, {"label": "事件经过", "value": "详见事件描述", "type": "TEXTAREA"}]', NULL, NULL, 1, '154', '2025-11-27 15:34:00', '154', '2025-11-27 15:34:00', 0, 0);
INSERT INTO ae_adverse_event (id, event_no, template_id, category, level, status, reporter_id, reporter_type, report_time, dept_id, description, form_data, current_handler_id, current_dept_id, report_mode, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (262, 'AE20251105001', 1, 'MEDICAL', 4, 80, 155, 1, '2025-11-05 13:45:00', 201, '放疗过程中患者体位移动，导致CBCT验证发现偏差超限，需重新摆位。', '[{"label": "事件发生时间", "value": "见上报时间", "type": "DATETIME"}, {"label": "事件类别", "value": "MEDICAL", "type": "SELECT"}, {"label": "事件经过", "value": "详见事件描述", "type": "TEXTAREA"}]', NULL, NULL, 1, '155', '2025-11-05 13:45:00', '155', '2025-11-05 13:45:00', 0, 0);
INSERT INTO ae_adverse_event (id, event_no, template_id, category, level, status, reporter_id, reporter_type, report_time, dept_id, description, form_data, current_handler_id, current_dept_id, report_mode, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (263, 'AE20251103001', 1, 'INFO', 3, 50, 154, 1, '2025-11-03 13:45:00', 200, '放疗计划数据备份失败，存在数据丢失风险。', '[{"label": "事件发生时间", "value": "见上报时间", "type": "DATETIME"}, {"label": "事件类别", "value": "INFO", "type": "SELECT"}, {"label": "事件经过", "value": "详见事件描述", "type": "TEXTAREA"}]', NULL, NULL, 1, '154', '2025-11-03 13:45:00', '154', '2025-11-03 13:45:00', 0, 0);
INSERT INTO ae_adverse_event (id, event_no, template_id, category, level, status, reporter_id, reporter_type, report_time, dept_id, description, form_data, current_handler_id, current_dept_id, report_mode, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (264, 'AE20251121001', 3, 'INFECTION', 3, 50, 155, 1, '2025-11-21 13:11:00', 201, '放疗科发现多重耐药菌感染病例，需要加强感染防控措施。', '[{"label": "事件发生时间", "value": "见上报时间", "type": "DATETIME"}, {"label": "事件类别", "value": "INFECTION", "type": "SELECT"}, {"label": "事件经过", "value": "详见事件描述", "type": "TEXTAREA"}]', NULL, NULL, 1, '155', '2025-11-21 13:11:00', '155', '2025-11-21 13:11:00', 0, 0);
INSERT INTO ae_adverse_event (id, event_no, template_id, category, level, status, reporter_id, reporter_type, report_time, dept_id, description, form_data, current_handler_id, current_dept_id, report_mode, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (265, 'AE20251123001', 4, 'DEVICE', 4, 20, 154, 1, '2025-11-23 17:25:00', 200, '放疗设备MLC叶片运动异常，影响调强放疗的实施质量。', '[{"label": "事件发生时间", "value": "见上报时间", "type": "DATETIME"}, {"label": "事件类别", "value": "DEVICE", "type": "SELECT"}, {"label": "事件经过", "value": "详见事件描述", "type": "TEXTAREA"}]', 157, 208, 1, '154', '2025-11-23 17:25:00', '154', '2025-11-23 17:25:00', 0, 0);
INSERT INTO ae_adverse_event (id, event_no, template_id, category, level, status, reporter_id, reporter_type, report_time, dept_id, description, form_data, current_handler_id, current_dept_id, report_mode, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (266, 'AE20251105002', 1, 'MEDICAL', 3, 50, 155, 1, '2025-11-05 13:47:00', 201, '放疗计划中危及器官限量超标，经物理师复核后重新优化计划。', '[{"label": "事件发生时间", "value": "见上报时间", "type": "DATETIME"}, {"label": "事件类别", "value": "MEDICAL", "type": "SELECT"}, {"label": "事件经过", "value": "详见事件描述", "type": "TEXTAREA"}]', NULL, NULL, 2, '155', '2025-11-05 13:47:00', '155', '2025-11-05 13:47:00', 0, 0);
INSERT INTO ae_adverse_event (id, event_no, template_id, category, level, status, reporter_id, reporter_type, report_time, dept_id, description, form_data, current_handler_id, current_dept_id, report_mode, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (267, 'AE20251101001', 1, 'MEDICAL', 2, 50, 155, 1, '2025-11-01 12:13:00', 201, '放射治疗中发现患者合并用药与放疗存在相互作用，需调整用药方案。', '[{"label": "事件发生时间", "value": "见上报时间", "type": "DATETIME"}, {"label": "事件类别", "value": "MEDICAL", "type": "SELECT"}, {"label": "事件经过", "value": "详见事件描述", "type": "TEXTAREA"}]', NULL, NULL, 1, '155', '2025-11-01 12:13:00', '155', '2025-11-01 12:13:00', 0, 0);
INSERT INTO ae_adverse_event (id, event_no, template_id, category, level, status, reporter_id, reporter_type, report_time, dept_id, description, form_data, current_handler_id, current_dept_id, report_mode, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (268, 'AE20251112001', 1, 'MEDICAL', 3, 30, 154, 1, '2025-11-12 16:24:00', 200, '放疗计划审核时发现剂量计算错误，实际处方剂量与计划剂量不一致。', '[{"label": "事件发生时间", "value": "见上报时间", "type": "DATETIME"}, {"label": "事件类别", "value": "MEDICAL", "type": "SELECT"}, {"label": "事件经过", "value": "详见事件描述", "type": "TEXTAREA"}]', 158, 1, 1, '154', '2025-11-12 16:24:00', '154', '2025-11-12 16:24:00', 0, 0);
INSERT INTO ae_adverse_event (id, event_no, template_id, category, level, status, reporter_id, reporter_type, report_time, dept_id, description, form_data, current_handler_id, current_dept_id, report_mode, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (269, 'AE20251103002', 4, 'DEVICE', 2, 50, 154, 1, '2025-11-03 13:10:00', 200, '放疗定位CT图像质量下降，影响靶区勾画精度。', '[{"label": "事件发生时间", "value": "见上报时间", "type": "DATETIME"}, {"label": "事件类别", "value": "DEVICE", "type": "SELECT"}, {"label": "事件经过", "value": "详见事件描述", "type": "TEXTAREA"}]', NULL, NULL, 2, '154', '2025-11-03 13:10:00', '154', '2025-11-03 13:10:00', 0, 0);
INSERT INTO ae_adverse_event (id, event_no, template_id, category, level, status, reporter_id, reporter_type, report_time, dept_id, description, form_data, current_handler_id, current_dept_id, report_mode, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (270, 'AE20251120001', 1, 'MEDICAL', 3, 50, 154, 1, '2025-11-20 14:10:00', 200, '放疗计划审核时发现剂量计算错误，实际处方剂量与计划剂量不一致。', '[{"label": "事件发生时间", "value": "见上报时间", "type": "DATETIME"}, {"label": "事件类别", "value": "MEDICAL", "type": "SELECT"}, {"label": "事件经过", "value": "详见事件描述", "type": "TEXTAREA"}]', NULL, NULL, 1, '154', '2025-11-20 14:10:00', '154', '2025-11-20 14:10:00', 0, 0);
INSERT INTO ae_adverse_event (id, event_no, template_id, category, level, status, reporter_id, reporter_type, report_time, dept_id, description, form_data, current_handler_id, current_dept_id, report_mode, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (271, 'AE20251213001', 4, 'DEVICE', 2, 40, 155, 1, '2025-12-13 17:35:00', 201, '放疗定位CT图像质量下降，影响靶区勾画精度。', '[{"label": "事件发生时间", "value": "见上报时间", "type": "DATETIME"}, {"label": "事件类别", "value": "DEVICE", "type": "SELECT"}, {"label": "事件经过", "value": "详见事件描述", "type": "TEXTAREA"}]', 159, 206, 1, '155', '2025-12-13 17:35:00', '155', '2025-12-13 17:35:00', 0, 0);
INSERT INTO ae_adverse_event (id, event_no, template_id, category, level, status, reporter_id, reporter_type, report_time, dept_id, description, form_data, current_handler_id, current_dept_id, report_mode, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (272, 'AE20251221001', 2, 'NURSING', 2, 50, 155, 1, '2025-12-21 12:05:00', 201, '放疗前患者身份核对出现错误，差点给错误患者执行治疗。', '[{"label": "事件发生时间", "value": "见上报时间", "type": "DATETIME"}, {"label": "事件类别", "value": "NURSING", "type": "SELECT"}, {"label": "事件经过", "value": "详见事件描述", "type": "TEXTAREA"}]', NULL, NULL, 2, '155', '2025-12-21 12:05:00', '155', '2025-12-21 12:05:00', 0, 0);
INSERT INTO ae_adverse_event (id, event_no, template_id, category, level, status, reporter_id, reporter_type, report_time, dept_id, description, form_data, current_handler_id, current_dept_id, report_mode, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (273, 'AE20251215001', 2, 'NURSING', 3, 80, 155, 1, '2025-12-15 08:16:00', 201, '放疗患者心理护理不到位，患者出现焦虑情绪，拒绝继续治疗。', '[{"label": "事件发生时间", "value": "见上报时间", "type": "DATETIME"}, {"label": "事件类别", "value": "NURSING", "type": "SELECT"}, {"label": "事件经过", "value": "详见事件描述", "type": "TEXTAREA"}]', NULL, NULL, 1, '155', '2025-12-15 08:16:00', '155', '2025-12-15 08:16:00', 0, 0);
INSERT INTO ae_adverse_event (id, event_no, template_id, category, level, status, reporter_id, reporter_type, report_time, dept_id, description, form_data, current_handler_id, current_dept_id, report_mode, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (274, 'AE20251218001', 2, 'NURSING', 3, 50, 155, 1, '2025-12-18 14:48:00', 201, '放疗患者静脉通路维护不当，导致药物外渗，局部肿胀。', '[{"label": "事件发生时间", "value": "见上报时间", "type": "DATETIME"}, {"label": "事件类别", "value": "NURSING", "type": "SELECT"}, {"label": "事件经过", "value": "详见事件描述", "type": "TEXTAREA"}]', NULL, NULL, 1, '155', '2025-12-18 14:48:00', '155', '2025-12-18 14:48:00', 0, 0);
INSERT INTO ae_adverse_event (id, event_no, template_id, category, level, status, reporter_id, reporter_type, report_time, dept_id, description, form_data, current_handler_id, current_dept_id, report_mode, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (275, 'AE20251210001', 1, 'INFO', 4, 50, 154, 1, '2025-12-10 09:25:00', 200, '放疗信息系统与HIS系统接口异常，患者信息同步失败。', '[{"label": "事件发生时间", "value": "见上报时间", "type": "DATETIME"}, {"label": "事件类别", "value": "INFO", "type": "SELECT"}, {"label": "事件经过", "value": "详见事件描述", "type": "TEXTAREA"}]', NULL, NULL, 1, '154', '2025-12-10 09:25:00', '154', '2025-12-10 09:25:00', 0, 0);
INSERT INTO ae_adverse_event (id, event_no, template_id, category, level, status, reporter_id, reporter_type, report_time, dept_id, description, form_data, current_handler_id, current_dept_id, report_mode, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (276, 'AE20251202001', 5, 'LOGISTICS', 3, 50, 154, 1, '2025-12-02 14:05:00', 200, '放疗科供电系统不稳定，设备意外断电导致治疗中断。', '[{"label": "事件发生时间", "value": "见上报时间", "type": "DATETIME"}, {"label": "事件类别", "value": "LOGISTICS", "type": "SELECT"}, {"label": "事件经过", "value": "详见事件描述", "type": "TEXTAREA"}]', NULL, NULL, 1, '154', '2025-12-02 14:05:00', '154', '2025-12-02 14:05:00', 0, 0);
INSERT INTO ae_adverse_event (id, event_no, template_id, category, level, status, reporter_id, reporter_type, report_time, dept_id, description, form_data, current_handler_id, current_dept_id, report_mode, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (277, 'AE20251218002', 1, 'MEDICAL', 3, 50, 154, 1, '2025-12-18 13:54:00', 200, '放疗计划审核时发现剂量计算错误，实际处方剂量与计划剂量不一致。', '[{"label": "事件发生时间", "value": "见上报时间", "type": "DATETIME"}, {"label": "事件类别", "value": "MEDICAL", "type": "SELECT"}, {"label": "事件经过", "value": "详见事件描述", "type": "TEXTAREA"}]', NULL, NULL, 1, '154', '2025-12-18 13:54:00', '154', '2025-12-18 13:54:00', 0, 0);
INSERT INTO ae_adverse_event (id, event_no, template_id, category, level, status, reporter_id, reporter_type, report_time, dept_id, description, form_data, current_handler_id, current_dept_id, report_mode, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (278, 'AE20251230001', 3, 'INFECTION', 4, 70, 155, 2, '2025-12-30 09:36:00', 201, '放疗设备表面采样检出致病菌，消毒流程存在漏洞。', '[{"label": "事件发生时间", "value": "见上报时间", "type": "DATETIME"}, {"label": "事件类别", "value": "INFECTION", "type": "SELECT"}, {"label": "事件经过", "value": "详见事件描述", "type": "TEXTAREA"}]', NULL, NULL, 1, '155', '2025-12-30 09:36:00', '155', '2025-12-30 09:36:00', 0, 0);
INSERT INTO ae_adverse_event (id, event_no, template_id, category, level, status, reporter_id, reporter_type, report_time, dept_id, description, form_data, current_handler_id, current_dept_id, report_mode, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (279, 'AE20251209001', 2, 'NURSING', 4, 50, 155, 1, '2025-12-09 14:09:00', 201, '放疗等候区患者跌倒，造成软组织损伤，需要进一步检查处理。', '[{"label": "事件发生时间", "value": "见上报时间", "type": "DATETIME"}, {"label": "事件类别", "value": "NURSING", "type": "SELECT"}, {"label": "事件经过", "value": "详见事件描述", "type": "TEXTAREA"}]', NULL, NULL, 2, '155', '2025-12-09 14:09:00', '155', '2025-12-09 14:09:00', 0, 0);
INSERT INTO ae_adverse_event (id, event_no, template_id, category, level, status, reporter_id, reporter_type, report_time, dept_id, description, form_data, current_handler_id, current_dept_id, report_mode, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (280, 'AE20251201001', 3, 'INFECTION', 3, 50, 155, 2, '2025-12-01 13:52:00', 201, '放疗等候区通风系统故障，空气质量检测不达标。', '[{"label": "事件发生时间", "value": "见上报时间", "type": "DATETIME"}, {"label": "事件类别", "value": "INFECTION", "type": "SELECT"}, {"label": "事件经过", "value": "详见事件描述", "type": "TEXTAREA"}]', NULL, NULL, 1, '155', '2025-12-01 13:52:00', '155', '2025-12-01 13:52:00', 0, 0);
INSERT INTO ae_adverse_event (id, event_no, template_id, category, level, status, reporter_id, reporter_type, report_time, dept_id, description, form_data, current_handler_id, current_dept_id, report_mode, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (281, 'AE20260124001', 2, 'NURSING', 2, 50, 154, 2, '2026-01-24 14:38:00', 200, '患者放疗后皮肤护理不当，出现II级放射性皮炎，局部红肿明显。', '[{"label": "事件发生时间", "value": "见上报时间", "type": "DATETIME"}, {"label": "事件类别", "value": "NURSING", "type": "SELECT"}, {"label": "事件经过", "value": "详见事件描述", "type": "TEXTAREA"}]', NULL, NULL, 1, '154', '2026-01-24 14:38:00', '154', '2026-01-24 14:38:00', 0, 0);
INSERT INTO ae_adverse_event (id, event_no, template_id, category, level, status, reporter_id, reporter_type, report_time, dept_id, description, form_data, current_handler_id, current_dept_id, report_mode, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (282, 'AE20260110001', 1, 'MEDICAL', 4, 50, 154, 1, '2026-01-10 16:25:00', 200, '放疗过程中患者体位移动，导致CBCT验证发现偏差超限，需重新摆位。', '[{"label": "事件发生时间", "value": "见上报时间", "type": "DATETIME"}, {"label": "事件类别", "value": "MEDICAL", "type": "SELECT"}, {"label": "事件经过", "value": "详见事件描述", "type": "TEXTAREA"}]', NULL, NULL, 2, '154', '2026-01-10 16:25:00', '154', '2026-01-10 16:25:00', 0, 0);
INSERT INTO ae_adverse_event (id, event_no, template_id, category, level, status, reporter_id, reporter_type, report_time, dept_id, description, form_data, current_handler_id, current_dept_id, report_mode, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (283, 'AE20260123001', 2, 'NURSING', 3, 50, 155, 1, '2026-01-23 11:17:00', 201, '放疗患者心理护理不到位，患者出现焦虑情绪，拒绝继续治疗。', '[{"label": "事件发生时间", "value": "见上报时间", "type": "DATETIME"}, {"label": "事件类别", "value": "NURSING", "type": "SELECT"}, {"label": "事件经过", "value": "详见事件描述", "type": "TEXTAREA"}]', NULL, NULL, 1, '155', '2026-01-23 11:17:00', '155', '2026-01-23 11:17:00', 0, 0);
INSERT INTO ae_adverse_event (id, event_no, template_id, category, level, status, reporter_id, reporter_type, report_time, dept_id, description, form_data, current_handler_id, current_dept_id, report_mode, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (284, 'AE20260116001', 2, 'NURSING', 2, 50, 155, 1, '2026-01-16 17:35:00', 201, '放疗患者心理护理不到位，患者出现焦虑情绪，拒绝继续治疗。', '[{"label": "事件发生时间", "value": "见上报时间", "type": "DATETIME"}, {"label": "事件类别", "value": "NURSING", "type": "SELECT"}, {"label": "事件经过", "value": "详见事件描述", "type": "TEXTAREA"}]', NULL, NULL, 1, '155', '2026-01-16 17:35:00', '155', '2026-01-16 17:35:00', 0, 0);
INSERT INTO ae_adverse_event (id, event_no, template_id, category, level, status, reporter_id, reporter_type, report_time, dept_id, description, form_data, current_handler_id, current_dept_id, report_mode, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (285, 'AE20260108001', 3, 'INFECTION', 3, 50, 155, 1, '2026-01-08 18:14:00', 201, '放疗设备表面采样检出致病菌，消毒流程存在漏洞。', '[{"label": "事件发生时间", "value": "见上报时间", "type": "DATETIME"}, {"label": "事件类别", "value": "INFECTION", "type": "SELECT"}, {"label": "事件经过", "value": "详见事件描述", "type": "TEXTAREA"}]', NULL, NULL, 2, '155', '2026-01-08 18:14:00', '155', '2026-01-08 18:14:00', 0, 0);
INSERT INTO ae_adverse_event (id, event_no, template_id, category, level, status, reporter_id, reporter_type, report_time, dept_id, description, form_data, current_handler_id, current_dept_id, report_mode, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (286, 'AE20260120001', 1, 'MEDICAL', 4, 50, 155, 1, '2026-01-20 08:14:00', 201, '放疗设备晨检时发现输出剂量异常，偏差超过3%，需停机检修。', '[{"label": "事件发生时间", "value": "见上报时间", "type": "DATETIME"}, {"label": "事件类别", "value": "MEDICAL", "type": "SELECT"}, {"label": "事件经过", "value": "详见事件描述", "type": "TEXTAREA"}]', NULL, NULL, 1, '155', '2026-01-20 08:14:00', '155', '2026-01-20 08:14:00', 0, 0);
INSERT INTO ae_adverse_event (id, event_no, template_id, category, level, status, reporter_id, reporter_type, report_time, dept_id, description, form_data, current_handler_id, current_dept_id, report_mode, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (287, 'AE20260115001', 2, 'NURSING', 3, 50, 154, 1, '2026-01-15 12:43:00', 200, '放疗等候区患者跌倒，造成软组织损伤，需要进一步检查处理。', '[{"label": "事件发生时间", "value": "见上报时间", "type": "DATETIME"}, {"label": "事件类别", "value": "NURSING", "type": "SELECT"}, {"label": "事件经过", "value": "详见事件描述", "type": "TEXTAREA"}]', NULL, NULL, 2, '154', '2026-01-15 12:43:00', '154', '2026-01-15 12:43:00', 0, 0);
INSERT INTO ae_adverse_event (id, event_no, template_id, category, level, status, reporter_id, reporter_type, report_time, dept_id, description, form_data, current_handler_id, current_dept_id, report_mode, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (288, 'AE20260110002', 2, 'NURSING', 3, 50, 155, 1, '2026-01-10 18:06:00', 201, '放疗前患者身份核对出现错误，差点给错误患者执行治疗。', '[{"label": "事件发生时间", "value": "见上报时间", "type": "DATETIME"}, {"label": "事件类别", "value": "NURSING", "type": "SELECT"}, {"label": "事件经过", "value": "详见事件描述", "type": "TEXTAREA"}]', NULL, NULL, 2, '155', '2026-01-10 18:06:00', '155', '2026-01-10 18:06:00', 0, 0);
INSERT INTO ae_adverse_event (id, event_no, template_id, category, level, status, reporter_id, reporter_type, report_time, dept_id, description, form_data, current_handler_id, current_dept_id, report_mode, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (289, 'AE20260117001', 1, 'MEDICAL', 4, 80, 155, 1, '2026-01-17 11:57:00', 201, '患者放疗计划中靶区勾画存在争议，多学科会诊后修改了治疗方案。', '[{"label": "事件发生时间", "value": "见上报时间", "type": "DATETIME"}, {"label": "事件类别", "value": "MEDICAL", "type": "SELECT"}, {"label": "事件经过", "value": "详见事件描述", "type": "TEXTAREA"}]', NULL, NULL, 1, '155', '2026-01-17 11:57:00', '155', '2026-01-17 11:57:00', 0, 0);
INSERT INTO ae_adverse_event (id, event_no, template_id, category, level, status, reporter_id, reporter_type, report_time, dept_id, description, form_data, current_handler_id, current_dept_id, report_mode, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (290, 'AE20260130001', 2, 'NURSING', 1, 80, 154, 1, '2026-01-30 14:25:00', 200, '患者放疗后出现严重恶心呕吐，护理记录不完整，未及时报告医生。', '[{"label": "事件发生时间", "value": "见上报时间", "type": "DATETIME"}, {"label": "事件类别", "value": "NURSING", "type": "SELECT"}, {"label": "事件经过", "value": "详见事件描述", "type": "TEXTAREA"}]', NULL, NULL, 1, '154', '2026-01-30 14:25:00', '154', '2026-01-30 14:25:00', 0, 0);
INSERT INTO ae_adverse_event (id, event_no, template_id, category, level, status, reporter_id, reporter_type, report_time, dept_id, description, form_data, current_handler_id, current_dept_id, report_mode, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (291, 'AE20260112001', 4, 'DEVICE', 4, 80, 154, 1, '2026-01-12 16:19:00', 200, '放疗定位CT图像质量下降，影响靶区勾画精度。', '[{"label": "事件发生时间", "value": "见上报时间", "type": "DATETIME"}, {"label": "事件类别", "value": "DEVICE", "type": "SELECT"}, {"label": "事件经过", "value": "详见事件描述", "type": "TEXTAREA"}]', NULL, NULL, 1, '154', '2026-01-12 16:19:00', '154', '2026-01-12 16:19:00', 0, 0);
INSERT INTO ae_adverse_event (id, event_no, template_id, category, level, status, reporter_id, reporter_type, report_time, dept_id, description, form_data, current_handler_id, current_dept_id, report_mode, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (292, 'AE20260211001', 1, 'MEDICAL', 3, 50, 155, 1, '2026-02-11 18:05:00', 201, '患者在放疗过程中出现定位偏差，导致照射野偏移约5mm，经及时发现并纠正。', '[{"label": "事件发生时间", "value": "见上报时间", "type": "DATETIME"}, {"label": "事件类别", "value": "MEDICAL", "type": "SELECT"}, {"label": "事件经过", "value": "详见事件描述", "type": "TEXTAREA"}]', NULL, NULL, 2, '155', '2026-02-11 18:05:00', '155', '2026-02-11 18:05:00', 0, 0);
INSERT INTO ae_adverse_event (id, event_no, template_id, category, level, status, reporter_id, reporter_type, report_time, dept_id, description, form_data, current_handler_id, current_dept_id, report_mode, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (293, 'AE20260228001', 2, 'NURSING', 3, 50, 155, 2, '2026-02-28 18:37:00', 201, '放疗患者心理护理不到位，患者出现焦虑情绪，拒绝继续治疗。', '[{"label": "事件发生时间", "value": "见上报时间", "type": "DATETIME"}, {"label": "事件类别", "value": "NURSING", "type": "SELECT"}, {"label": "事件经过", "value": "详见事件描述", "type": "TEXTAREA"}]', NULL, NULL, 1, '155', '2026-02-28 18:37:00', '155', '2026-02-28 18:37:00', 0, 0);
INSERT INTO ae_adverse_event (id, event_no, template_id, category, level, status, reporter_id, reporter_type, report_time, dept_id, description, form_data, current_handler_id, current_dept_id, report_mode, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (294, 'AE20260205001', 2, 'NURSING', 4, 50, 155, 1, '2026-02-05 10:12:00', 201, '放疗等候区患者跌倒，造成软组织损伤，需要进一步检查处理。', '[{"label": "事件发生时间", "value": "见上报时间", "type": "DATETIME"}, {"label": "事件类别", "value": "NURSING", "type": "SELECT"}, {"label": "事件经过", "value": "详见事件描述", "type": "TEXTAREA"}]', NULL, NULL, 2, '155', '2026-02-05 10:12:00', '155', '2026-02-05 10:12:00', 0, 0);
INSERT INTO ae_adverse_event (id, event_no, template_id, category, level, status, reporter_id, reporter_type, report_time, dept_id, description, form_data, current_handler_id, current_dept_id, report_mode, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (295, 'AE20260221001', 2, 'NURSING', 3, 10, 154, 1, '2026-02-21 08:00:00', 200, '放疗患者静脉通路维护不当，导致药物外渗，局部肿胀。', '[{"label": "事件发生时间", "value": "见上报时间", "type": "DATETIME"}, {"label": "事件类别", "value": "NURSING", "type": "SELECT"}, {"label": "事件经过", "value": "详见事件描述", "type": "TEXTAREA"}]', 156, 200, 1, '154', '2026-02-21 08:00:00', '154', '2026-02-21 08:00:00', 0, 0);
INSERT INTO ae_adverse_event (id, event_no, template_id, category, level, status, reporter_id, reporter_type, report_time, dept_id, description, form_data, current_handler_id, current_dept_id, report_mode, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (296, 'AE20260213001', 2, 'NURSING', 1, 50, 154, 1, '2026-02-13 14:30:00', 200, '患者放疗后出现严重恶心呕吐，护理记录不完整，未及时报告医生。', '[{"label": "事件发生时间", "value": "见上报时间", "type": "DATETIME"}, {"label": "事件类别", "value": "NURSING", "type": "SELECT"}, {"label": "事件经过", "value": "详见事件描述", "type": "TEXTAREA"}]', NULL, NULL, 2, '154', '2026-02-13 14:30:00', '154', '2026-02-13 14:30:00', 0, 0);
INSERT INTO ae_adverse_event (id, event_no, template_id, category, level, status, reporter_id, reporter_type, report_time, dept_id, description, form_data, current_handler_id, current_dept_id, report_mode, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (297, 'AE20260208001', 4, 'DEVICE', 3, 50, 154, 1, '2026-02-08 11:44:00', 200, '放疗验证设备（EPID）图像采集失败，无法进行治疗验证。', '[{"label": "事件发生时间", "value": "见上报时间", "type": "DATETIME"}, {"label": "事件类别", "value": "DEVICE", "type": "SELECT"}, {"label": "事件经过", "value": "详见事件描述", "type": "TEXTAREA"}]', NULL, NULL, 1, '154', '2026-02-08 11:44:00', '154', '2026-02-08 11:44:00', 0, 0);
INSERT INTO ae_adverse_event (id, event_no, template_id, category, level, status, reporter_id, reporter_type, report_time, dept_id, description, form_data, current_handler_id, current_dept_id, report_mode, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (298, 'AE20260220001', 2, 'NURSING', 4, 50, 154, 1, '2026-02-20 16:21:00', 200, '放疗患者静脉通路维护不当，导致药物外渗，局部肿胀。', '[{"label": "事件发生时间", "value": "见上报时间", "type": "DATETIME"}, {"label": "事件类别", "value": "NURSING", "type": "SELECT"}, {"label": "事件经过", "value": "详见事件描述", "type": "TEXTAREA"}]', NULL, NULL, 2, '154', '2026-02-20 16:21:00', '154', '2026-02-20 16:21:00', 0, 0);
INSERT INTO ae_adverse_event (id, event_no, template_id, category, level, status, reporter_id, reporter_type, report_time, dept_id, description, form_data, current_handler_id, current_dept_id, report_mode, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (299, 'AE20260201001', 3, 'INFECTION', 2, 50, 154, 1, '2026-02-01 11:14:00', 200, '放疗科医护人员手卫生依从性检查发现不合格，需要整改。', '[{"label": "事件发生时间", "value": "见上报时间", "type": "DATETIME"}, {"label": "事件类别", "value": "INFECTION", "type": "SELECT"}, {"label": "事件经过", "value": "详见事件描述", "type": "TEXTAREA"}]', NULL, NULL, 1, '154', '2026-02-01 11:14:00', '154', '2026-02-01 11:14:00', 0, 0);
INSERT INTO ae_adverse_event (id, event_no, template_id, category, level, status, reporter_id, reporter_type, report_time, dept_id, description, form_data, current_handler_id, current_dept_id, report_mode, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (300, 'AE20260220002', 5, 'LOGISTICS', 4, 50, 154, 1, '2026-02-20 08:38:00', 200, '放疗科空调系统故障，治疗室温度超标，影响设备运行。', '[{"label": "事件发生时间", "value": "见上报时间", "type": "DATETIME"}, {"label": "事件类别", "value": "LOGISTICS", "type": "SELECT"}, {"label": "事件经过", "value": "详见事件描述", "type": "TEXTAREA"}]', NULL, NULL, 1, '154', '2026-02-20 08:38:00', '154', '2026-02-20 08:38:00', 0, 0);
INSERT INTO ae_adverse_event (id, event_no, template_id, category, level, status, reporter_id, reporter_type, report_time, dept_id, description, form_data, current_handler_id, current_dept_id, report_mode, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (301, 'AE20260223001', 1, 'MEDICAL', 3, 60, 154, 1, '2026-02-23 18:40:00', 200, '放疗计划审核时发现剂量计算错误，实际处方剂量与计划剂量不一致。', '[{"label": "事件发生时间", "value": "见上报时间", "type": "DATETIME"}, {"label": "事件类别", "value": "MEDICAL", "type": "SELECT"}, {"label": "事件经过", "value": "详见事件描述", "type": "TEXTAREA"}]', NULL, NULL, 1, '154', '2026-02-23 18:40:00', '154', '2026-02-23 18:40:00', 0, 0);
INSERT INTO ae_adverse_event (id, event_no, template_id, category, level, status, reporter_id, reporter_type, report_time, dept_id, description, form_data, current_handler_id, current_dept_id, report_mode, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (302, 'AE20260217001', 1, 'MEDICAL', 4, 50, 155, 1, '2026-02-17 17:07:00', 201, '患者放疗计划中靶区勾画存在争议，多学科会诊后修改了治疗方案。', '[{"label": "事件发生时间", "value": "见上报时间", "type": "DATETIME"}, {"label": "事件类别", "value": "MEDICAL", "type": "SELECT"}, {"label": "事件经过", "value": "详见事件描述", "type": "TEXTAREA"}]', NULL, NULL, 1, '155', '2026-02-17 17:07:00', '155', '2026-02-17 17:07:00', 0, 0);
INSERT INTO ae_adverse_event (id, event_no, template_id, category, level, status, reporter_id, reporter_type, report_time, dept_id, description, form_data, current_handler_id, current_dept_id, report_mode, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (303, 'AE20260206001', 2, 'NURSING', 3, 70, 155, 1, '2026-02-06 08:35:00', 201, '患者放疗后出现严重恶心呕吐，护理记录不完整，未及时报告医生。', '[{"label": "事件发生时间", "value": "见上报时间", "type": "DATETIME"}, {"label": "事件类别", "value": "NURSING", "type": "SELECT"}, {"label": "事件经过", "value": "详见事件描述", "type": "TEXTAREA"}]', NULL, NULL, 1, '155', '2026-02-06 08:35:00', '155', '2026-02-06 08:35:00', 0, 0);
INSERT INTO ae_adverse_event (id, event_no, template_id, category, level, status, reporter_id, reporter_type, report_time, dept_id, description, form_data, current_handler_id, current_dept_id, report_mode, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (304, 'AE20260305001', 2, 'NURSING', 4, 50, 154, 2, '2026-03-05 09:49:00', 200, '放疗患者心理护理不到位，患者出现焦虑情绪，拒绝继续治疗。', '[{"label": "事件发生时间", "value": "见上报时间", "type": "DATETIME"}, {"label": "事件类别", "value": "NURSING", "type": "SELECT"}, {"label": "事件经过", "value": "详见事件描述", "type": "TEXTAREA"}]', NULL, NULL, 1, '154', '2026-03-05 09:49:00', '154', '2026-03-05 09:49:00', 0, 0);
INSERT INTO ae_adverse_event (id, event_no, template_id, category, level, status, reporter_id, reporter_type, report_time, dept_id, description, form_data, current_handler_id, current_dept_id, report_mode, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (305, 'AE20260306001', 1, 'MEDICAL', 4, 50, 155, 1, '2026-03-06 08:54:00', 201, '患者在放疗过程中出现严重皮肤反应，III级放射性皮炎，需要暂停治疗。', '[{"label": "事件发生时间", "value": "见上报时间", "type": "DATETIME"}, {"label": "事件类别", "value": "MEDICAL", "type": "SELECT"}, {"label": "事件经过", "value": "详见事件描述", "type": "TEXTAREA"}]', NULL, NULL, 1, '155', '2026-03-06 08:54:00', '155', '2026-03-06 08:54:00', 0, 0);
INSERT INTO ae_adverse_event (id, event_no, template_id, category, level, status, reporter_id, reporter_type, report_time, dept_id, description, form_data, current_handler_id, current_dept_id, report_mode, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (306, 'AE20260311001', 2, 'NURSING', 3, 50, 154, 1, '2026-03-11 13:57:00', 200, '患者放疗后出现严重恶心呕吐，护理记录不完整，未及时报告医生。', '[{"label": "事件发生时间", "value": "见上报时间", "type": "DATETIME"}, {"label": "事件类别", "value": "NURSING", "type": "SELECT"}, {"label": "事件经过", "value": "详见事件描述", "type": "TEXTAREA"}]', NULL, NULL, 1, '154', '2026-03-11 13:57:00', '154', '2026-03-11 13:57:00', 0, 0);
INSERT INTO ae_adverse_event (id, event_no, template_id, category, level, status, reporter_id, reporter_type, report_time, dept_id, description, form_data, current_handler_id, current_dept_id, report_mode, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (307, 'AE20260328001', 2, 'NURSING', 4, 50, 154, 1, '2026-03-28 15:51:00', 200, '放疗期间患者营养评估不到位，体重下降超过10%，影响治疗效果。', '[{"label": "事件发生时间", "value": "见上报时间", "type": "DATETIME"}, {"label": "事件类别", "value": "NURSING", "type": "SELECT"}, {"label": "事件经过", "value": "详见事件描述", "type": "TEXTAREA"}]', NULL, NULL, 1, '154', '2026-03-28 15:51:00', '154', '2026-03-28 15:51:00', 0, 0);
INSERT INTO ae_adverse_event (id, event_no, template_id, category, level, status, reporter_id, reporter_type, report_time, dept_id, description, form_data, current_handler_id, current_dept_id, report_mode, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (308, 'AE20260316001', 2, 'NURSING', 3, 50, 155, 1, '2026-03-16 17:43:00', 201, '放疗患者静脉通路维护不当，导致药物外渗，局部肿胀。', '[{"label": "事件发生时间", "value": "见上报时间", "type": "DATETIME"}, {"label": "事件类别", "value": "NURSING", "type": "SELECT"}, {"label": "事件经过", "value": "详见事件描述", "type": "TEXTAREA"}]', NULL, NULL, 2, '155', '2026-03-16 17:43:00', '155', '2026-03-16 17:43:00', 0, 0);
INSERT INTO ae_adverse_event (id, event_no, template_id, category, level, status, reporter_id, reporter_type, report_time, dept_id, description, form_data, current_handler_id, current_dept_id, report_mode, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (309, 'AE20260304001', 1, 'MEDICAL', 3, 50, 155, 1, '2026-03-04 14:28:00', 201, '放疗过程中患者体位移动，导致CBCT验证发现偏差超限，需重新摆位。', '[{"label": "事件发生时间", "value": "见上报时间", "type": "DATETIME"}, {"label": "事件类别", "value": "MEDICAL", "type": "SELECT"}, {"label": "事件经过", "value": "详见事件描述", "type": "TEXTAREA"}]', NULL, NULL, 2, '155', '2026-03-04 14:28:00', '155', '2026-03-04 14:28:00', 0, 0);
INSERT INTO ae_adverse_event (id, event_no, template_id, category, level, status, reporter_id, reporter_type, report_time, dept_id, description, form_data, current_handler_id, current_dept_id, report_mode, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (310, 'AE20260317001', 3, 'INFECTION', 2, 70, 154, 1, '2026-03-17 16:44:00', 200, '放疗科医护人员手卫生依从性检查发现不合格，需要整改。', '[{"label": "事件发生时间", "value": "见上报时间", "type": "DATETIME"}, {"label": "事件类别", "value": "INFECTION", "type": "SELECT"}, {"label": "事件经过", "value": "详见事件描述", "type": "TEXTAREA"}]', NULL, NULL, 1, '154', '2026-03-17 16:44:00', '154', '2026-03-17 16:44:00', 0, 0);
INSERT INTO ae_adverse_event (id, event_no, template_id, category, level, status, reporter_id, reporter_type, report_time, dept_id, description, form_data, current_handler_id, current_dept_id, report_mode, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (311, 'AE20260302001', 1, 'INFO', 3, 50, 155, 2, '2026-03-02 08:41:00', 201, '放疗信息系统与HIS系统接口异常，患者信息同步失败。', '[{"label": "事件发生时间", "value": "见上报时间", "type": "DATETIME"}, {"label": "事件类别", "value": "INFO", "type": "SELECT"}, {"label": "事件经过", "value": "详见事件描述", "type": "TEXTAREA"}]', NULL, NULL, 2, '155', '2026-03-02 08:41:00', '155', '2026-03-02 08:41:00', 0, 0);
INSERT INTO ae_adverse_event (id, event_no, template_id, category, level, status, reporter_id, reporter_type, report_time, dept_id, description, form_data, current_handler_id, current_dept_id, report_mode, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (312, 'AE20260317002', 2, 'NURSING', 3, 60, 154, 1, '2026-03-17 11:35:00', 200, '放疗等候区患者跌倒，造成软组织损伤，需要进一步检查处理。', '[{"label": "事件发生时间", "value": "见上报时间", "type": "DATETIME"}, {"label": "事件类别", "value": "NURSING", "type": "SELECT"}, {"label": "事件经过", "value": "详见事件描述", "type": "TEXTAREA"}]', NULL, NULL, 1, '154', '2026-03-17 11:35:00', '154', '2026-03-17 11:35:00', 0, 0);
INSERT INTO ae_adverse_event (id, event_no, template_id, category, level, status, reporter_id, reporter_type, report_time, dept_id, description, form_data, current_handler_id, current_dept_id, report_mode, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (313, 'AE20260304002', 3, 'INFECTION', 2, 30, 155, 1, '2026-03-04 15:47:00', 201, '放疗患者PICC置管处出现感染征象，需要抗感染治疗。', '[{"label": "事件发生时间", "value": "见上报时间", "type": "DATETIME"}, {"label": "事件类别", "value": "INFECTION", "type": "SELECT"}, {"label": "事件经过", "value": "详见事件描述", "type": "TEXTAREA"}]', 158, 1, 1, '155', '2026-03-04 15:47:00', '155', '2026-03-04 15:47:00', 0, 0);
INSERT INTO ae_adverse_event (id, event_no, template_id, category, level, status, reporter_id, reporter_type, report_time, dept_id, description, form_data, current_handler_id, current_dept_id, report_mode, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (314, 'AE20260331001', 4, 'DEVICE', 4, 60, 155, 1, '2026-03-31 13:23:00', 201, '放疗设备MLC叶片运动异常，影响调强放疗的实施质量。', '[{"label": "事件发生时间", "value": "见上报时间", "type": "DATETIME"}, {"label": "事件类别", "value": "DEVICE", "type": "SELECT"}, {"label": "事件经过", "value": "详见事件描述", "type": "TEXTAREA"}]', NULL, NULL, 1, '155', '2026-03-31 13:23:00', '155', '2026-03-31 13:23:00', 0, 0);
INSERT INTO ae_adverse_event (id, event_no, template_id, category, level, status, reporter_id, reporter_type, report_time, dept_id, description, form_data, current_handler_id, current_dept_id, report_mode, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (315, 'AE20260404001', 1, 'MEDICAL', 3, 50, 155, 1, '2026-04-04 18:14:00', 201, '放射治疗中发现患者合并用药与放疗存在相互作用，需调整用药方案。', '[{"label": "事件发生时间", "value": "见上报时间", "type": "DATETIME"}, {"label": "事件类别", "value": "MEDICAL", "type": "SELECT"}, {"label": "事件经过", "value": "详见事件描述", "type": "TEXTAREA"}]', NULL, NULL, 1, '155', '2026-04-04 18:14:00', '155', '2026-04-04 18:14:00', 0, 0);
INSERT INTO ae_adverse_event (id, event_no, template_id, category, level, status, reporter_id, reporter_type, report_time, dept_id, description, form_data, current_handler_id, current_dept_id, report_mode, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (316, 'AE20260404002', 1, 'MEDICAL', 2, 50, 155, 1, '2026-04-04 12:39:00', 201, '放疗计划审核时发现剂量计算错误，实际处方剂量与计划剂量不一致。', '[{"label": "事件发生时间", "value": "见上报时间", "type": "DATETIME"}, {"label": "事件类别", "value": "MEDICAL", "type": "SELECT"}, {"label": "事件经过", "value": "详见事件描述", "type": "TEXTAREA"}]', NULL, NULL, 2, '155', '2026-04-04 12:39:00', '155', '2026-04-04 12:39:00', 0, 0);
INSERT INTO ae_adverse_event (id, event_no, template_id, category, level, status, reporter_id, reporter_type, report_time, dept_id, description, form_data, current_handler_id, current_dept_id, report_mode, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (317, 'AE20260425001', 3, 'INFECTION', 4, 50, 154, 2, '2026-04-25 15:29:00', 200, '放疗科医护人员手卫生依从性检查发现不合格，需要整改。', '[{"label": "事件发生时间", "value": "见上报时间", "type": "DATETIME"}, {"label": "事件类别", "value": "INFECTION", "type": "SELECT"}, {"label": "事件经过", "value": "详见事件描述", "type": "TEXTAREA"}]', NULL, NULL, 1, '154', '2026-04-25 15:29:00', '154', '2026-04-25 15:29:00', 0, 0);
INSERT INTO ae_adverse_event (id, event_no, template_id, category, level, status, reporter_id, reporter_type, report_time, dept_id, description, form_data, current_handler_id, current_dept_id, report_mode, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (318, 'AE20260425002', 2, 'NURSING', 4, 50, 154, 1, '2026-04-25 10:44:00', 200, '放疗期间患者营养评估不到位，体重下降超过10%，影响治疗效果。', '[{"label": "事件发生时间", "value": "见上报时间", "type": "DATETIME"}, {"label": "事件类别", "value": "NURSING", "type": "SELECT"}, {"label": "事件经过", "value": "详见事件描述", "type": "TEXTAREA"}]', NULL, NULL, 1, '154', '2026-04-25 10:44:00', '154', '2026-04-25 10:44:00', 0, 0);
INSERT INTO ae_adverse_event (id, event_no, template_id, category, level, status, reporter_id, reporter_type, report_time, dept_id, description, form_data, current_handler_id, current_dept_id, report_mode, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (319, 'AE20260430001', 2, 'NURSING', 3, 20, 155, 1, '2026-04-30 11:17:00', 201, '放疗期间患者营养评估不到位，体重下降超过10%，影响治疗效果。', '[{"label": "事件发生时间", "value": "见上报时间", "type": "DATETIME"}, {"label": "事件类别", "value": "NURSING", "type": "SELECT"}, {"label": "事件经过", "value": "详见事件描述", "type": "TEXTAREA"}]', 157, 205, 1, '155', '2026-04-30 11:17:00', '155', '2026-04-30 11:17:00', 0, 0);
INSERT INTO ae_adverse_event (id, event_no, template_id, category, level, status, reporter_id, reporter_type, report_time, dept_id, description, form_data, current_handler_id, current_dept_id, report_mode, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (320, 'AE20260410001', 2, 'NURSING', 4, 50, 154, 1, '2026-04-10 16:55:00', 200, '患者放疗后出现严重恶心呕吐，护理记录不完整，未及时报告医生。', '[{"label": "事件发生时间", "value": "见上报时间", "type": "DATETIME"}, {"label": "事件类别", "value": "NURSING", "type": "SELECT"}, {"label": "事件经过", "value": "详见事件描述", "type": "TEXTAREA"}]', NULL, NULL, 1, '154', '2026-04-10 16:55:00', '154', '2026-04-10 16:55:00', 0, 0);
INSERT INTO ae_adverse_event (id, event_no, template_id, category, level, status, reporter_id, reporter_type, report_time, dept_id, description, form_data, current_handler_id, current_dept_id, report_mode, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (321, 'AE20260406001', 3, 'INFECTION', 3, 60, 154, 1, '2026-04-06 16:34:00', 200, '放疗科医护人员手卫生依从性检查发现不合格，需要整改。', '[{"label": "事件发生时间", "value": "见上报时间", "type": "DATETIME"}, {"label": "事件类别", "value": "INFECTION", "type": "SELECT"}, {"label": "事件经过", "value": "详见事件描述", "type": "TEXTAREA"}]', NULL, NULL, 1, '154', '2026-04-06 16:34:00', '154', '2026-04-06 16:34:00', 0, 0);
INSERT INTO ae_adverse_event (id, event_no, template_id, category, level, status, reporter_id, reporter_type, report_time, dept_id, description, form_data, current_handler_id, current_dept_id, report_mode, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (322, 'AE20260410002', 1, 'MEDICAL', 2, 50, 155, 1, '2026-04-10 14:51:00', 201, '患者在放疗过程中出现定位偏差，导致照射野偏移约5mm，经及时发现并纠正。', '[{"label": "事件发生时间", "value": "见上报时间", "type": "DATETIME"}, {"label": "事件类别", "value": "MEDICAL", "type": "SELECT"}, {"label": "事件经过", "value": "详见事件描述", "type": "TEXTAREA"}]', NULL, NULL, 1, '155', '2026-04-10 14:51:00', '155', '2026-04-10 14:51:00', 0, 0);
INSERT INTO ae_adverse_event (id, event_no, template_id, category, level, status, reporter_id, reporter_type, report_time, dept_id, description, form_data, current_handler_id, current_dept_id, report_mode, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (323, 'AE20260423001', 3, 'INFECTION', 1, 30, 155, 1, '2026-04-23 12:13:00', 201, '放疗科医护人员手卫生依从性检查发现不合格，需要整改。', '[{"label": "事件发生时间", "value": "见上报时间", "type": "DATETIME"}, {"label": "事件类别", "value": "INFECTION", "type": "SELECT"}, {"label": "事件经过", "value": "详见事件描述", "type": "TEXTAREA"}]', 158, 1, 2, '155', '2026-04-23 12:13:00', '155', '2026-04-23 12:13:00', 0, 0);
INSERT INTO ae_adverse_event (id, event_no, template_id, category, level, status, reporter_id, reporter_type, report_time, dept_id, description, form_data, current_handler_id, current_dept_id, report_mode, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (324, 'AE20260413001', 3, 'INFECTION', 4, 50, 155, 1, '2026-04-13 11:32:00', 201, '放疗科医护人员手卫生依从性检查发现不合格，需要整改。', '[{"label": "事件发生时间", "value": "见上报时间", "type": "DATETIME"}, {"label": "事件类别", "value": "INFECTION", "type": "SELECT"}, {"label": "事件经过", "value": "详见事件描述", "type": "TEXTAREA"}]', NULL, NULL, 1, '155', '2026-04-13 11:32:00', '155', '2026-04-13 11:32:00', 0, 0);
INSERT INTO ae_adverse_event (id, event_no, template_id, category, level, status, reporter_id, reporter_type, report_time, dept_id, description, form_data, current_handler_id, current_dept_id, report_mode, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (325, 'AE20260501001', 2, 'NURSING', 4, 20, 155, 1, '2026-05-01 12:12:00', 201, '放疗期间患者营养评估不到位，体重下降超过10%，影响治疗效果。', '[{"label": "事件发生时间", "value": "见上报时间", "type": "DATETIME"}, {"label": "事件类别", "value": "NURSING", "type": "SELECT"}, {"label": "事件经过", "value": "详见事件描述", "type": "TEXTAREA"}]', 157, 205, 2, '155', '2026-05-01 12:12:00', '155', '2026-05-01 12:12:00', 0, 0);
INSERT INTO ae_adverse_event (id, event_no, template_id, category, level, status, reporter_id, reporter_type, report_time, dept_id, description, form_data, current_handler_id, current_dept_id, report_mode, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (326, 'AE20260503001', 3, 'INFECTION', 2, 0, 154, 1, '2026-05-03 10:11:00', 200, '放疗科发现多重耐药菌感染病例，需要加强感染防控措施。', '[{"label": "事件发生时间", "value": "见上报时间", "type": "DATETIME"}, {"label": "事件类别", "value": "INFECTION", "type": "SELECT"}, {"label": "事件经过", "value": "详见事件描述", "type": "TEXTAREA"}]', NULL, NULL, 1, '154', '2026-05-03 10:11:00', '154', '2026-05-03 10:11:00', 0, 0);
INSERT INTO ae_adverse_event (id, event_no, template_id, category, level, status, reporter_id, reporter_type, report_time, dept_id, description, form_data, current_handler_id, current_dept_id, report_mode, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (327, 'AE20260505001', 1, 'MEDICAL', 4, 10, 155, 1, '2026-05-05 13:38:00', 201, '放疗设备晨检时发现输出剂量异常，偏差超过3%，需停机检修。', '[{"label": "事件发生时间", "value": "见上报时间", "type": "DATETIME"}, {"label": "事件类别", "value": "MEDICAL", "type": "SELECT"}, {"label": "事件经过", "value": "详见事件描述", "type": "TEXTAREA"}]', 156, 201, 1, '155', '2026-05-05 13:38:00', '155', '2026-05-05 13:38:00', 0, 0);
INSERT INTO ae_adverse_event (id, event_no, template_id, category, level, status, reporter_id, reporter_type, report_time, dept_id, description, form_data, current_handler_id, current_dept_id, report_mode, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (328, 'AE20260503002', 2, 'NURSING', 3, 10, 154, 1, '2026-05-03 16:10:00', 200, '放疗患者心理护理不到位，患者出现焦虑情绪，拒绝继续治疗。', '[{"label": "事件发生时间", "value": "见上报时间", "type": "DATETIME"}, {"label": "事件类别", "value": "NURSING", "type": "SELECT"}, {"label": "事件经过", "value": "详见事件描述", "type": "TEXTAREA"}]', 156, 200, 2, '154', '2026-05-03 16:10:00', '154', '2026-05-03 16:10:00', 0, 0);

-- ============================================================
-- PHASE 5: Insert 923 event flow records
-- ============================================================
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (13, 6, 0, 20, 154, 'SUBMIT', NULL, NULL, NULL, NULL, NULL, '2023-05-04 09:04:00', '154', '2023-05-04 09:04:00', '154', '2023-05-04 09:04:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (14, 6, 20, 50, 157, 'PROCESS', '经职能部门调查评估，认定事件原因为EQUIPMENT，损害程度为0。已制定改进方案。', 'EQUIPMENT', 0, 1, NULL, '2023-05-11 09:04:00', '157', '2023-05-11 09:04:00', '157', '2023-05-11 09:04:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (15, 7, 0, 10, 154, 'SUBMIT', NULL, NULL, NULL, NULL, NULL, '2023-05-18 12:06:00', '154', '2023-05-18 12:06:00', '154', '2023-05-18 12:06:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (16, 7, 10, 20, 156, 'PROCESS', '经科室调查，事件原因为设备因素，已联系设备科进行检修维护。', NULL, NULL, NULL, 205, '2023-05-21 19:06:00', '156', '2023-05-21 19:06:00', '156', '2023-05-21 19:06:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (17, 7, 20, 50, 157, 'PROCESS', '经职能部门调查评估，认定事件原因为ENVIRONMENT，损害程度为1。已制定改进方案。', 'ENVIRONMENT', 1, 0, NULL, '2023-05-28 22:06:00', '157', '2023-05-28 22:06:00', '157', '2023-05-28 22:06:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (18, 8, 0, 10, 154, 'SUBMIT', NULL, NULL, NULL, NULL, NULL, '2023-05-05 12:09:00', '154', '2023-05-05 12:09:00', '154', '2023-05-05 12:09:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (19, 8, 10, 20, 156, 'PROCESS', '经科室讨论，认为该事件属于操作流程不规范导致，已对相关人员进行培训。', NULL, NULL, NULL, 205, '2023-05-08 18:09:00', '156', '2023-05-08 18:09:00', '156', '2023-05-08 18:09:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (20, 8, 20, 30, 157, 'PROCESS', '经调查核实，事件处理及时有效，未造成严重后果。建议纳入科室质量改进计划。', 'PROCESS', 1, 0, NULL, '2023-05-13 22:09:00', '157', '2023-05-13 22:09:00', '157', '2023-05-13 22:09:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (21, 8, 30, 50, 158, 'PROCESS', '已审阅事件报告，同意处理意见。要求质控办持续跟踪整改效果。', NULL, NULL, NULL, NULL, '2023-05-16 22:09:00', '158', '2023-05-16 22:09:00', '158', '2023-05-16 22:09:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (22, 9, 0, 10, 155, 'SUBMIT', NULL, NULL, NULL, NULL, NULL, '2023-05-18 13:09:00', '155', '2023-05-18 13:09:00', '155', '2023-05-18 13:09:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (23, 9, 10, 20, 156, 'PROCESS', '经科室讨论，已制定整改措施并落实到人，限期整改完成。', NULL, NULL, NULL, 205, '2023-05-23 20:09:00', '156', '2023-05-23 20:09:00', '156', '2023-05-23 20:09:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (24, 9, 20, 50, 157, 'PROCESS', '已完成事件调查，确认事件属实。建议加强操作规范方面的管理和培训。', 'HUMAN', 1, 1, NULL, '2023-05-26 00:09:00', '157', '2023-05-26 00:09:00', '157', '2023-05-26 00:09:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (25, 10, 0, 10, 155, 'SUBMIT', NULL, NULL, NULL, NULL, NULL, '2023-05-28 09:34:00', '155', '2023-05-28 09:34:00', '155', '2023-05-28 09:34:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (26, 10, 10, 20, 156, 'PROCESS', '经科室讨论，认为该事件属于操作流程不规范导致，已对相关人员进行培训。', NULL, NULL, NULL, 205, '2023-06-02 10:34:00', '156', '2023-06-02 10:34:00', '156', '2023-06-02 10:34:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (27, 10, 20, 70, 157, 'VOID', '经核实，该事件不属于不良事件范畴，予以作废。', NULL, NULL, NULL, NULL, '2023-06-05 18:34:00', '157', '2023-06-05 18:34:00', '157', '2023-06-05 18:34:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (28, 11, 0, 20, 155, 'SUBMIT', NULL, NULL, NULL, NULL, NULL, '2023-05-20 18:27:00', '155', '2023-05-20 18:27:00', '155', '2023-05-20 18:27:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (29, 11, 20, 70, 157, 'VOID', '经核实，该事件不属于不良事件范畴，予以作废。', NULL, NULL, NULL, NULL, '2023-05-22 19:27:00', '157', '2023-05-22 19:27:00', '157', '2023-05-22 19:27:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (30, 12, 0, 10, 155, 'SUBMIT', NULL, NULL, NULL, NULL, NULL, '2023-05-25 08:20:00', '155', '2023-05-25 08:20:00', '155', '2023-05-25 08:20:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (31, 12, 10, 20, 156, 'PROCESS', '经科室讨论，认为该事件属于操作流程不规范导致，已对相关人员进行培训。', NULL, NULL, NULL, 208, '2023-05-27 14:20:00', '156', '2023-05-27 14:20:00', '156', '2023-05-27 14:20:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (32, 12, 20, 50, 157, 'PROCESS', '已完成事件定性定级，事件级别为4级，建议按流程继续上报处理。', 'MEDICATION', 1, 0, NULL, '2023-05-30 22:20:00', '157', '2023-05-30 22:20:00', '157', '2023-05-30 22:20:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (33, 13, 0, 10, 155, 'SUBMIT', NULL, NULL, NULL, NULL, NULL, '2023-05-29 18:49:00', '155', '2023-05-29 18:49:00', '155', '2023-05-29 18:49:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (34, 13, 10, 20, 156, 'PROCESS', '经科室讨论，认为该事件属于操作流程不规范导致，已对相关人员进行培训。', NULL, NULL, NULL, 205, '2023-05-30 20:49:00', '156', '2023-05-30 20:49:00', '156', '2023-05-30 20:49:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (35, 13, 20, 60, 157, 'RETURN', '报告内容不完整，缺少关键信息，请补充后重新提交。', NULL, NULL, NULL, NULL, '2023-06-05 01:49:00', '157', '2023-06-05 01:49:00', '157', '2023-06-05 01:49:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (36, 14, 0, 10, 154, 'SUBMIT', NULL, NULL, NULL, NULL, NULL, '2023-06-16 09:50:00', '154', '2023-06-16 09:50:00', '154', '2023-06-16 09:50:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (37, 14, 10, 20, 156, 'PROCESS', '经科室调查，事件原因为设备因素，已联系设备科进行检修维护。', NULL, NULL, NULL, 205, '2023-06-17 09:50:00', '156', '2023-06-17 09:50:00', '156', '2023-06-17 09:50:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (38, 14, 20, 30, 157, 'PROCESS', '经职能部门调查评估，认定事件原因为OTHER，损害程度为2。已制定改进方案。', 'OTHER', 2, 0, NULL, '2023-06-21 17:50:00', '157', '2023-06-21 17:50:00', '157', '2023-06-21 17:50:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (39, 14, 30, 50, 158, 'PROCESS', '已审阅事件报告，同意处理意见。要求质控办持续跟踪整改效果。', NULL, NULL, NULL, NULL, '2023-06-26 20:50:00', '158', '2023-06-26 20:50:00', '158', '2023-06-26 20:50:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (40, 15, 0, 10, 155, 'SUBMIT', NULL, NULL, NULL, NULL, NULL, '2023-06-22 09:56:00', '155', '2023-06-22 09:56:00', '155', '2023-06-22 09:56:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (41, 15, 10, 20, 156, 'PROCESS', '经科室讨论，已制定整改措施并落实到人，限期整改完成。', NULL, NULL, NULL, 208, '2023-06-26 16:56:00', '156', '2023-06-26 16:56:00', '156', '2023-06-26 16:56:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (42, 15, 20, 50, 157, 'PROCESS', '经职能部门调查评估，认定事件原因为OTHER，损害程度为3。已制定改进方案。', 'OTHER', 3, 1, NULL, '2023-07-01 21:56:00', '157', '2023-07-01 21:56:00', '157', '2023-07-01 21:56:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (43, 16, 0, 10, 155, 'SUBMIT', NULL, NULL, NULL, NULL, NULL, '2023-06-25 10:44:00', '155', '2023-06-25 10:44:00', '155', '2023-06-25 10:44:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (44, 16, 10, 20, 156, 'PROCESS', '经科室讨论，认为该事件属于操作流程不规范导致，已对相关人员进行培训。', NULL, NULL, NULL, 207, '2023-06-26 18:44:00', '156', '2023-06-26 18:44:00', '156', '2023-06-26 18:44:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (45, 16, 20, 50, 157, 'PROCESS', '经调查核实，事件处理及时有效，未造成严重后果。建议纳入科室质量改进计划。', 'EQUIPMENT', 1, 0, NULL, '2023-07-03 19:44:00', '157', '2023-07-03 19:44:00', '157', '2023-07-03 19:44:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (46, 17, 0, 20, 155, 'SUBMIT', NULL, NULL, NULL, NULL, NULL, '2023-06-30 08:39:00', '155', '2023-06-30 08:39:00', '155', '2023-06-30 08:39:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (47, 17, 20, 30, 157, 'PROCESS', '经专家评估，该事件属于系统性问题，建议从制度层面进行改进。', 'MEDICATION', 3, 1, NULL, '2023-07-07 09:39:00', '157', '2023-07-07 09:39:00', '157', '2023-07-07 09:39:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (48, 17, 30, 50, 158, 'PROCESS', '已审阅事件报告，同意处理意见。要求质控办持续跟踪整改效果。', NULL, NULL, NULL, NULL, '2023-07-12 10:39:00', '158', '2023-07-12 10:39:00', '158', '2023-07-12 10:39:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (49, 18, 0, 10, 155, 'SUBMIT', NULL, NULL, NULL, NULL, NULL, '2023-06-27 10:13:00', '155', '2023-06-27 10:13:00', '155', '2023-06-27 10:13:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (50, 18, 10, 20, 156, 'PROCESS', '科室已对事件进行初步分析，认为需要职能部门进一步评估处理。', NULL, NULL, NULL, 205, '2023-06-30 11:13:00', '156', '2023-06-30 11:13:00', '156', '2023-06-30 11:13:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (51, 18, 20, 30, 157, 'PROCESS', '已完成事件定性定级，事件级别为2级，建议按流程继续上报处理。', 'OTHER', 3, 0, NULL, '2023-07-05 17:13:00', '157', '2023-07-05 17:13:00', '157', '2023-07-05 17:13:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (52, 18, 30, 50, 158, 'PROCESS', '该事件性质严重，同意提交质量委员会讨论，制定系统性改进方案。', NULL, NULL, NULL, NULL, '2023-07-07 00:13:00', '158', '2023-07-07 00:13:00', '158', '2023-07-07 00:13:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (53, 19, 0, 10, 155, 'SUBMIT', NULL, NULL, NULL, NULL, NULL, '2023-06-07 12:42:00', '155', '2023-06-07 12:42:00', '155', '2023-06-07 12:42:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (54, 19, 10, 20, 156, 'PROCESS', '经科室讨论，已制定整改措施并落实到人，限期整改完成。', NULL, NULL, NULL, 207, '2023-06-09 14:42:00', '156', '2023-06-09 14:42:00', '156', '2023-06-09 14:42:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (55, 19, 20, 50, 157, 'PROCESS', '已完成事件调查，确认事件属实。建议加强操作规范方面的管理和培训。', 'HUMAN', 0, 0, NULL, '2023-06-15 18:42:00', '157', '2023-06-15 18:42:00', '157', '2023-06-15 18:42:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (56, 20, 0, 20, 154, 'SUBMIT', NULL, NULL, NULL, NULL, NULL, '2023-06-08 08:13:00', '154', '2023-06-08 08:13:00', '154', '2023-06-08 08:13:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (57, 20, 20, 30, 157, 'PROCESS', '经职能部门调查评估，认定事件原因为PROCESS，损害程度为1。已制定改进方案。', 'PROCESS', 1, 1, NULL, '2023-06-15 13:13:00', '157', '2023-06-15 13:13:00', '157', '2023-06-15 13:13:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (58, 20, 30, 50, 158, 'PROCESS', '该事件性质严重，同意提交质量委员会讨论，制定系统性改进方案。', NULL, NULL, NULL, NULL, '2023-06-20 21:13:00', '158', '2023-06-20 21:13:00', '158', '2023-06-20 21:13:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (59, 21, 0, 10, 154, 'SUBMIT', NULL, NULL, NULL, NULL, NULL, '2023-06-19 15:18:00', '154', '2023-06-19 15:18:00', '154', '2023-06-19 15:18:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (60, 21, 10, 20, 156, 'PROCESS', '科室已对相关流程进行优化，增加了核查环节，防止类似事件再次发生。', NULL, NULL, NULL, 206, '2023-06-20 15:18:00', '156', '2023-06-20 15:18:00', '156', '2023-06-20 15:18:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (61, 21, 20, 50, 157, 'PROCESS', '经调查核实，事件处理及时有效，未造成严重后果。建议纳入科室质量改进计划。', 'EQUIPMENT', 3, 1, NULL, '2023-06-26 21:18:00', '157', '2023-06-26 21:18:00', '157', '2023-06-26 21:18:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (62, 22, 0, 10, 154, 'SUBMIT', NULL, NULL, NULL, NULL, NULL, '2023-07-13 14:08:00', '154', '2023-07-13 14:08:00', '154', '2023-07-13 14:08:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (63, 22, 10, 20, 156, 'PROCESS', '经科室调查，事件原因为设备因素，已联系设备科进行检修维护。', NULL, NULL, NULL, 208, '2023-07-14 18:08:00', '156', '2023-07-14 18:08:00', '156', '2023-07-14 18:08:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (64, 22, 20, 50, 157, 'PROCESS', '已完成事件调查，确认事件属实。建议加强操作规范方面的管理和培训。', 'PROCESS', 3, 1, NULL, '2023-07-21 23:08:00', '157', '2023-07-21 23:08:00', '157', '2023-07-21 23:08:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (65, 23, 0, 20, 154, 'SUBMIT', NULL, NULL, NULL, NULL, NULL, '2023-07-04 08:54:00', '154', '2023-07-04 08:54:00', '154', '2023-07-04 08:54:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (66, 23, 20, 50, 157, 'PROCESS', '已完成事件调查，确认事件属实。建议加强操作规范方面的管理和培训。', 'PROCESS', 1, 0, NULL, '2023-07-11 16:54:00', '157', '2023-07-11 16:54:00', '157', '2023-07-11 16:54:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (67, 24, 0, 10, 155, 'SUBMIT', NULL, NULL, NULL, NULL, NULL, '2023-07-06 14:05:00', '155', '2023-07-06 14:05:00', '155', '2023-07-06 14:05:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (68, 24, 10, 20, 156, 'PROCESS', '科室已对相关流程进行优化，增加了核查环节，防止类似事件再次发生。', NULL, NULL, NULL, 207, '2023-07-08 17:05:00', '156', '2023-07-08 17:05:00', '156', '2023-07-08 17:05:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (69, 24, 20, 80, 157, 'NOT_TRUE', '经调查核实，该事件举报内容不属实，相关情况说明已存档。', NULL, NULL, NULL, NULL, '2023-07-12 20:05:00', '157', '2023-07-12 20:05:00', '157', '2023-07-12 20:05:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (70, 25, 0, 10, 154, 'SUBMIT', NULL, NULL, NULL, NULL, NULL, '2023-07-05 11:21:00', '154', '2023-07-05 11:21:00', '154', '2023-07-05 11:21:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (71, 25, 10, 20, 156, 'PROCESS', '科室已对相关流程进行优化，增加了核查环节，防止类似事件再次发生。', NULL, NULL, NULL, 205, '2023-07-07 11:21:00', '156', '2023-07-07 11:21:00', '156', '2023-07-07 11:21:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (72, 25, 20, 60, 157, 'RETURN', '报告内容不完整，缺少关键信息，请补充后重新提交。', NULL, NULL, NULL, NULL, '2023-07-12 19:21:00', '157', '2023-07-12 19:21:00', '157', '2023-07-12 19:21:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (73, 26, 0, 10, 154, 'SUBMIT', NULL, NULL, NULL, NULL, NULL, '2023-07-02 16:14:00', '154', '2023-07-02 16:14:00', '154', '2023-07-02 16:14:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (74, 26, 10, 20, 156, 'PROCESS', '经科室讨论，认为该事件属于操作流程不规范导致，已对相关人员进行培训。', NULL, NULL, NULL, 208, '2023-07-03 20:14:00', '156', '2023-07-03 20:14:00', '156', '2023-07-03 20:14:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (75, 26, 20, 30, 157, 'PROCESS', '经专家评估，该事件属于系统性问题，建议从制度层面进行改进。', 'HUMAN', 2, 0, NULL, '2023-07-07 03:14:00', '157', '2023-07-07 03:14:00', '157', '2023-07-07 03:14:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (76, 26, 30, 50, 158, 'PROCESS', '该事件性质严重，同意提交质量委员会讨论，制定系统性改进方案。', NULL, NULL, NULL, NULL, '2023-07-10 05:14:00', '158', '2023-07-10 05:14:00', '158', '2023-07-10 05:14:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (77, 27, 0, 10, 154, 'SUBMIT', NULL, NULL, NULL, NULL, NULL, '2023-07-22 17:39:00', '154', '2023-07-22 17:39:00', '154', '2023-07-22 17:39:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (78, 27, 10, 20, 156, 'PROCESS', '经科室调查，事件原因为设备因素，已联系设备科进行检修维护。', NULL, NULL, NULL, 205, '2023-07-25 18:39:00', '156', '2023-07-25 18:39:00', '156', '2023-07-25 18:39:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (79, 27, 20, 50, 157, 'PROCESS', '已完成事件定性定级，事件级别为4级，建议按流程继续上报处理。', 'HUMAN', 2, 0, NULL, '2023-07-30 01:39:00', '157', '2023-07-30 01:39:00', '157', '2023-07-30 01:39:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (80, 28, 0, 10, 154, 'SUBMIT', NULL, NULL, NULL, NULL, NULL, '2023-08-01 15:49:00', '154', '2023-08-01 15:49:00', '154', '2023-08-01 15:49:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (81, 28, 10, 20, 156, 'PROCESS', '科室已对相关流程进行优化，增加了核查环节，防止类似事件再次发生。', NULL, NULL, NULL, 207, '2023-08-06 19:49:00', '156', '2023-08-06 19:49:00', '156', '2023-08-06 19:49:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (82, 28, 20, 50, 157, 'PROCESS', '经专家评估，该事件属于系统性问题，建议从制度层面进行改进。', 'EQUIPMENT', 0, 1, NULL, '2023-08-10 00:49:00', '157', '2023-08-10 00:49:00', '157', '2023-08-10 00:49:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (83, 29, 0, 10, 154, 'SUBMIT', NULL, NULL, NULL, NULL, NULL, '2023-08-06 16:23:00', '154', '2023-08-06 16:23:00', '154', '2023-08-06 16:23:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (84, 29, 10, 20, 156, 'PROCESS', '经科室讨论，认为该事件属于操作流程不规范导致，已对相关人员进行培训。', NULL, NULL, NULL, 205, '2023-08-10 18:23:00', '156', '2023-08-10 18:23:00', '156', '2023-08-10 18:23:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (85, 29, 20, 50, 157, 'PROCESS', '已完成事件调查，确认事件属实。建议加强操作规范方面的管理和培训。', 'HUMAN', 3, 1, NULL, '2023-08-14 21:23:00', '157', '2023-08-14 21:23:00', '157', '2023-08-14 21:23:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (86, 30, 0, 10, 155, 'SUBMIT', NULL, NULL, NULL, NULL, NULL, '2023-08-24 16:31:00', '155', '2023-08-24 16:31:00', '155', '2023-08-24 16:31:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (87, 30, 10, 20, 156, 'PROCESS', '科室已对事件进行初步分析，认为需要职能部门进一步评估处理。', NULL, NULL, NULL, 205, '2023-08-28 20:31:00', '156', '2023-08-28 20:31:00', '156', '2023-08-28 20:31:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (88, 30, 20, 50, 157, 'PROCESS', '已完成事件定性定级，事件级别为3级，建议按流程继续上报处理。', 'PROCESS', 3, 0, NULL, '2023-09-01 01:31:00', '157', '2023-09-01 01:31:00', '157', '2023-09-01 01:31:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (89, 31, 0, 10, 154, 'SUBMIT', NULL, NULL, NULL, NULL, NULL, '2023-08-21 15:07:00', '154', '2023-08-21 15:07:00', '154', '2023-08-21 15:07:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (90, 31, 10, 20, 156, 'PROCESS', '科室已对事件进行初步分析，认为需要职能部门进一步评估处理。', NULL, NULL, NULL, 205, '2023-08-25 20:07:00', '156', '2023-08-25 20:07:00', '156', '2023-08-25 20:07:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (91, 31, 20, 80, 157, 'NOT_TRUE', '经调查核实，该事件举报内容不属实，相关情况说明已存档。', NULL, NULL, NULL, NULL, '2023-08-31 04:07:00', '157', '2023-08-31 04:07:00', '157', '2023-08-31 04:07:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (92, 32, 0, 10, 154, 'SUBMIT', NULL, NULL, NULL, NULL, NULL, '2023-08-04 09:59:00', '154', '2023-08-04 09:59:00', '154', '2023-08-04 09:59:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (93, 32, 10, 20, 156, 'PROCESS', '科室已对事件进行初步分析，认为需要职能部门进一步评估处理。', NULL, NULL, NULL, 206, '2023-08-06 10:59:00', '156', '2023-08-06 10:59:00', '156', '2023-08-06 10:59:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (94, 32, 20, 30, 157, 'PROCESS', '已完成事件调查，确认事件属实。建议加强操作规范方面的管理和培训。', 'EQUIPMENT', 3, 0, NULL, '2023-08-09 18:59:00', '157', '2023-08-09 18:59:00', '157', '2023-08-09 18:59:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (95, 32, 30, 50, 158, 'PROCESS', '同意职能部门处理意见，要求相关科室认真落实整改措施。', NULL, NULL, NULL, NULL, '2023-08-12 19:59:00', '158', '2023-08-12 19:59:00', '158', '2023-08-12 19:59:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (96, 33, 0, 20, 155, 'SUBMIT', NULL, NULL, NULL, NULL, NULL, '2023-08-29 13:41:00', '155', '2023-08-29 13:41:00', '155', '2023-08-29 13:41:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (97, 33, 20, 50, 157, 'PROCESS', '经职能部门调查评估，认定事件原因为PROCESS，损害程度为1。已制定改进方案。', 'PROCESS', 1, 0, NULL, '2023-08-31 21:41:00', '157', '2023-08-31 21:41:00', '157', '2023-08-31 21:41:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (98, 34, 0, 20, 155, 'SUBMIT', NULL, NULL, NULL, NULL, NULL, '2023-09-29 14:27:00', '155', '2023-09-29 14:27:00', '155', '2023-09-29 14:27:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (99, 34, 20, 50, 157, 'PROCESS', '经调查核实，事件处理及时有效，未造成严重后果。建议纳入科室质量改进计划。', 'HUMAN', 2, 0, NULL, '2023-10-05 20:27:00', '157', '2023-10-05 20:27:00', '157', '2023-10-05 20:27:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (100, 35, 0, 20, 155, 'SUBMIT', NULL, NULL, NULL, NULL, NULL, '2023-09-28 09:00:00', '155', '2023-09-28 09:00:00', '155', '2023-09-28 09:00:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (101, 35, 20, 30, 157, 'PROCESS', '经专家评估，该事件属于系统性问题，建议从制度层面进行改进。', 'PROCESS', 1, 1, NULL, '2023-09-30 17:00:00', '157', '2023-09-30 17:00:00', '157', '2023-09-30 17:00:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (102, 35, 30, 50, 158, 'PROCESS', '同意按流程处理，要求举一反三，在全院范围内开展安全教育。', NULL, NULL, NULL, NULL, '2023-10-06 01:00:00', '158', '2023-10-06 01:00:00', '158', '2023-10-06 01:00:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (103, 36, 0, 10, 155, 'SUBMIT', NULL, NULL, NULL, NULL, NULL, '2023-09-25 12:42:00', '155', '2023-09-25 12:42:00', '155', '2023-09-25 12:42:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (104, 36, 10, 20, 156, 'PROCESS', '经科室讨论，已制定整改措施并落实到人，限期整改完成。', NULL, NULL, NULL, 205, '2023-09-27 17:42:00', '156', '2023-09-27 17:42:00', '156', '2023-09-27 17:42:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (105, 36, 20, 50, 157, 'PROCESS', '已完成事件调查，确认事件属实。建议加强操作规范方面的管理和培训。', 'HUMAN', 4, 1, NULL, '2023-09-30 21:42:00', '157', '2023-09-30 21:42:00', '157', '2023-09-30 21:42:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (106, 37, 0, 10, 154, 'SUBMIT', NULL, NULL, NULL, NULL, NULL, '2023-09-20 14:36:00', '154', '2023-09-20 14:36:00', '154', '2023-09-20 14:36:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (107, 37, 10, 20, 156, 'PROCESS', '经科室讨论，认为该事件属于操作流程不规范导致，已对相关人员进行培训。', NULL, NULL, NULL, 206, '2023-09-25 22:36:00', '156', '2023-09-25 22:36:00', '156', '2023-09-25 22:36:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (108, 37, 20, 50, 157, 'PROCESS', '经调查核实，事件处理及时有效，未造成严重后果。建议纳入科室质量改进计划。', 'ENVIRONMENT', 0, 0, NULL, '2023-10-01 03:36:00', '157', '2023-10-01 03:36:00', '157', '2023-10-01 03:36:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (109, 38, 0, 10, 155, 'SUBMIT', NULL, NULL, NULL, NULL, NULL, '2023-09-22 18:12:00', '155', '2023-09-22 18:12:00', '155', '2023-09-22 18:12:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (110, 38, 10, 20, 156, 'PROCESS', '科室已对相关流程进行优化，增加了核查环节，防止类似事件再次发生。', NULL, NULL, NULL, 205, '2023-09-24 20:12:00', '156', '2023-09-24 20:12:00', '156', '2023-09-24 20:12:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (111, 38, 20, 30, 157, 'PROCESS', '已完成事件调查，确认事件属实。建议加强操作规范方面的管理和培训。', 'PROCESS', 2, 0, NULL, '2023-09-28 03:12:00', '157', '2023-09-28 03:12:00', '157', '2023-09-28 03:12:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (112, 38, 30, 50, 158, 'PROCESS', '同意按流程处理，要求举一反三，在全院范围内开展安全教育。', NULL, NULL, NULL, NULL, '2023-09-30 05:12:00', '158', '2023-09-30 05:12:00', '158', '2023-09-30 05:12:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (113, 39, 0, 20, 155, 'SUBMIT', NULL, NULL, NULL, NULL, NULL, '2023-09-10 16:38:00', '155', '2023-09-10 16:38:00', '155', '2023-09-10 16:38:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (114, 39, 20, 60, 157, 'RETURN', '报告内容不完整，缺少关键信息，请补充后重新提交。', NULL, NULL, NULL, NULL, '2023-09-14 16:38:00', '157', '2023-09-14 16:38:00', '157', '2023-09-14 16:38:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (115, 40, 0, 10, 155, 'SUBMIT', NULL, NULL, NULL, NULL, NULL, '2023-10-10 11:51:00', '155', '2023-10-10 11:51:00', '155', '2023-10-10 11:51:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (116, 40, 10, 20, 156, 'PROCESS', '经科室讨论，认为该事件属于操作流程不规范导致，已对相关人员进行培训。', NULL, NULL, NULL, 206, '2023-10-14 14:51:00', '156', '2023-10-14 14:51:00', '156', '2023-10-14 14:51:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (117, 40, 20, 50, 157, 'PROCESS', '已完成事件调查，确认事件属实。建议加强操作规范方面的管理和培训。', 'PROCESS', 3, 0, NULL, '2023-10-18 19:51:00', '157', '2023-10-18 19:51:00', '157', '2023-10-18 19:51:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (118, 41, 0, 20, 155, 'SUBMIT', NULL, NULL, NULL, NULL, NULL, '2023-10-22 09:19:00', '155', '2023-10-22 09:19:00', '155', '2023-10-22 09:19:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (119, 41, 20, 50, 157, 'PROCESS', '经调查核实，事件处理及时有效，未造成严重后果。建议纳入科室质量改进计划。', 'EQUIPMENT', 3, 1, NULL, '2023-10-29 12:19:00', '157', '2023-10-29 12:19:00', '157', '2023-10-29 12:19:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (120, 42, 0, 10, 155, 'SUBMIT', NULL, NULL, NULL, NULL, NULL, '2023-10-08 16:08:00', '155', '2023-10-08 16:08:00', '155', '2023-10-08 16:08:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (121, 42, 10, 20, 156, 'PROCESS', '经科室讨论，已制定整改措施并落实到人，限期整改完成。', NULL, NULL, NULL, 208, '2023-10-11 22:08:00', '156', '2023-10-11 22:08:00', '156', '2023-10-11 22:08:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (122, 42, 20, 80, 157, 'NOT_TRUE', '经调查核实，该事件举报内容不属实，相关情况说明已存档。', NULL, NULL, NULL, NULL, '2023-10-16 22:08:00', '157', '2023-10-16 22:08:00', '157', '2023-10-16 22:08:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (123, 43, 0, 10, 154, 'SUBMIT', NULL, NULL, NULL, NULL, NULL, '2023-10-21 08:58:00', '154', '2023-10-21 08:58:00', '154', '2023-10-21 08:58:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (124, 43, 10, 20, 156, 'PROCESS', '科室已对相关流程进行优化，增加了核查环节，防止类似事件再次发生。', NULL, NULL, NULL, 206, '2023-10-24 09:58:00', '156', '2023-10-24 09:58:00', '156', '2023-10-24 09:58:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (125, 43, 20, 50, 157, 'PROCESS', '经专家评估，该事件属于系统性问题，建议从制度层面进行改进。', 'HUMAN', 1, 0, NULL, '2023-10-31 13:58:00', '157', '2023-10-31 13:58:00', '157', '2023-10-31 13:58:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (126, 44, 0, 20, 155, 'SUBMIT', NULL, NULL, NULL, NULL, NULL, '2023-10-15 11:09:00', '155', '2023-10-15 11:09:00', '155', '2023-10-15 11:09:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (127, 44, 20, 60, 157, 'RETURN', '事件描述不够详细，请补充事件发生的经过、原因分析和已采取的措施。', NULL, NULL, NULL, NULL, '2023-10-21 13:09:00', '157', '2023-10-21 13:09:00', '157', '2023-10-21 13:09:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (128, 45, 0, 10, 155, 'SUBMIT', NULL, NULL, NULL, NULL, NULL, '2023-10-30 16:48:00', '155', '2023-10-30 16:48:00', '155', '2023-10-30 16:48:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (129, 45, 10, 20, 156, 'PROCESS', '科室已对相关流程进行优化，增加了核查环节，防止类似事件再次发生。', NULL, NULL, NULL, 208, '2023-11-03 21:48:00', '156', '2023-11-03 21:48:00', '156', '2023-11-03 21:48:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (130, 45, 20, 50, 157, 'PROCESS', '经调查核实，事件处理及时有效，未造成严重后果。建议纳入科室质量改进计划。', 'ENVIRONMENT', 2, 0, NULL, '2023-11-10 22:48:00', '157', '2023-11-10 22:48:00', '157', '2023-11-10 22:48:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (131, 46, 0, 10, 155, 'SUBMIT', NULL, NULL, NULL, NULL, NULL, '2023-10-09 15:12:00', '155', '2023-10-09 15:12:00', '155', '2023-10-09 15:12:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (132, 46, 10, 20, 156, 'PROCESS', '科室已对相关流程进行优化，增加了核查环节，防止类似事件再次发生。', NULL, NULL, NULL, 206, '2023-10-13 18:12:00', '156', '2023-10-13 18:12:00', '156', '2023-10-13 18:12:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (133, 46, 20, 50, 157, 'PROCESS', '经专家评估，该事件属于系统性问题，建议从制度层面进行改进。', 'HUMAN', 2, 0, NULL, '2023-10-18 23:12:00', '157', '2023-10-18 23:12:00', '157', '2023-10-18 23:12:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (134, 47, 0, 10, 155, 'SUBMIT', NULL, NULL, NULL, NULL, NULL, '2023-11-14 13:49:00', '155', '2023-11-14 13:49:00', '155', '2023-11-14 13:49:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (135, 47, 10, 20, 156, 'PROCESS', '科室已对相关流程进行优化，增加了核查环节，防止类似事件再次发生。', NULL, NULL, NULL, 205, '2023-11-18 13:49:00', '156', '2023-11-18 13:49:00', '156', '2023-11-18 13:49:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (136, 47, 20, 30, 157, 'PROCESS', '已完成事件调查，确认事件属实。建议加强操作规范方面的管理和培训。', 'MEDICATION', 2, 0, NULL, '2023-11-21 20:49:00', '157', '2023-11-21 20:49:00', '157', '2023-11-21 20:49:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (137, 47, 30, 50, 158, 'PROCESS', '已审阅事件报告，同意处理意见。要求质控办持续跟踪整改效果。', NULL, NULL, NULL, NULL, '2023-11-23 21:49:00', '158', '2023-11-23 21:49:00', '158', '2023-11-23 21:49:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (138, 48, 0, 10, 154, 'SUBMIT', NULL, NULL, NULL, NULL, NULL, '2023-11-10 15:00:00', '154', '2023-11-10 15:00:00', '154', '2023-11-10 15:00:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (139, 48, 10, 20, 156, 'PROCESS', '经科室调查，事件原因为设备因素，已联系设备科进行检修维护。', NULL, NULL, NULL, 208, '2023-11-12 17:00:00', '156', '2023-11-12 17:00:00', '156', '2023-11-12 17:00:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (140, 48, 20, 50, 157, 'PROCESS', '已完成事件调查，确认事件属实。建议加强操作规范方面的管理和培训。', 'EQUIPMENT', 2, 0, NULL, '2023-11-16 18:00:00', '157', '2023-11-16 18:00:00', '157', '2023-11-16 18:00:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (141, 49, 0, 10, 154, 'SUBMIT', NULL, NULL, NULL, NULL, NULL, '2023-11-27 16:11:00', '154', '2023-11-27 16:11:00', '154', '2023-11-27 16:11:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (142, 49, 10, 20, 156, 'PROCESS', '经科室讨论，已制定整改措施并落实到人，限期整改完成。', NULL, NULL, NULL, 205, '2023-11-30 17:11:00', '156', '2023-11-30 17:11:00', '156', '2023-11-30 17:11:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (143, 49, 20, 70, 157, 'VOID', '经核实，该事件不属于不良事件范畴，予以作废。', NULL, NULL, NULL, NULL, '2023-12-08 00:11:00', '157', '2023-12-08 00:11:00', '157', '2023-12-08 00:11:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (144, 50, 0, 20, 155, 'SUBMIT', NULL, NULL, NULL, NULL, NULL, '2023-11-06 08:31:00', '155', '2023-11-06 08:31:00', '155', '2023-11-06 08:31:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (145, 50, 20, 50, 157, 'PROCESS', '已完成事件定性定级，事件级别为3级，建议按流程继续上报处理。', 'OTHER', 1, 0, NULL, '2023-11-09 10:31:00', '157', '2023-11-09 10:31:00', '157', '2023-11-09 10:31:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (146, 51, 0, 10, 154, 'SUBMIT', NULL, NULL, NULL, NULL, NULL, '2023-11-01 16:03:00', '154', '2023-11-01 16:03:00', '154', '2023-11-01 16:03:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (147, 51, 10, 20, 156, 'PROCESS', '经科室调查，事件原因为设备因素，已联系设备科进行检修维护。', NULL, NULL, NULL, 207, '2023-11-03 16:03:00', '156', '2023-11-03 16:03:00', '156', '2023-11-03 16:03:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (148, 52, 0, 10, 154, 'SUBMIT', NULL, NULL, NULL, NULL, NULL, '2023-11-08 10:48:00', '154', '2023-11-08 10:48:00', '154', '2023-11-08 10:48:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (149, 52, 10, 20, 156, 'PROCESS', '经科室调查，事件原因为设备因素，已联系设备科进行检修维护。', NULL, NULL, NULL, 206, '2023-11-13 12:48:00', '156', '2023-11-13 12:48:00', '156', '2023-11-13 12:48:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (150, 52, 20, 50, 157, 'PROCESS', '经职能部门调查评估，认定事件原因为PROCESS，损害程度为4。已制定改进方案。', 'PROCESS', 4, 0, NULL, '2023-11-20 20:48:00', '157', '2023-11-20 20:48:00', '157', '2023-11-20 20:48:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (151, 53, 0, 10, 155, 'SUBMIT', NULL, NULL, NULL, NULL, NULL, '2023-11-10 10:05:00', '155', '2023-11-10 10:05:00', '155', '2023-11-10 10:05:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (152, 53, 10, 20, 156, 'PROCESS', '经科室讨论，认为该事件属于操作流程不规范导致，已对相关人员进行培训。', NULL, NULL, NULL, 205, '2023-11-15 12:05:00', '156', '2023-11-15 12:05:00', '156', '2023-11-15 12:05:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (153, 53, 20, 50, 157, 'PROCESS', '已完成事件调查，确认事件属实。建议加强操作规范方面的管理和培训。', 'PROCESS', 2, 1, NULL, '2023-11-18 16:05:00', '157', '2023-11-18 16:05:00', '157', '2023-11-18 16:05:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (154, 54, 0, 10, 155, 'SUBMIT', NULL, NULL, NULL, NULL, NULL, '2023-12-20 10:06:00', '155', '2023-12-20 10:06:00', '155', '2023-12-20 10:06:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (155, 54, 10, 20, 156, 'PROCESS', '科室已对事件进行初步分析，认为需要职能部门进一步评估处理。', NULL, NULL, NULL, 207, '2023-12-24 10:06:00', '156', '2023-12-24 10:06:00', '156', '2023-12-24 10:06:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (156, 54, 20, 50, 157, 'PROCESS', '已完成事件定性定级，事件级别为4级，建议按流程继续上报处理。', 'PROCESS', 0, 0, NULL, '2023-12-26 13:06:00', '157', '2023-12-26 13:06:00', '157', '2023-12-26 13:06:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (157, 55, 0, 10, 154, 'SUBMIT', NULL, NULL, NULL, NULL, NULL, '2023-12-04 14:42:00', '154', '2023-12-04 14:42:00', '154', '2023-12-04 14:42:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (158, 55, 10, 20, 156, 'PROCESS', '经科室调查，事件原因为设备因素，已联系设备科进行检修维护。', NULL, NULL, NULL, 205, '2023-12-08 21:42:00', '156', '2023-12-08 21:42:00', '156', '2023-12-08 21:42:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (159, 55, 20, 50, 157, 'PROCESS', '经调查核实，事件处理及时有效，未造成严重后果。建议纳入科室质量改进计划。', 'HUMAN', 3, 0, NULL, '2023-12-12 03:42:00', '157', '2023-12-12 03:42:00', '157', '2023-12-12 03:42:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (160, 56, 0, 10, 154, 'SUBMIT', NULL, NULL, NULL, NULL, NULL, '2023-12-15 14:56:00', '154', '2023-12-15 14:56:00', '154', '2023-12-15 14:56:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (161, 56, 10, 20, 156, 'PROCESS', '科室已对相关流程进行优化，增加了核查环节，防止类似事件再次发生。', NULL, NULL, NULL, 206, '2023-12-20 16:56:00', '156', '2023-12-20 16:56:00', '156', '2023-12-20 16:56:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (162, 56, 20, 50, 157, 'PROCESS', '经专家评估，该事件属于系统性问题，建议从制度层面进行改进。', 'HUMAN', 2, 0, NULL, '2023-12-28 00:56:00', '157', '2023-12-28 00:56:00', '157', '2023-12-28 00:56:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (163, 57, 0, 10, 154, 'SUBMIT', NULL, NULL, NULL, NULL, NULL, '2023-12-11 08:36:00', '154', '2023-12-11 08:36:00', '154', '2023-12-11 08:36:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (164, 57, 10, 20, 156, 'PROCESS', '科室已对相关流程进行优化，增加了核查环节，防止类似事件再次发生。', NULL, NULL, NULL, 208, '2023-12-14 15:36:00', '156', '2023-12-14 15:36:00', '156', '2023-12-14 15:36:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (165, 57, 20, 30, 157, 'PROCESS', '已完成事件调查，确认事件属实。建议加强操作规范方面的管理和培训。', 'MEDICATION', 2, 0, NULL, '2023-12-20 16:36:00', '157', '2023-12-20 16:36:00', '157', '2023-12-20 16:36:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (166, 57, 30, 50, 158, 'PROCESS', '该事件性质严重，同意提交质量委员会讨论，制定系统性改进方案。', NULL, NULL, NULL, NULL, '2023-12-24 22:36:00', '158', '2023-12-24 22:36:00', '158', '2023-12-24 22:36:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (167, 58, 0, 10, 154, 'SUBMIT', NULL, NULL, NULL, NULL, NULL, '2023-12-03 11:49:00', '154', '2023-12-03 11:49:00', '154', '2023-12-03 11:49:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (168, 58, 10, 20, 156, 'PROCESS', '科室已对相关流程进行优化，增加了核查环节，防止类似事件再次发生。', NULL, NULL, NULL, 205, '2023-12-04 14:49:00', '156', '2023-12-04 14:49:00', '156', '2023-12-04 14:49:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (169, 58, 20, 50, 157, 'PROCESS', '已完成事件调查，确认事件属实。建议加强操作规范方面的管理和培训。', 'ENVIRONMENT', 0, 1, NULL, '2023-12-10 20:49:00', '157', '2023-12-10 20:49:00', '157', '2023-12-10 20:49:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (170, 59, 0, 10, 155, 'SUBMIT', NULL, NULL, NULL, NULL, NULL, '2023-12-08 13:01:00', '155', '2023-12-08 13:01:00', '155', '2023-12-08 13:01:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (171, 59, 10, 20, 156, 'PROCESS', '经科室讨论，已制定整改措施并落实到人，限期整改完成。', NULL, NULL, NULL, 205, '2023-12-09 15:01:00', '156', '2023-12-09 15:01:00', '156', '2023-12-09 15:01:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (172, 59, 20, 50, 157, 'PROCESS', '经调查核实，事件处理及时有效，未造成严重后果。建议纳入科室质量改进计划。', 'ENVIRONMENT', 1, 1, NULL, '2023-12-15 15:01:00', '157', '2023-12-15 15:01:00', '157', '2023-12-15 15:01:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (173, 60, 0, 10, 154, 'SUBMIT', NULL, NULL, NULL, NULL, NULL, '2023-12-24 11:36:00', '154', '2023-12-24 11:36:00', '154', '2023-12-24 11:36:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (174, 60, 10, 20, 156, 'PROCESS', '经科室讨论，已制定整改措施并落实到人，限期整改完成。', NULL, NULL, NULL, 205, '2023-12-25 12:36:00', '156', '2023-12-25 12:36:00', '156', '2023-12-25 12:36:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (175, 60, 20, 50, 157, 'PROCESS', '经调查核实，事件处理及时有效，未造成严重后果。建议纳入科室质量改进计划。', 'PROCESS', 3, 0, NULL, '2024-01-01 14:36:00', '157', '2024-01-01 14:36:00', '157', '2024-01-01 14:36:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (176, 61, 0, 10, 154, 'SUBMIT', NULL, NULL, NULL, NULL, NULL, '2023-12-27 11:35:00', '154', '2023-12-27 11:35:00', '154', '2023-12-27 11:35:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (177, 61, 10, 20, 156, 'PROCESS', '科室已对相关流程进行优化，增加了核查环节，防止类似事件再次发生。', NULL, NULL, NULL, 205, '2023-12-28 17:35:00', '156', '2023-12-28 17:35:00', '156', '2023-12-28 17:35:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (178, 61, 20, 30, 157, 'PROCESS', '经职能部门调查评估，认定事件原因为HUMAN，损害程度为3。已制定改进方案。', 'HUMAN', 3, 0, NULL, '2024-01-02 22:35:00', '157', '2024-01-02 22:35:00', '157', '2024-01-02 22:35:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (179, 61, 30, 50, 158, 'PROCESS', '该事件性质严重，同意提交质量委员会讨论，制定系统性改进方案。', NULL, NULL, NULL, NULL, '2024-01-08 04:35:00', '158', '2024-01-08 04:35:00', '158', '2024-01-08 04:35:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (180, 62, 0, 10, 155, 'SUBMIT', NULL, NULL, NULL, NULL, NULL, '2024-01-28 09:06:00', '155', '2024-01-28 09:06:00', '155', '2024-01-28 09:06:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (181, 62, 10, 20, 156, 'PROCESS', '科室已对事件进行初步分析，认为需要职能部门进一步评估处理。', NULL, NULL, NULL, 205, '2024-02-01 15:06:00', '156', '2024-02-01 15:06:00', '156', '2024-02-01 15:06:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (182, 62, 20, 50, 157, 'PROCESS', '已完成事件定性定级，事件级别为3级，建议按流程继续上报处理。', 'PROCESS', 3, 0, NULL, '2024-02-07 16:06:00', '157', '2024-02-07 16:06:00', '157', '2024-02-07 16:06:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (183, 63, 0, 10, 155, 'SUBMIT', NULL, NULL, NULL, NULL, NULL, '2024-01-19 18:47:00', '155', '2024-01-19 18:47:00', '155', '2024-01-19 18:47:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (184, 63, 10, 20, 156, 'PROCESS', '经科室调查，事件原因为设备因素，已联系设备科进行检修维护。', NULL, NULL, NULL, 205, '2024-01-23 01:47:00', '156', '2024-01-23 01:47:00', '156', '2024-01-23 01:47:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (185, 63, 20, 60, 157, 'RETURN', '报告中时间信息有误，请核实后更正重新提交。', NULL, NULL, NULL, NULL, '2024-01-25 05:47:00', '157', '2024-01-25 05:47:00', '157', '2024-01-25 05:47:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (186, 64, 0, 10, 155, 'SUBMIT', NULL, NULL, NULL, NULL, NULL, '2024-01-25 16:52:00', '155', '2024-01-25 16:52:00', '155', '2024-01-25 16:52:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (187, 64, 10, 20, 156, 'PROCESS', '科室已对事件进行初步分析，认为需要职能部门进一步评估处理。', NULL, NULL, NULL, 205, '2024-01-30 22:52:00', '156', '2024-01-30 22:52:00', '156', '2024-01-30 22:52:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (188, 64, 20, 60, 157, 'RETURN', '报告中时间信息有误，请核实后更正重新提交。', NULL, NULL, NULL, NULL, '2024-02-02 22:52:00', '157', '2024-02-02 22:52:00', '157', '2024-02-02 22:52:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (189, 65, 0, 10, 154, 'SUBMIT', NULL, NULL, NULL, NULL, NULL, '2024-01-21 11:39:00', '154', '2024-01-21 11:39:00', '154', '2024-01-21 11:39:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (190, 65, 10, 20, 156, 'PROCESS', '经科室讨论，认为该事件属于操作流程不规范导致，已对相关人员进行培训。', NULL, NULL, NULL, 206, '2024-01-22 19:39:00', '156', '2024-01-22 19:39:00', '156', '2024-01-22 19:39:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (191, 65, 20, 30, 157, 'PROCESS', '已完成事件定性定级，事件级别为2级，建议按流程继续上报处理。', 'PROCESS', 0, 1, NULL, '2024-01-28 19:39:00', '157', '2024-01-28 19:39:00', '157', '2024-01-28 19:39:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (192, 65, 30, 50, 158, 'PROCESS', '同意按流程处理，要求举一反三，在全院范围内开展安全教育。', NULL, NULL, NULL, NULL, '2024-01-31 00:39:00', '158', '2024-01-31 00:39:00', '158', '2024-01-31 00:39:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (193, 66, 0, 10, 154, 'SUBMIT', NULL, NULL, NULL, NULL, NULL, '2024-01-23 15:15:00', '154', '2024-01-23 15:15:00', '154', '2024-01-23 15:15:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (194, 66, 10, 20, 156, 'PROCESS', '经科室讨论，已制定整改措施并落实到人，限期整改完成。', NULL, NULL, NULL, 206, '2024-01-24 17:15:00', '156', '2024-01-24 17:15:00', '156', '2024-01-24 17:15:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (195, 66, 20, 70, 157, 'VOID', '经核实，该事件不属于不良事件范畴，予以作废。', NULL, NULL, NULL, NULL, '2024-01-31 21:15:00', '157', '2024-01-31 21:15:00', '157', '2024-01-31 21:15:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (196, 67, 0, 10, 155, 'SUBMIT', NULL, NULL, NULL, NULL, NULL, '2024-01-02 10:58:00', '155', '2024-01-02 10:58:00', '155', '2024-01-02 10:58:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (197, 67, 10, 20, 156, 'PROCESS', '科室已对相关流程进行优化，增加了核查环节，防止类似事件再次发生。', NULL, NULL, NULL, 205, '2024-01-07 16:58:00', '156', '2024-01-07 16:58:00', '156', '2024-01-07 16:58:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (198, 67, 20, 50, 157, 'PROCESS', '已完成事件定性定级，事件级别为4级，建议按流程继续上报处理。', 'EQUIPMENT', 1, 0, NULL, '2024-01-11 20:58:00', '157', '2024-01-11 20:58:00', '157', '2024-01-11 20:58:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (199, 68, 0, 10, 155, 'SUBMIT', NULL, NULL, NULL, NULL, NULL, '2024-02-20 09:20:00', '155', '2024-02-20 09:20:00', '155', '2024-02-20 09:20:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (200, 68, 10, 20, 156, 'PROCESS', '科室已对相关流程进行优化，增加了核查环节，防止类似事件再次发生。', NULL, NULL, NULL, 205, '2024-02-22 15:20:00', '156', '2024-02-22 15:20:00', '156', '2024-02-22 15:20:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (201, 68, 20, 70, 157, 'VOID', '经核实，该事件不属于不良事件范畴，予以作废。', NULL, NULL, NULL, NULL, '2024-02-28 22:20:00', '157', '2024-02-28 22:20:00', '157', '2024-02-28 22:20:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (202, 69, 0, 10, 154, 'SUBMIT', NULL, NULL, NULL, NULL, NULL, '2024-02-25 18:57:00', '154', '2024-02-25 18:57:00', '154', '2024-02-25 18:57:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (203, 69, 10, 20, 156, 'PROCESS', '科室已对相关流程进行优化，增加了核查环节，防止类似事件再次发生。', NULL, NULL, NULL, 205, '2024-02-29 02:57:00', '156', '2024-02-29 02:57:00', '156', '2024-02-29 02:57:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (204, 69, 20, 30, 157, 'PROCESS', '经专家评估，该事件属于系统性问题，建议从制度层面进行改进。', 'PROCESS', 2, 0, NULL, '2024-03-05 06:57:00', '157', '2024-03-05 06:57:00', '157', '2024-03-05 06:57:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (205, 69, 30, 50, 158, 'PROCESS', '同意按流程处理，要求举一反三，在全院范围内开展安全教育。', NULL, NULL, NULL, NULL, '2024-03-10 11:57:00', '158', '2024-03-10 11:57:00', '158', '2024-03-10 11:57:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (206, 70, 0, 10, 154, 'SUBMIT', NULL, NULL, NULL, NULL, NULL, '2024-02-16 13:49:00', '154', '2024-02-16 13:49:00', '154', '2024-02-16 13:49:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (207, 70, 10, 20, 156, 'PROCESS', '经科室调查，事件原因为设备因素，已联系设备科进行检修维护。', NULL, NULL, NULL, 205, '2024-02-18 14:49:00', '156', '2024-02-18 14:49:00', '156', '2024-02-18 14:49:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (208, 70, 20, 50, 157, 'PROCESS', '经职能部门调查评估，认定事件原因为MEDICATION，损害程度为3。已制定改进方案。', 'MEDICATION', 3, 0, NULL, '2024-02-23 16:49:00', '157', '2024-02-23 16:49:00', '157', '2024-02-23 16:49:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (209, 71, 0, 20, 155, 'SUBMIT', NULL, NULL, NULL, NULL, NULL, '2024-02-03 13:22:00', '155', '2024-02-03 13:22:00', '155', '2024-02-03 13:22:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (210, 71, 20, 50, 157, 'PROCESS', '经专家评估，该事件属于系统性问题，建议从制度层面进行改进。', 'MEDICATION', 2, 1, NULL, '2024-02-09 19:22:00', '157', '2024-02-09 19:22:00', '157', '2024-02-09 19:22:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (211, 72, 0, 10, 154, 'SUBMIT', NULL, NULL, NULL, NULL, NULL, '2024-02-12 18:13:00', '154', '2024-02-12 18:13:00', '154', '2024-02-12 18:13:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (212, 72, 10, 20, 156, 'PROCESS', '经科室调查，事件原因为设备因素，已联系设备科进行检修维护。', NULL, NULL, NULL, 205, '2024-02-17 18:13:00', '156', '2024-02-17 18:13:00', '156', '2024-02-17 18:13:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (213, 72, 20, 50, 157, 'PROCESS', '经职能部门调查评估，认定事件原因为EQUIPMENT，损害程度为2。已制定改进方案。', 'EQUIPMENT', 2, 1, NULL, '2024-02-22 18:13:00', '157', '2024-02-22 18:13:00', '157', '2024-02-22 18:13:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (214, 73, 0, 20, 155, 'SUBMIT', NULL, NULL, NULL, NULL, NULL, '2024-02-20 12:11:00', '155', '2024-02-20 12:11:00', '155', '2024-02-20 12:11:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (215, 73, 20, 50, 157, 'PROCESS', '经调查核实，事件处理及时有效，未造成严重后果。建议纳入科室质量改进计划。', 'PROCESS', 1, 0, NULL, '2024-02-23 19:11:00', '157', '2024-02-23 19:11:00', '157', '2024-02-23 19:11:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (216, 74, 0, 10, 155, 'SUBMIT', NULL, NULL, NULL, NULL, NULL, '2024-03-10 16:58:00', '155', '2024-03-10 16:58:00', '155', '2024-03-10 16:58:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (217, 74, 10, 20, 156, 'PROCESS', '科室已对事件进行初步分析，认为需要职能部门进一步评估处理。', NULL, NULL, NULL, 205, '2024-03-11 17:58:00', '156', '2024-03-11 17:58:00', '156', '2024-03-11 17:58:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (218, 74, 20, 50, 157, 'PROCESS', '经职能部门调查评估，认定事件原因为MEDICATION，损害程度为2。已制定改进方案。', 'MEDICATION', 2, 0, NULL, '2024-03-14 22:58:00', '157', '2024-03-14 22:58:00', '157', '2024-03-14 22:58:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (219, 75, 0, 10, 154, 'SUBMIT', NULL, NULL, NULL, NULL, NULL, '2024-03-09 14:40:00', '154', '2024-03-09 14:40:00', '154', '2024-03-09 14:40:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (220, 75, 10, 20, 156, 'PROCESS', '经科室讨论，已制定整改措施并落实到人，限期整改完成。', NULL, NULL, NULL, 207, '2024-03-10 20:40:00', '156', '2024-03-10 20:40:00', '156', '2024-03-10 20:40:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (221, 75, 20, 60, 157, 'RETURN', '事件描述不够详细，请补充事件发生的经过、原因分析和已采取的措施。', NULL, NULL, NULL, NULL, '2024-03-17 04:40:00', '157', '2024-03-17 04:40:00', '157', '2024-03-17 04:40:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (222, 76, 0, 10, 155, 'SUBMIT', NULL, NULL, NULL, NULL, NULL, '2024-03-15 16:52:00', '155', '2024-03-15 16:52:00', '155', '2024-03-15 16:52:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (223, 76, 10, 20, 156, 'PROCESS', '经科室调查，事件原因为设备因素，已联系设备科进行检修维护。', NULL, NULL, NULL, 205, '2024-03-20 16:52:00', '156', '2024-03-20 16:52:00', '156', '2024-03-20 16:52:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (224, 76, 20, 50, 157, 'PROCESS', '已完成事件定性定级，事件级别为3级，建议按流程继续上报处理。', 'PROCESS', 2, 1, NULL, '2024-03-27 23:52:00', '157', '2024-03-27 23:52:00', '157', '2024-03-27 23:52:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (225, 77, 0, 10, 155, 'SUBMIT', NULL, NULL, NULL, NULL, NULL, '2024-03-14 08:20:00', '155', '2024-03-14 08:20:00', '155', '2024-03-14 08:20:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (226, 77, 10, 20, 156, 'PROCESS', '科室已对事件进行初步分析，认为需要职能部门进一步评估处理。', NULL, NULL, NULL, 206, '2024-03-16 16:20:00', '156', '2024-03-16 16:20:00', '156', '2024-03-16 16:20:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (227, 78, 0, 20, 155, 'SUBMIT', NULL, NULL, NULL, NULL, NULL, '2024-03-31 17:27:00', '155', '2024-03-31 17:27:00', '155', '2024-03-31 17:27:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (228, 78, 20, 50, 157, 'PROCESS', '经调查核实，事件处理及时有效，未造成严重后果。建议纳入科室质量改进计划。', 'HUMAN', 3, 0, NULL, '2024-04-03 01:27:00', '157', '2024-04-03 01:27:00', '157', '2024-04-03 01:27:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (229, 79, 0, 20, 154, 'SUBMIT', NULL, NULL, NULL, NULL, NULL, '2024-03-16 12:43:00', '154', '2024-03-16 12:43:00', '154', '2024-03-16 12:43:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (230, 79, 20, 50, 157, 'PROCESS', '经职能部门调查评估，认定事件原因为EQUIPMENT，损害程度为1。已制定改进方案。', 'EQUIPMENT', 1, 0, NULL, '2024-03-19 14:43:00', '157', '2024-03-19 14:43:00', '157', '2024-03-19 14:43:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (231, 80, 0, 10, 155, 'SUBMIT', NULL, NULL, NULL, NULL, NULL, '2024-03-16 16:13:00', '155', '2024-03-16 16:13:00', '155', '2024-03-16 16:13:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (232, 80, 10, 20, 156, 'PROCESS', '经科室调查，事件原因为设备因素，已联系设备科进行检修维护。', NULL, NULL, NULL, 205, '2024-03-18 16:13:00', '156', '2024-03-18 16:13:00', '156', '2024-03-18 16:13:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (233, 80, 20, 50, 157, 'PROCESS', '已完成事件定性定级，事件级别为3级，建议按流程继续上报处理。', 'HUMAN', 2, 0, NULL, '2024-03-20 20:13:00', '157', '2024-03-20 20:13:00', '157', '2024-03-20 20:13:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (234, 81, 0, 10, 154, 'SUBMIT', NULL, NULL, NULL, NULL, NULL, '2024-03-06 13:08:00', '154', '2024-03-06 13:08:00', '154', '2024-03-06 13:08:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (235, 81, 10, 20, 156, 'PROCESS', '科室已对相关流程进行优化，增加了核查环节，防止类似事件再次发生。', NULL, NULL, NULL, 205, '2024-03-10 19:08:00', '156', '2024-03-10 19:08:00', '156', '2024-03-10 19:08:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (236, 81, 20, 50, 157, 'PROCESS', '经职能部门调查评估，认定事件原因为PROCESS，损害程度为2。已制定改进方案。', 'PROCESS', 2, 0, NULL, '2024-03-14 03:08:00', '157', '2024-03-14 03:08:00', '157', '2024-03-14 03:08:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (237, 82, 0, 10, 155, 'SUBMIT', NULL, NULL, NULL, NULL, NULL, '2024-04-03 18:18:00', '155', '2024-04-03 18:18:00', '155', '2024-04-03 18:18:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (238, 82, 10, 20, 156, 'PROCESS', '科室已对相关流程进行优化，增加了核查环节，防止类似事件再次发生。', NULL, NULL, NULL, 205, '2024-04-04 19:18:00', '156', '2024-04-04 19:18:00', '156', '2024-04-04 19:18:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (239, 82, 20, 50, 157, 'PROCESS', '经调查核实，事件处理及时有效，未造成严重后果。建议纳入科室质量改进计划。', 'HUMAN', 1, 1, NULL, '2024-04-09 03:18:00', '157', '2024-04-09 03:18:00', '157', '2024-04-09 03:18:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (240, 83, 0, 10, 155, 'SUBMIT', NULL, NULL, NULL, NULL, NULL, '2024-04-15 12:54:00', '155', '2024-04-15 12:54:00', '155', '2024-04-15 12:54:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (241, 83, 10, 20, 156, 'PROCESS', '经科室调查，事件原因为设备因素，已联系设备科进行检修维护。', NULL, NULL, NULL, 205, '2024-04-18 16:54:00', '156', '2024-04-18 16:54:00', '156', '2024-04-18 16:54:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (242, 83, 20, 30, 157, 'PROCESS', '已完成事件定性定级，事件级别为2级，建议按流程继续上报处理。', 'PROCESS', 1, 0, NULL, '2024-04-24 19:54:00', '157', '2024-04-24 19:54:00', '157', '2024-04-24 19:54:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (243, 83, 30, 50, 158, 'PROCESS', '已审阅事件报告，同意处理意见。要求质控办持续跟踪整改效果。', NULL, NULL, NULL, NULL, '2024-04-28 19:54:00', '158', '2024-04-28 19:54:00', '158', '2024-04-28 19:54:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (244, 84, 0, 10, 155, 'SUBMIT', NULL, NULL, NULL, NULL, NULL, '2024-04-16 09:20:00', '155', '2024-04-16 09:20:00', '155', '2024-04-16 09:20:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (245, 84, 10, 20, 156, 'PROCESS', '经科室讨论，认为该事件属于操作流程不规范导致，已对相关人员进行培训。', NULL, NULL, NULL, 205, '2024-04-20 17:20:00', '156', '2024-04-20 17:20:00', '156', '2024-04-20 17:20:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (246, 84, 20, 50, 157, 'PROCESS', '经调查核实，事件处理及时有效，未造成严重后果。建议纳入科室质量改进计划。', 'PROCESS', 1, 0, NULL, '2024-04-26 18:20:00', '157', '2024-04-26 18:20:00', '157', '2024-04-26 18:20:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (247, 85, 0, 10, 155, 'SUBMIT', NULL, NULL, NULL, NULL, NULL, '2024-04-25 09:07:00', '155', '2024-04-25 09:07:00', '155', '2024-04-25 09:07:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (248, 85, 10, 20, 156, 'PROCESS', '科室已对相关流程进行优化，增加了核查环节，防止类似事件再次发生。', NULL, NULL, NULL, 205, '2024-04-28 10:07:00', '156', '2024-04-28 10:07:00', '156', '2024-04-28 10:07:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (249, 86, 0, 10, 154, 'SUBMIT', NULL, NULL, NULL, NULL, NULL, '2024-04-25 19:13:00', '154', '2024-04-25 19:13:00', '154', '2024-04-25 19:13:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (250, 86, 10, 20, 156, 'PROCESS', '科室已对相关流程进行优化，增加了核查环节，防止类似事件再次发生。', NULL, NULL, NULL, 208, '2024-04-29 03:13:00', '156', '2024-04-29 03:13:00', '156', '2024-04-29 03:13:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (251, 86, 20, 60, 157, 'RETURN', '事件描述不够详细，请补充事件发生的经过、原因分析和已采取的措施。', NULL, NULL, NULL, NULL, '2024-05-03 10:13:00', '157', '2024-05-03 10:13:00', '157', '2024-05-03 10:13:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (252, 87, 0, 20, 155, 'SUBMIT', NULL, NULL, NULL, NULL, NULL, '2024-04-11 14:29:00', '155', '2024-04-11 14:29:00', '155', '2024-04-11 14:29:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (253, 87, 20, 50, 157, 'PROCESS', '经专家评估，该事件属于系统性问题，建议从制度层面进行改进。', 'MEDICATION', 3, 0, NULL, '2024-04-16 17:29:00', '157', '2024-04-16 17:29:00', '157', '2024-04-16 17:29:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (254, 88, 0, 10, 154, 'SUBMIT', NULL, NULL, NULL, NULL, NULL, '2024-05-28 14:21:00', '154', '2024-05-28 14:21:00', '154', '2024-05-28 14:21:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (255, 88, 10, 20, 156, 'PROCESS', '科室已对相关流程进行优化，增加了核查环节，防止类似事件再次发生。', NULL, NULL, NULL, 205, '2024-06-01 21:21:00', '156', '2024-06-01 21:21:00', '156', '2024-06-01 21:21:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (256, 88, 20, 70, 157, 'VOID', '经核实，该事件不属于不良事件范畴，予以作废。', NULL, NULL, NULL, NULL, '2024-06-04 04:21:00', '157', '2024-06-04 04:21:00', '157', '2024-06-04 04:21:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (257, 89, 0, 10, 155, 'SUBMIT', NULL, NULL, NULL, NULL, NULL, '2024-05-03 14:03:00', '155', '2024-05-03 14:03:00', '155', '2024-05-03 14:03:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (258, 89, 10, 20, 156, 'PROCESS', '经科室讨论，已制定整改措施并落实到人，限期整改完成。', NULL, NULL, NULL, 205, '2024-05-06 15:03:00', '156', '2024-05-06 15:03:00', '156', '2024-05-06 15:03:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (259, 89, 20, 60, 157, 'RETURN', '报告中时间信息有误，请核实后更正重新提交。', NULL, NULL, NULL, NULL, '2024-05-13 18:03:00', '157', '2024-05-13 18:03:00', '157', '2024-05-13 18:03:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (260, 90, 0, 10, 155, 'SUBMIT', NULL, NULL, NULL, NULL, NULL, '2024-05-22 11:52:00', '155', '2024-05-22 11:52:00', '155', '2024-05-22 11:52:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (261, 90, 10, 20, 156, 'PROCESS', '经科室讨论，已制定整改措施并落实到人，限期整改完成。', NULL, NULL, NULL, 205, '2024-05-24 16:52:00', '156', '2024-05-24 16:52:00', '156', '2024-05-24 16:52:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (262, 90, 20, 50, 157, 'PROCESS', '经调查核实，事件处理及时有效，未造成严重后果。建议纳入科室质量改进计划。', 'MEDICATION', 3, 0, NULL, '2024-05-29 00:52:00', '157', '2024-05-29 00:52:00', '157', '2024-05-29 00:52:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (263, 91, 0, 10, 155, 'SUBMIT', NULL, NULL, NULL, NULL, NULL, '2024-05-04 10:02:00', '155', '2024-05-04 10:02:00', '155', '2024-05-04 10:02:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (264, 91, 10, 20, 156, 'PROCESS', '科室已对事件进行初步分析，认为需要职能部门进一步评估处理。', NULL, NULL, NULL, 207, '2024-05-07 13:02:00', '156', '2024-05-07 13:02:00', '156', '2024-05-07 13:02:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (265, 91, 20, 50, 157, 'PROCESS', '经专家评估，该事件属于系统性问题，建议从制度层面进行改进。', 'EQUIPMENT', 1, 0, NULL, '2024-05-09 19:02:00', '157', '2024-05-09 19:02:00', '157', '2024-05-09 19:02:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (266, 92, 0, 20, 155, 'SUBMIT', NULL, NULL, NULL, NULL, NULL, '2024-05-31 16:28:00', '155', '2024-05-31 16:28:00', '155', '2024-05-31 16:28:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (267, 92, 20, 60, 157, 'RETURN', '事件描述不够详细，请补充事件发生的经过、原因分析和已采取的措施。', NULL, NULL, NULL, NULL, '2024-06-06 18:28:00', '157', '2024-06-06 18:28:00', '157', '2024-06-06 18:28:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (268, 93, 0, 10, 155, 'SUBMIT', NULL, NULL, NULL, NULL, NULL, '2024-05-12 11:38:00', '155', '2024-05-12 11:38:00', '155', '2024-05-12 11:38:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (269, 93, 10, 20, 156, 'PROCESS', '科室已对相关流程进行优化，增加了核查环节，防止类似事件再次发生。', NULL, NULL, NULL, 205, '2024-05-15 14:38:00', '156', '2024-05-15 14:38:00', '156', '2024-05-15 14:38:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (270, 93, 20, 50, 157, 'PROCESS', '已完成事件调查，确认事件属实。建议加强操作规范方面的管理和培训。', 'OTHER', 1, 0, NULL, '2024-05-19 16:38:00', '157', '2024-05-19 16:38:00', '157', '2024-05-19 16:38:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (271, 94, 0, 10, 154, 'SUBMIT', NULL, NULL, NULL, NULL, NULL, '2024-05-31 10:09:00', '154', '2024-05-31 10:09:00', '154', '2024-05-31 10:09:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (272, 94, 10, 20, 156, 'PROCESS', '经科室调查，事件原因为设备因素，已联系设备科进行检修维护。', NULL, NULL, NULL, 208, '2024-06-02 13:09:00', '156', '2024-06-02 13:09:00', '156', '2024-06-02 13:09:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (273, 94, 20, 30, 157, 'PROCESS', '已完成事件调查，确认事件属实。建议加强操作规范方面的管理和培训。', 'HUMAN', 1, 0, NULL, '2024-06-06 16:09:00', '157', '2024-06-06 16:09:00', '157', '2024-06-06 16:09:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (274, 94, 30, 50, 158, 'PROCESS', '已审阅事件报告，同意处理意见。要求质控办持续跟踪整改效果。', NULL, NULL, NULL, NULL, '2024-06-08 19:09:00', '158', '2024-06-08 19:09:00', '158', '2024-06-08 19:09:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (275, 95, 0, 10, 154, 'SUBMIT', NULL, NULL, NULL, NULL, NULL, '2024-05-27 16:17:00', '154', '2024-05-27 16:17:00', '154', '2024-05-27 16:17:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (276, 95, 10, 20, 156, 'PROCESS', '经科室讨论，认为该事件属于操作流程不规范导致，已对相关人员进行培训。', NULL, NULL, NULL, 205, '2024-05-28 17:17:00', '156', '2024-05-28 17:17:00', '156', '2024-05-28 17:17:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (277, 95, 20, 50, 157, 'PROCESS', '经调查核实，事件处理及时有效，未造成严重后果。建议纳入科室质量改进计划。', 'HUMAN', 3, 1, NULL, '2024-06-05 00:17:00', '157', '2024-06-05 00:17:00', '157', '2024-06-05 00:17:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (278, 96, 0, 10, 154, 'SUBMIT', NULL, NULL, NULL, NULL, NULL, '2024-05-18 12:51:00', '154', '2024-05-18 12:51:00', '154', '2024-05-18 12:51:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (279, 96, 10, 20, 156, 'PROCESS', '经科室讨论，已制定整改措施并落实到人，限期整改完成。', NULL, NULL, NULL, 205, '2024-05-23 12:51:00', '156', '2024-05-23 12:51:00', '156', '2024-05-23 12:51:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (280, 96, 20, 50, 157, 'PROCESS', '已完成事件定性定级，事件级别为4级，建议按流程继续上报处理。', 'HUMAN', 1, 0, NULL, '2024-05-27 17:51:00', '157', '2024-05-27 17:51:00', '157', '2024-05-27 17:51:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (281, 97, 0, 10, 155, 'SUBMIT', NULL, NULL, NULL, NULL, NULL, '2024-05-24 15:01:00', '155', '2024-05-24 15:01:00', '155', '2024-05-24 15:01:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (282, 97, 10, 20, 156, 'PROCESS', '经科室讨论，已制定整改措施并落实到人，限期整改完成。', NULL, NULL, NULL, 205, '2024-05-29 19:01:00', '156', '2024-05-29 19:01:00', '156', '2024-05-29 19:01:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (283, 97, 20, 30, 157, 'PROCESS', '经专家评估，该事件属于系统性问题，建议从制度层面进行改进。', 'MEDICATION', 0, 0, NULL, '2024-06-02 03:01:00', '157', '2024-06-02 03:01:00', '157', '2024-06-02 03:01:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (284, 97, 30, 50, 158, 'PROCESS', '该事件性质严重，同意提交质量委员会讨论，制定系统性改进方案。', NULL, NULL, NULL, NULL, '2024-06-06 06:01:00', '158', '2024-06-06 06:01:00', '158', '2024-06-06 06:01:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (285, 98, 0, 10, 155, 'SUBMIT', NULL, NULL, NULL, NULL, NULL, '2024-06-21 08:04:00', '155', '2024-06-21 08:04:00', '155', '2024-06-21 08:04:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (286, 98, 10, 20, 156, 'PROCESS', '经科室讨论，已制定整改措施并落实到人，限期整改完成。', NULL, NULL, NULL, 207, '2024-06-26 14:04:00', '156', '2024-06-26 14:04:00', '156', '2024-06-26 14:04:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (287, 98, 20, 50, 157, 'PROCESS', '经调查核实，事件处理及时有效，未造成严重后果。建议纳入科室质量改进计划。', 'HUMAN', 0, 0, NULL, '2024-07-02 14:04:00', '157', '2024-07-02 14:04:00', '157', '2024-07-02 14:04:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (288, 99, 0, 10, 155, 'SUBMIT', NULL, NULL, NULL, NULL, NULL, '2024-06-05 12:50:00', '155', '2024-06-05 12:50:00', '155', '2024-06-05 12:50:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (289, 99, 10, 20, 156, 'PROCESS', '经科室讨论，已制定整改措施并落实到人，限期整改完成。', NULL, NULL, NULL, 205, '2024-06-09 14:50:00', '156', '2024-06-09 14:50:00', '156', '2024-06-09 14:50:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (290, 99, 20, 50, 157, 'PROCESS', '已完成事件定性定级，事件级别为3级，建议按流程继续上报处理。', 'PROCESS', 1, 0, NULL, '2024-06-11 22:50:00', '157', '2024-06-11 22:50:00', '157', '2024-06-11 22:50:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (291, 100, 0, 20, 154, 'SUBMIT', NULL, NULL, NULL, NULL, NULL, '2024-06-28 18:51:00', '154', '2024-06-28 18:51:00', '154', '2024-06-28 18:51:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (292, 100, 20, 50, 157, 'PROCESS', '经职能部门调查评估，认定事件原因为MEDICATION，损害程度为1。已制定改进方案。', 'MEDICATION', 1, 0, NULL, '2024-07-05 18:51:00', '157', '2024-07-05 18:51:00', '157', '2024-07-05 18:51:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (293, 101, 0, 20, 155, 'SUBMIT', NULL, NULL, NULL, NULL, NULL, '2024-06-14 14:03:00', '155', '2024-06-14 14:03:00', '155', '2024-06-14 14:03:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (294, 101, 20, 50, 157, 'PROCESS', '经调查核实，事件处理及时有效，未造成严重后果。建议纳入科室质量改进计划。', 'HUMAN', 2, 0, NULL, '2024-06-17 20:03:00', '157', '2024-06-17 20:03:00', '157', '2024-06-17 20:03:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (295, 102, 0, 20, 155, 'SUBMIT', NULL, NULL, NULL, NULL, NULL, '2024-06-19 16:38:00', '155', '2024-06-19 16:38:00', '155', '2024-06-19 16:38:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (296, 102, 20, 30, 157, 'PROCESS', '经调查核实，事件处理及时有效，未造成严重后果。建议纳入科室质量改进计划。', 'HUMAN', 1, 0, NULL, '2024-06-23 21:38:00', '157', '2024-06-23 21:38:00', '157', '2024-06-23 21:38:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (297, 102, 30, 50, 158, 'PROCESS', '已审阅事件报告，同意处理意见。要求质控办持续跟踪整改效果。', NULL, NULL, NULL, NULL, '2024-06-26 23:38:00', '158', '2024-06-26 23:38:00', '158', '2024-06-26 23:38:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (298, 103, 0, 10, 154, 'SUBMIT', NULL, NULL, NULL, NULL, NULL, '2024-06-19 16:20:00', '154', '2024-06-19 16:20:00', '154', '2024-06-19 16:20:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (299, 103, 10, 20, 156, 'PROCESS', '科室已对相关流程进行优化，增加了核查环节，防止类似事件再次发生。', NULL, NULL, NULL, 205, '2024-06-22 23:20:00', '156', '2024-06-22 23:20:00', '156', '2024-06-22 23:20:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (300, 103, 20, 50, 157, 'PROCESS', '已完成事件调查，确认事件属实。建议加强操作规范方面的管理和培训。', 'HUMAN', 1, 0, NULL, '2024-06-27 04:20:00', '157', '2024-06-27 04:20:00', '157', '2024-06-27 04:20:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (301, 104, 0, 10, 155, 'SUBMIT', NULL, NULL, NULL, NULL, NULL, '2024-06-20 19:08:00', '155', '2024-06-20 19:08:00', '155', '2024-06-20 19:08:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (302, 104, 10, 20, 156, 'PROCESS', '经科室讨论，已制定整改措施并落实到人，限期整改完成。', NULL, NULL, NULL, 206, '2024-06-24 22:08:00', '156', '2024-06-24 22:08:00', '156', '2024-06-24 22:08:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (303, 104, 20, 30, 157, 'PROCESS', '经专家评估，该事件属于系统性问题，建议从制度层面进行改进。', 'MEDICATION', 2, 0, NULL, '2024-07-02 03:08:00', '157', '2024-07-02 03:08:00', '157', '2024-07-02 03:08:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (304, 104, 30, 50, 158, 'PROCESS', '同意按流程处理，要求举一反三，在全院范围内开展安全教育。', NULL, NULL, NULL, NULL, '2024-07-06 07:08:00', '158', '2024-07-06 07:08:00', '158', '2024-07-06 07:08:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (305, 105, 0, 10, 155, 'SUBMIT', NULL, NULL, NULL, NULL, NULL, '2024-06-24 18:06:00', '155', '2024-06-24 18:06:00', '155', '2024-06-24 18:06:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (306, 105, 10, 20, 156, 'PROCESS', '科室已对相关流程进行优化，增加了核查环节，防止类似事件再次发生。', NULL, NULL, NULL, 205, '2024-06-29 20:06:00', '156', '2024-06-29 20:06:00', '156', '2024-06-29 20:06:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (307, 105, 20, 50, 157, 'PROCESS', '经职能部门调查评估，认定事件原因为ENVIRONMENT，损害程度为3。已制定改进方案。', 'ENVIRONMENT', 3, 0, NULL, '2024-07-06 23:06:00', '157', '2024-07-06 23:06:00', '157', '2024-07-06 23:06:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (308, 106, 0, 10, 154, 'SUBMIT', NULL, NULL, NULL, NULL, NULL, '2024-06-29 08:32:00', '154', '2024-06-29 08:32:00', '154', '2024-06-29 08:32:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (309, 106, 10, 20, 156, 'PROCESS', '科室已对相关流程进行优化，增加了核查环节，防止类似事件再次发生。', NULL, NULL, NULL, 205, '2024-07-02 11:32:00', '156', '2024-07-02 11:32:00', '156', '2024-07-02 11:32:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (310, 106, 20, 50, 157, 'PROCESS', '已完成事件调查，确认事件属实。建议加强操作规范方面的管理和培训。', 'EQUIPMENT', 1, 0, NULL, '2024-07-07 17:32:00', '157', '2024-07-07 17:32:00', '157', '2024-07-07 17:32:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (311, 107, 0, 10, 155, 'SUBMIT', NULL, NULL, NULL, NULL, NULL, '2024-07-14 09:22:00', '155', '2024-07-14 09:22:00', '155', '2024-07-14 09:22:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (312, 107, 10, 20, 156, 'PROCESS', '经科室讨论，认为该事件属于操作流程不规范导致，已对相关人员进行培训。', NULL, NULL, NULL, 206, '2024-07-16 16:22:00', '156', '2024-07-16 16:22:00', '156', '2024-07-16 16:22:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (313, 107, 20, 60, 157, 'RETURN', '事件描述不够详细，请补充事件发生的经过、原因分析和已采取的措施。', NULL, NULL, NULL, NULL, '2024-07-19 22:22:00', '157', '2024-07-19 22:22:00', '157', '2024-07-19 22:22:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (314, 108, 0, 10, 154, 'SUBMIT', NULL, NULL, NULL, NULL, NULL, '2024-07-25 10:52:00', '154', '2024-07-25 10:52:00', '154', '2024-07-25 10:52:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (315, 108, 10, 20, 156, 'PROCESS', '科室已对事件进行初步分析，认为需要职能部门进一步评估处理。', NULL, NULL, NULL, 205, '2024-07-30 18:52:00', '156', '2024-07-30 18:52:00', '156', '2024-07-30 18:52:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (316, 108, 20, 50, 157, 'PROCESS', '经专家评估，该事件属于系统性问题，建议从制度层面进行改进。', 'PROCESS', 1, 0, NULL, '2024-08-04 22:52:00', '157', '2024-08-04 22:52:00', '157', '2024-08-04 22:52:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (317, 109, 0, 20, 155, 'SUBMIT', NULL, NULL, NULL, NULL, NULL, '2024-07-03 15:12:00', '155', '2024-07-03 15:12:00', '155', '2024-07-03 15:12:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (318, 109, 20, 60, 157, 'RETURN', '事件描述不够详细，请补充事件发生的经过、原因分析和已采取的措施。', NULL, NULL, NULL, NULL, '2024-07-09 15:12:00', '157', '2024-07-09 15:12:00', '157', '2024-07-09 15:12:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (319, 110, 0, 20, 155, 'SUBMIT', NULL, NULL, NULL, NULL, NULL, '2024-07-10 09:28:00', '155', '2024-07-10 09:28:00', '155', '2024-07-10 09:28:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (320, 110, 20, 50, 157, 'PROCESS', '经职能部门调查评估，认定事件原因为MEDICATION，损害程度为1。已制定改进方案。', 'MEDICATION', 1, 0, NULL, '2024-07-17 11:28:00', '157', '2024-07-17 11:28:00', '157', '2024-07-17 11:28:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (321, 111, 0, 10, 154, 'SUBMIT', NULL, NULL, NULL, NULL, NULL, '2024-07-13 12:53:00', '154', '2024-07-13 12:53:00', '154', '2024-07-13 12:53:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (322, 111, 10, 20, 156, 'PROCESS', '经科室讨论，认为该事件属于操作流程不规范导致，已对相关人员进行培训。', NULL, NULL, NULL, 205, '2024-07-16 19:53:00', '156', '2024-07-16 19:53:00', '156', '2024-07-16 19:53:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (323, 111, 20, 50, 157, 'PROCESS', '经专家评估，该事件属于系统性问题，建议从制度层面进行改进。', 'HUMAN', 3, 0, NULL, '2024-07-22 00:53:00', '157', '2024-07-22 00:53:00', '157', '2024-07-22 00:53:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (324, 112, 0, 10, 154, 'SUBMIT', NULL, NULL, NULL, NULL, NULL, '2024-07-21 10:26:00', '154', '2024-07-21 10:26:00', '154', '2024-07-21 10:26:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (325, 112, 10, 20, 156, 'PROCESS', '科室已对相关流程进行优化，增加了核查环节，防止类似事件再次发生。', NULL, NULL, NULL, 205, '2024-07-24 18:26:00', '156', '2024-07-24 18:26:00', '156', '2024-07-24 18:26:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (326, 112, 20, 70, 157, 'VOID', '经核实，该事件不属于不良事件范畴，予以作废。', NULL, NULL, NULL, NULL, '2024-07-28 23:26:00', '157', '2024-07-28 23:26:00', '157', '2024-07-28 23:26:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (327, 113, 0, 10, 155, 'SUBMIT', NULL, NULL, NULL, NULL, NULL, '2024-07-15 17:48:00', '155', '2024-07-15 17:48:00', '155', '2024-07-15 17:48:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (328, 113, 10, 20, 156, 'PROCESS', '科室已对事件进行初步分析，认为需要职能部门进一步评估处理。', NULL, NULL, NULL, 205, '2024-07-19 18:48:00', '156', '2024-07-19 18:48:00', '156', '2024-07-19 18:48:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (329, 113, 20, 50, 157, 'PROCESS', '经调查核实，事件处理及时有效，未造成严重后果。建议纳入科室质量改进计划。', 'HUMAN', 1, 0, NULL, '2024-07-26 21:48:00', '157', '2024-07-26 21:48:00', '157', '2024-07-26 21:48:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (330, 114, 0, 10, 155, 'SUBMIT', NULL, NULL, NULL, NULL, NULL, '2024-07-19 08:40:00', '155', '2024-07-19 08:40:00', '155', '2024-07-19 08:40:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (331, 114, 10, 20, 156, 'PROCESS', '科室已对事件进行初步分析，认为需要职能部门进一步评估处理。', NULL, NULL, NULL, 205, '2024-07-24 10:40:00', '156', '2024-07-24 10:40:00', '156', '2024-07-24 10:40:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (332, 114, 20, 50, 157, 'PROCESS', '经调查核实，事件处理及时有效，未造成严重后果。建议纳入科室质量改进计划。', 'PROCESS', 4, 1, NULL, '2024-07-28 15:40:00', '157', '2024-07-28 15:40:00', '157', '2024-07-28 15:40:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (333, 115, 0, 20, 154, 'SUBMIT', NULL, NULL, NULL, NULL, NULL, '2024-07-17 14:44:00', '154', '2024-07-17 14:44:00', '154', '2024-07-17 14:44:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (334, 115, 20, 70, 157, 'VOID', '经核实，该事件不属于不良事件范畴，予以作废。', NULL, NULL, NULL, NULL, '2024-07-24 21:44:00', '157', '2024-07-24 21:44:00', '157', '2024-07-24 21:44:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (335, 116, 0, 10, 154, 'SUBMIT', NULL, NULL, NULL, NULL, NULL, '2024-08-15 10:19:00', '154', '2024-08-15 10:19:00', '154', '2024-08-15 10:19:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (336, 116, 10, 20, 156, 'PROCESS', '科室已对相关流程进行优化，增加了核查环节，防止类似事件再次发生。', NULL, NULL, NULL, 208, '2024-08-16 16:19:00', '156', '2024-08-16 16:19:00', '156', '2024-08-16 16:19:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (337, 116, 20, 50, 157, 'PROCESS', '已完成事件调查，确认事件属实。建议加强操作规范方面的管理和培训。', 'EQUIPMENT', 1, 0, NULL, '2024-08-20 23:19:00', '157', '2024-08-20 23:19:00', '157', '2024-08-20 23:19:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (338, 117, 0, 10, 155, 'SUBMIT', NULL, NULL, NULL, NULL, NULL, '2024-08-12 14:25:00', '155', '2024-08-12 14:25:00', '155', '2024-08-12 14:25:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (339, 117, 10, 20, 156, 'PROCESS', '经科室讨论，已制定整改措施并落实到人，限期整改完成。', NULL, NULL, NULL, 205, '2024-08-14 19:25:00', '156', '2024-08-14 19:25:00', '156', '2024-08-14 19:25:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (340, 117, 20, 70, 157, 'VOID', '经核实，该事件不属于不良事件范畴，予以作废。', NULL, NULL, NULL, NULL, '2024-08-22 01:25:00', '157', '2024-08-22 01:25:00', '157', '2024-08-22 01:25:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (341, 118, 0, 10, 154, 'SUBMIT', NULL, NULL, NULL, NULL, NULL, '2024-08-10 13:13:00', '154', '2024-08-10 13:13:00', '154', '2024-08-10 13:13:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (342, 118, 10, 20, 156, 'PROCESS', '经科室调查，事件原因为设备因素，已联系设备科进行检修维护。', NULL, NULL, NULL, 208, '2024-08-11 14:13:00', '156', '2024-08-11 14:13:00', '156', '2024-08-11 14:13:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (343, 118, 20, 50, 157, 'PROCESS', '经专家评估，该事件属于系统性问题，建议从制度层面进行改进。', 'EQUIPMENT', 4, 0, NULL, '2024-08-15 17:13:00', '157', '2024-08-15 17:13:00', '157', '2024-08-15 17:13:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (344, 119, 0, 10, 155, 'SUBMIT', NULL, NULL, NULL, NULL, NULL, '2024-08-05 17:55:00', '155', '2024-08-05 17:55:00', '155', '2024-08-05 17:55:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (345, 119, 10, 20, 156, 'PROCESS', '科室已对相关流程进行优化，增加了核查环节，防止类似事件再次发生。', NULL, NULL, NULL, 207, '2024-08-08 21:55:00', '156', '2024-08-08 21:55:00', '156', '2024-08-08 21:55:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (346, 119, 20, 50, 157, 'PROCESS', '经专家评估，该事件属于系统性问题，建议从制度层面进行改进。', 'ENVIRONMENT', 3, 0, NULL, '2024-08-16 03:55:00', '157', '2024-08-16 03:55:00', '157', '2024-08-16 03:55:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (347, 120, 0, 20, 155, 'SUBMIT', NULL, NULL, NULL, NULL, NULL, '2024-08-03 19:10:00', '155', '2024-08-03 19:10:00', '155', '2024-08-03 19:10:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (348, 120, 20, 50, 157, 'PROCESS', '经调查核实，事件处理及时有效，未造成严重后果。建议纳入科室质量改进计划。', 'ENVIRONMENT', 1, 0, NULL, '2024-08-09 00:10:00', '157', '2024-08-09 00:10:00', '157', '2024-08-09 00:10:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (349, 121, 0, 20, 154, 'SUBMIT', NULL, NULL, NULL, NULL, NULL, '2024-08-03 13:10:00', '154', '2024-08-03 13:10:00', '154', '2024-08-03 13:10:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (350, 121, 20, 60, 157, 'RETURN', '报告内容不完整，缺少关键信息，请补充后重新提交。', NULL, NULL, NULL, NULL, '2024-08-08 19:10:00', '157', '2024-08-08 19:10:00', '157', '2024-08-08 19:10:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (351, 122, 0, 10, 154, 'SUBMIT', NULL, NULL, NULL, NULL, NULL, '2024-08-27 17:56:00', '154', '2024-08-27 17:56:00', '154', '2024-08-27 17:56:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (352, 122, 10, 20, 156, 'PROCESS', '经科室调查，事件原因为设备因素，已联系设备科进行检修维护。', NULL, NULL, NULL, 207, '2024-08-28 19:56:00', '156', '2024-08-28 19:56:00', '156', '2024-08-28 19:56:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (353, 122, 20, 50, 157, 'PROCESS', '经职能部门调查评估，认定事件原因为EQUIPMENT，损害程度为1。已制定改进方案。', 'EQUIPMENT', 1, 0, NULL, '2024-09-04 23:56:00', '157', '2024-09-04 23:56:00', '157', '2024-09-04 23:56:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (354, 123, 0, 10, 155, 'SUBMIT', NULL, NULL, NULL, NULL, NULL, '2024-08-08 16:21:00', '155', '2024-08-08 16:21:00', '155', '2024-08-08 16:21:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (355, 123, 10, 20, 156, 'PROCESS', '经科室讨论，认为该事件属于操作流程不规范导致，已对相关人员进行培训。', NULL, NULL, NULL, 205, '2024-08-10 22:21:00', '156', '2024-08-10 22:21:00', '156', '2024-08-10 22:21:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (356, 123, 20, 70, 157, 'VOID', '经核实，该事件不属于不良事件范畴，予以作废。', NULL, NULL, NULL, NULL, '2024-08-12 23:21:00', '157', '2024-08-12 23:21:00', '157', '2024-08-12 23:21:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (357, 124, 0, 10, 154, 'SUBMIT', NULL, NULL, NULL, NULL, NULL, '2024-09-25 15:01:00', '154', '2024-09-25 15:01:00', '154', '2024-09-25 15:01:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (358, 124, 10, 20, 156, 'PROCESS', '经科室讨论，认为该事件属于操作流程不规范导致，已对相关人员进行培训。', NULL, NULL, NULL, 205, '2024-09-29 23:01:00', '156', '2024-09-29 23:01:00', '156', '2024-09-29 23:01:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (359, 124, 20, 50, 157, 'PROCESS', '经调查核实，事件处理及时有效，未造成严重后果。建议纳入科室质量改进计划。', 'PROCESS', 3, 0, NULL, '2024-10-02 05:01:00', '157', '2024-10-02 05:01:00', '157', '2024-10-02 05:01:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (360, 125, 0, 20, 154, 'SUBMIT', NULL, NULL, NULL, NULL, NULL, '2024-09-23 17:18:00', '154', '2024-09-23 17:18:00', '154', '2024-09-23 17:18:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (361, 125, 20, 30, 157, 'PROCESS', '经专家评估，该事件属于系统性问题，建议从制度层面进行改进。', 'MEDICATION', 1, 0, NULL, '2024-09-25 18:18:00', '157', '2024-09-25 18:18:00', '157', '2024-09-25 18:18:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (362, 125, 30, 50, 158, 'PROCESS', '同意职能部门处理意见，要求相关科室认真落实整改措施。', NULL, NULL, NULL, NULL, '2024-09-30 20:18:00', '158', '2024-09-30 20:18:00', '158', '2024-09-30 20:18:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (363, 126, 0, 10, 154, 'SUBMIT', NULL, NULL, NULL, NULL, NULL, '2024-09-30 08:46:00', '154', '2024-09-30 08:46:00', '154', '2024-09-30 08:46:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (364, 126, 10, 20, 156, 'PROCESS', '经科室调查，事件原因为设备因素，已联系设备科进行检修维护。', NULL, NULL, NULL, 205, '2024-10-04 12:46:00', '156', '2024-10-04 12:46:00', '156', '2024-10-04 12:46:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (365, 126, 20, 50, 157, 'PROCESS', '已完成事件定性定级，事件级别为3级，建议按流程继续上报处理。', 'EQUIPMENT', 0, 0, NULL, '2024-10-07 16:46:00', '157', '2024-10-07 16:46:00', '157', '2024-10-07 16:46:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (366, 127, 0, 10, 155, 'SUBMIT', NULL, NULL, NULL, NULL, NULL, '2024-09-26 10:28:00', '155', '2024-09-26 10:28:00', '155', '2024-09-26 10:28:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (367, 127, 10, 20, 156, 'PROCESS', '科室已对相关流程进行优化，增加了核查环节，防止类似事件再次发生。', NULL, NULL, NULL, 205, '2024-09-28 12:28:00', '156', '2024-09-28 12:28:00', '156', '2024-09-28 12:28:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (368, 127, 20, 80, 157, 'NOT_TRUE', '经调查核实，该事件举报内容不属实，相关情况说明已存档。', NULL, NULL, NULL, NULL, '2024-10-01 12:28:00', '157', '2024-10-01 12:28:00', '157', '2024-10-01 12:28:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (369, 128, 0, 10, 155, 'SUBMIT', NULL, NULL, NULL, NULL, NULL, '2024-09-01 12:14:00', '155', '2024-09-01 12:14:00', '155', '2024-09-01 12:14:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (370, 128, 10, 20, 156, 'PROCESS', '经科室讨论，已制定整改措施并落实到人，限期整改完成。', NULL, NULL, NULL, 208, '2024-09-04 17:14:00', '156', '2024-09-04 17:14:00', '156', '2024-09-04 17:14:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (371, 128, 20, 50, 157, 'PROCESS', '经专家评估，该事件属于系统性问题，建议从制度层面进行改进。', 'HUMAN', 1, 0, NULL, '2024-09-10 01:14:00', '157', '2024-09-10 01:14:00', '157', '2024-09-10 01:14:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (372, 129, 0, 10, 154, 'SUBMIT', NULL, NULL, NULL, NULL, NULL, '2024-09-03 10:10:00', '154', '2024-09-03 10:10:00', '154', '2024-09-03 10:10:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (373, 129, 10, 20, 156, 'PROCESS', '科室已对相关流程进行优化，增加了核查环节，防止类似事件再次发生。', NULL, NULL, NULL, 207, '2024-09-07 12:10:00', '156', '2024-09-07 12:10:00', '156', '2024-09-07 12:10:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (374, 129, 20, 80, 157, 'NOT_TRUE', '经调查核实，该事件举报内容不属实，相关情况说明已存档。', NULL, NULL, NULL, NULL, '2024-09-10 19:10:00', '157', '2024-09-10 19:10:00', '157', '2024-09-10 19:10:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (375, 130, 0, 10, 155, 'SUBMIT', NULL, NULL, NULL, NULL, NULL, '2024-09-08 17:46:00', '155', '2024-09-08 17:46:00', '155', '2024-09-08 17:46:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (376, 130, 10, 20, 156, 'PROCESS', '科室已对相关流程进行优化，增加了核查环节，防止类似事件再次发生。', NULL, NULL, NULL, 205, '2024-09-13 23:46:00', '156', '2024-09-13 23:46:00', '156', '2024-09-13 23:46:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (377, 130, 20, 50, 157, 'PROCESS', '经专家评估，该事件属于系统性问题，建议从制度层面进行改进。', 'OTHER', 2, 0, NULL, '2024-09-21 07:46:00', '157', '2024-09-21 07:46:00', '157', '2024-09-21 07:46:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (378, 131, 0, 10, 154, 'SUBMIT', NULL, NULL, NULL, NULL, NULL, '2024-09-02 18:53:00', '154', '2024-09-02 18:53:00', '154', '2024-09-02 18:53:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (379, 131, 10, 20, 156, 'PROCESS', '科室已对相关流程进行优化，增加了核查环节，防止类似事件再次发生。', NULL, NULL, NULL, 207, '2024-09-06 01:53:00', '156', '2024-09-06 01:53:00', '156', '2024-09-06 01:53:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (380, 131, 20, 50, 157, 'PROCESS', '已完成事件定性定级，事件级别为3级，建议按流程继续上报处理。', 'PROCESS', 1, 0, NULL, '2024-09-09 02:53:00', '157', '2024-09-09 02:53:00', '157', '2024-09-09 02:53:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (381, 132, 0, 10, 154, 'SUBMIT', NULL, NULL, NULL, NULL, NULL, '2024-09-05 08:31:00', '154', '2024-09-05 08:31:00', '154', '2024-09-05 08:31:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (382, 132, 10, 20, 156, 'PROCESS', '科室已对事件进行初步分析，认为需要职能部门进一步评估处理。', NULL, NULL, NULL, 205, '2024-09-08 14:31:00', '156', '2024-09-08 14:31:00', '156', '2024-09-08 14:31:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (383, 132, 20, 50, 157, 'PROCESS', '经职能部门调查评估，认定事件原因为PROCESS，损害程度为1。已制定改进方案。', 'PROCESS', 1, 1, NULL, '2024-09-11 18:31:00', '157', '2024-09-11 18:31:00', '157', '2024-09-11 18:31:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (384, 133, 0, 10, 154, 'SUBMIT', NULL, NULL, NULL, NULL, NULL, '2024-10-02 12:12:00', '154', '2024-10-02 12:12:00', '154', '2024-10-02 12:12:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (385, 133, 10, 20, 156, 'PROCESS', '科室已对事件进行初步分析，认为需要职能部门进一步评估处理。', NULL, NULL, NULL, 205, '2024-10-07 14:12:00', '156', '2024-10-07 14:12:00', '156', '2024-10-07 14:12:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (386, 133, 20, 30, 157, 'PROCESS', '经调查核实，事件处理及时有效，未造成严重后果。建议纳入科室质量改进计划。', 'PROCESS', 0, 0, NULL, '2024-10-11 21:12:00', '157', '2024-10-11 21:12:00', '157', '2024-10-11 21:12:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (387, 133, 30, 50, 158, 'PROCESS', '同意按流程处理，要求举一反三，在全院范围内开展安全教育。', NULL, NULL, NULL, NULL, '2024-10-13 04:12:00', '158', '2024-10-13 04:12:00', '158', '2024-10-13 04:12:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (388, 134, 0, 10, 155, 'SUBMIT', NULL, NULL, NULL, NULL, NULL, '2024-10-12 09:04:00', '155', '2024-10-12 09:04:00', '155', '2024-10-12 09:04:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (389, 134, 10, 20, 156, 'PROCESS', '科室已对事件进行初步分析，认为需要职能部门进一步评估处理。', NULL, NULL, NULL, 206, '2024-10-13 15:04:00', '156', '2024-10-13 15:04:00', '156', '2024-10-13 15:04:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (390, 134, 20, 50, 157, 'PROCESS', '经职能部门调查评估，认定事件原因为OTHER，损害程度为1。已制定改进方案。', 'OTHER', 1, 1, NULL, '2024-10-19 18:04:00', '157', '2024-10-19 18:04:00', '157', '2024-10-19 18:04:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (391, 135, 0, 20, 154, 'SUBMIT', NULL, NULL, NULL, NULL, NULL, '2024-10-12 16:34:00', '154', '2024-10-12 16:34:00', '154', '2024-10-12 16:34:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (392, 135, 20, 50, 157, 'PROCESS', '已完成事件定性定级，事件级别为4级，建议按流程继续上报处理。', 'HUMAN', 1, 0, NULL, '2024-10-16 19:34:00', '157', '2024-10-16 19:34:00', '157', '2024-10-16 19:34:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (393, 136, 0, 10, 155, 'SUBMIT', NULL, NULL, NULL, NULL, NULL, '2024-10-10 16:06:00', '155', '2024-10-10 16:06:00', '155', '2024-10-10 16:06:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (394, 136, 10, 20, 156, 'PROCESS', '经科室讨论，已制定整改措施并落实到人，限期整改完成。', NULL, NULL, NULL, 206, '2024-10-15 22:06:00', '156', '2024-10-15 22:06:00', '156', '2024-10-15 22:06:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (395, 136, 20, 30, 157, 'PROCESS', '已完成事件定性定级，事件级别为2级，建议按流程继续上报处理。', 'OTHER', 1, 0, NULL, '2024-10-19 00:06:00', '157', '2024-10-19 00:06:00', '157', '2024-10-19 00:06:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (396, 136, 30, 50, 158, 'PROCESS', '已审阅事件报告，同意处理意见。要求质控办持续跟踪整改效果。', NULL, NULL, NULL, NULL, '2024-10-23 03:06:00', '158', '2024-10-23 03:06:00', '158', '2024-10-23 03:06:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (397, 137, 0, 10, 154, 'SUBMIT', NULL, NULL, NULL, NULL, NULL, '2024-10-03 18:42:00', '154', '2024-10-03 18:42:00', '154', '2024-10-03 18:42:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (398, 137, 10, 20, 156, 'PROCESS', '科室已对相关流程进行优化，增加了核查环节，防止类似事件再次发生。', NULL, NULL, NULL, 205, '2024-10-07 21:42:00', '156', '2024-10-07 21:42:00', '156', '2024-10-07 21:42:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (399, 137, 20, 60, 157, 'RETURN', '事件描述不够详细，请补充事件发生的经过、原因分析和已采取的措施。', NULL, NULL, NULL, NULL, '2024-10-14 01:42:00', '157', '2024-10-14 01:42:00', '157', '2024-10-14 01:42:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (400, 138, 0, 10, 154, 'SUBMIT', NULL, NULL, NULL, NULL, NULL, '2024-10-08 18:43:00', '154', '2024-10-08 18:43:00', '154', '2024-10-08 18:43:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (401, 138, 10, 20, 156, 'PROCESS', '经科室讨论，已制定整改措施并落实到人，限期整改完成。', NULL, NULL, NULL, 205, '2024-10-13 22:43:00', '156', '2024-10-13 22:43:00', '156', '2024-10-13 22:43:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (402, 138, 20, 50, 157, 'PROCESS', '已完成事件调查，确认事件属实。建议加强操作规范方面的管理和培训。', 'EQUIPMENT', 3, 0, NULL, '2024-10-16 23:43:00', '157', '2024-10-16 23:43:00', '157', '2024-10-16 23:43:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (403, 139, 0, 10, 154, 'SUBMIT', NULL, NULL, NULL, NULL, NULL, '2024-10-12 14:24:00', '154', '2024-10-12 14:24:00', '154', '2024-10-12 14:24:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (404, 139, 10, 20, 156, 'PROCESS', '经科室讨论，已制定整改措施并落实到人，限期整改完成。', NULL, NULL, NULL, 205, '2024-10-15 15:24:00', '156', '2024-10-15 15:24:00', '156', '2024-10-15 15:24:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (405, 139, 20, 50, 157, 'PROCESS', '经专家评估，该事件属于系统性问题，建议从制度层面进行改进。', 'MEDICATION', 1, 0, NULL, '2024-10-21 22:24:00', '157', '2024-10-21 22:24:00', '157', '2024-10-21 22:24:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (406, 140, 0, 10, 155, 'SUBMIT', NULL, NULL, NULL, NULL, NULL, '2024-10-15 12:01:00', '155', '2024-10-15 12:01:00', '155', '2024-10-15 12:01:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (407, 140, 10, 20, 156, 'PROCESS', '经科室调查，事件原因为设备因素，已联系设备科进行检修维护。', NULL, NULL, NULL, 205, '2024-10-20 19:01:00', '156', '2024-10-20 19:01:00', '156', '2024-10-20 19:01:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (408, 140, 20, 50, 157, 'PROCESS', '已完成事件调查，确认事件属实。建议加强操作规范方面的管理和培训。', 'HUMAN', 2, 0, NULL, '2024-10-24 19:01:00', '157', '2024-10-24 19:01:00', '157', '2024-10-24 19:01:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (409, 141, 0, 10, 155, 'SUBMIT', NULL, NULL, NULL, NULL, NULL, '2024-10-22 13:46:00', '155', '2024-10-22 13:46:00', '155', '2024-10-22 13:46:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (410, 141, 10, 20, 156, 'PROCESS', '经科室调查，事件原因为设备因素，已联系设备科进行检修维护。', NULL, NULL, NULL, 205, '2024-10-27 13:46:00', '156', '2024-10-27 13:46:00', '156', '2024-10-27 13:46:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (411, 141, 20, 50, 157, 'PROCESS', '经专家评估，该事件属于系统性问题，建议从制度层面进行改进。', 'PROCESS', 3, 0, NULL, '2024-10-29 17:46:00', '157', '2024-10-29 17:46:00', '157', '2024-10-29 17:46:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (412, 142, 0, 20, 155, 'SUBMIT', NULL, NULL, NULL, NULL, NULL, '2024-11-26 10:19:00', '155', '2024-11-26 10:19:00', '155', '2024-11-26 10:19:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (413, 142, 20, 30, 157, 'PROCESS', '经职能部门调查评估，认定事件原因为HUMAN，损害程度为1。已制定改进方案。', 'HUMAN', 1, 0, NULL, '2024-12-03 17:19:00', '157', '2024-12-03 17:19:00', '157', '2024-12-03 17:19:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (414, 142, 30, 50, 158, 'PROCESS', '该事件性质严重，同意提交质量委员会讨论，制定系统性改进方案。', NULL, NULL, NULL, NULL, '2024-12-05 18:19:00', '158', '2024-12-05 18:19:00', '158', '2024-12-05 18:19:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (415, 143, 0, 10, 154, 'SUBMIT', NULL, NULL, NULL, NULL, NULL, '2024-11-17 14:49:00', '154', '2024-11-17 14:49:00', '154', '2024-11-17 14:49:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (416, 143, 10, 20, 156, 'PROCESS', '科室已对事件进行初步分析，认为需要职能部门进一步评估处理。', NULL, NULL, NULL, 205, '2024-11-21 17:49:00', '156', '2024-11-21 17:49:00', '156', '2024-11-21 17:49:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (417, 143, 20, 50, 157, 'PROCESS', '已完成事件定性定级，事件级别为3级，建议按流程继续上报处理。', 'PROCESS', 1, 0, NULL, '2024-11-26 21:49:00', '157', '2024-11-26 21:49:00', '157', '2024-11-26 21:49:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (418, 144, 0, 20, 155, 'SUBMIT', NULL, NULL, NULL, NULL, NULL, '2024-11-18 18:48:00', '155', '2024-11-18 18:48:00', '155', '2024-11-18 18:48:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (419, 145, 0, 10, 154, 'SUBMIT', NULL, NULL, NULL, NULL, NULL, '2024-11-12 17:11:00', '154', '2024-11-12 17:11:00', '154', '2024-11-12 17:11:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (420, 145, 10, 20, 156, 'PROCESS', '经科室讨论，认为该事件属于操作流程不规范导致，已对相关人员进行培训。', NULL, NULL, NULL, 205, '2024-11-13 22:11:00', '156', '2024-11-13 22:11:00', '156', '2024-11-13 22:11:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (421, 145, 20, 30, 157, 'PROCESS', '经专家评估，该事件属于系统性问题，建议从制度层面进行改进。', 'PROCESS', 2, 1, NULL, '2024-11-16 22:11:00', '157', '2024-11-16 22:11:00', '157', '2024-11-16 22:11:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (422, 145, 30, 50, 158, 'PROCESS', '同意按流程处理，要求举一反三，在全院范围内开展安全教育。', NULL, NULL, NULL, NULL, '2024-11-20 23:11:00', '158', '2024-11-20 23:11:00', '158', '2024-11-20 23:11:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (423, 146, 0, 10, 154, 'SUBMIT', NULL, NULL, NULL, NULL, NULL, '2024-11-06 18:44:00', '154', '2024-11-06 18:44:00', '154', '2024-11-06 18:44:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (424, 146, 10, 20, 156, 'PROCESS', '经科室讨论，已制定整改措施并落实到人，限期整改完成。', NULL, NULL, NULL, 206, '2024-11-08 22:44:00', '156', '2024-11-08 22:44:00', '156', '2024-11-08 22:44:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (425, 146, 20, 50, 157, 'PROCESS', '已完成事件调查，确认事件属实。建议加强操作规范方面的管理和培训。', 'PROCESS', 2, 0, NULL, '2024-11-10 23:44:00', '157', '2024-11-10 23:44:00', '157', '2024-11-10 23:44:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (426, 147, 0, 10, 155, 'SUBMIT', NULL, NULL, NULL, NULL, NULL, '2024-11-14 17:52:00', '155', '2024-11-14 17:52:00', '155', '2024-11-14 17:52:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (427, 147, 10, 20, 156, 'PROCESS', '经科室讨论，认为该事件属于操作流程不规范导致，已对相关人员进行培训。', NULL, NULL, NULL, 205, '2024-11-18 20:52:00', '156', '2024-11-18 20:52:00', '156', '2024-11-18 20:52:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (428, 147, 20, 50, 157, 'PROCESS', '经职能部门调查评估，认定事件原因为MEDICATION，损害程度为1。已制定改进方案。', 'MEDICATION', 1, 0, NULL, '2024-11-22 03:52:00', '157', '2024-11-22 03:52:00', '157', '2024-11-22 03:52:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (429, 148, 0, 10, 154, 'SUBMIT', NULL, NULL, NULL, NULL, NULL, '2024-11-06 15:42:00', '154', '2024-11-06 15:42:00', '154', '2024-11-06 15:42:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (430, 148, 10, 20, 156, 'PROCESS', '经科室讨论，已制定整改措施并落实到人，限期整改完成。', NULL, NULL, NULL, 205, '2024-11-08 22:42:00', '156', '2024-11-08 22:42:00', '156', '2024-11-08 22:42:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (431, 148, 20, 80, 157, 'NOT_TRUE', '经调查核实，该事件举报内容不属实，相关情况说明已存档。', NULL, NULL, NULL, NULL, '2024-11-16 02:42:00', '157', '2024-11-16 02:42:00', '157', '2024-11-16 02:42:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (432, 149, 0, 10, 155, 'SUBMIT', NULL, NULL, NULL, NULL, NULL, '2024-11-25 14:01:00', '155', '2024-11-25 14:01:00', '155', '2024-11-25 14:01:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (433, 149, 10, 20, 156, 'PROCESS', '经科室讨论，认为该事件属于操作流程不规范导致，已对相关人员进行培训。', NULL, NULL, NULL, 205, '2024-11-28 16:01:00', '156', '2024-11-28 16:01:00', '156', '2024-11-28 16:01:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (434, 149, 20, 50, 157, 'PROCESS', '经调查核实，事件处理及时有效，未造成严重后果。建议纳入科室质量改进计划。', 'HUMAN', 3, 0, NULL, '2024-12-06 00:01:00', '157', '2024-12-06 00:01:00', '157', '2024-12-06 00:01:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (435, 150, 0, 10, 155, 'SUBMIT', NULL, NULL, NULL, NULL, NULL, '2024-12-31 10:55:00', '155', '2024-12-31 10:55:00', '155', '2024-12-31 10:55:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (436, 150, 10, 20, 156, 'PROCESS', '科室已对事件进行初步分析，认为需要职能部门进一步评估处理。', NULL, NULL, NULL, 205, '2025-01-03 17:55:00', '156', '2025-01-03 17:55:00', '156', '2025-01-03 17:55:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (437, 150, 20, 50, 157, 'PROCESS', '经职能部门调查评估，认定事件原因为PROCESS，损害程度为3。已制定改进方案。', 'PROCESS', 3, 0, NULL, '2025-01-06 22:55:00', '157', '2025-01-06 22:55:00', '157', '2025-01-06 22:55:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (438, 151, 0, 10, 155, 'SUBMIT', NULL, NULL, NULL, NULL, NULL, '2024-12-31 14:59:00', '155', '2024-12-31 14:59:00', '155', '2024-12-31 14:59:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (439, 151, 10, 20, 156, 'PROCESS', '经科室调查，事件原因为设备因素，已联系设备科进行检修维护。', NULL, NULL, NULL, 205, '2025-01-02 15:59:00', '156', '2025-01-02 15:59:00', '156', '2025-01-02 15:59:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (440, 151, 20, 60, 157, 'RETURN', '事件描述不够详细，请补充事件发生的经过、原因分析和已采取的措施。', NULL, NULL, NULL, NULL, '2025-01-09 21:59:00', '157', '2025-01-09 21:59:00', '157', '2025-01-09 21:59:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (441, 152, 0, 10, 155, 'SUBMIT', NULL, NULL, NULL, NULL, NULL, '2024-12-18 08:54:00', '155', '2024-12-18 08:54:00', '155', '2024-12-18 08:54:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (442, 152, 10, 20, 156, 'PROCESS', '科室已对相关流程进行优化，增加了核查环节，防止类似事件再次发生。', NULL, NULL, NULL, 205, '2024-12-20 12:54:00', '156', '2024-12-20 12:54:00', '156', '2024-12-20 12:54:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (443, 152, 20, 30, 157, 'PROCESS', '已完成事件调查，确认事件属实。建议加强操作规范方面的管理和培训。', 'PROCESS', 1, 0, NULL, '2024-12-22 18:54:00', '157', '2024-12-22 18:54:00', '157', '2024-12-22 18:54:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (444, 152, 30, 50, 158, 'PROCESS', '同意按流程处理，要求举一反三，在全院范围内开展安全教育。', NULL, NULL, NULL, NULL, '2024-12-23 18:54:00', '158', '2024-12-23 18:54:00', '158', '2024-12-23 18:54:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (445, 153, 0, 10, 154, 'SUBMIT', NULL, NULL, NULL, NULL, NULL, '2024-12-13 16:50:00', '154', '2024-12-13 16:50:00', '154', '2024-12-13 16:50:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (446, 153, 10, 20, 156, 'PROCESS', '科室已对事件进行初步分析，认为需要职能部门进一步评估处理。', NULL, NULL, NULL, 206, '2024-12-18 18:50:00', '156', '2024-12-18 18:50:00', '156', '2024-12-18 18:50:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (447, 153, 20, 50, 157, 'PROCESS', '已完成事件调查，确认事件属实。建议加强操作规范方面的管理和培训。', 'OTHER', 2, 0, NULL, '2024-12-20 21:50:00', '157', '2024-12-20 21:50:00', '157', '2024-12-20 21:50:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (448, 154, 0, 10, 154, 'SUBMIT', NULL, NULL, NULL, NULL, NULL, '2024-12-07 17:47:00', '154', '2024-12-07 17:47:00', '154', '2024-12-07 17:47:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (449, 154, 10, 20, 156, 'PROCESS', '经科室讨论，认为该事件属于操作流程不规范导致，已对相关人员进行培训。', NULL, NULL, NULL, 205, '2024-12-08 22:47:00', '156', '2024-12-08 22:47:00', '156', '2024-12-08 22:47:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (450, 154, 20, 30, 157, 'PROCESS', '已完成事件调查，确认事件属实。建议加强操作规范方面的管理和培训。', 'PROCESS', 2, 0, NULL, '2024-12-11 03:47:00', '157', '2024-12-11 03:47:00', '157', '2024-12-11 03:47:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (451, 154, 30, 50, 158, 'PROCESS', '该事件性质严重，同意提交质量委员会讨论，制定系统性改进方案。', NULL, NULL, NULL, NULL, '2024-12-16 04:47:00', '158', '2024-12-16 04:47:00', '158', '2024-12-16 04:47:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (452, 155, 0, 10, 155, 'SUBMIT', NULL, NULL, NULL, NULL, NULL, '2024-12-11 10:40:00', '155', '2024-12-11 10:40:00', '155', '2024-12-11 10:40:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (453, 155, 10, 20, 156, 'PROCESS', '科室已对相关流程进行优化，增加了核查环节，防止类似事件再次发生。', NULL, NULL, NULL, 207, '2024-12-13 15:40:00', '156', '2024-12-13 15:40:00', '156', '2024-12-13 15:40:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (454, 155, 20, 50, 157, 'PROCESS', '已完成事件定性定级，事件级别为4级，建议按流程继续上报处理。', 'PROCESS', 2, 0, NULL, '2024-12-20 20:40:00', '157', '2024-12-20 20:40:00', '157', '2024-12-20 20:40:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (455, 156, 0, 10, 155, 'SUBMIT', NULL, NULL, NULL, NULL, NULL, '2024-12-12 14:06:00', '155', '2024-12-12 14:06:00', '155', '2024-12-12 14:06:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (456, 156, 10, 20, 156, 'PROCESS', '经科室讨论，已制定整改措施并落实到人，限期整改完成。', NULL, NULL, NULL, 205, '2024-12-14 14:06:00', '156', '2024-12-14 14:06:00', '156', '2024-12-14 14:06:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (457, 156, 20, 80, 157, 'NOT_TRUE', '经调查核实，该事件举报内容不属实，相关情况说明已存档。', NULL, NULL, NULL, NULL, '2024-12-18 16:06:00', '157', '2024-12-18 16:06:00', '157', '2024-12-18 16:06:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (458, 157, 0, 10, 155, 'SUBMIT', NULL, NULL, NULL, NULL, NULL, '2024-12-24 08:45:00', '155', '2024-12-24 08:45:00', '155', '2024-12-24 08:45:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (459, 157, 10, 20, 156, 'PROCESS', '经科室讨论，已制定整改措施并落实到人，限期整改完成。', NULL, NULL, NULL, 205, '2024-12-25 15:45:00', '156', '2024-12-25 15:45:00', '156', '2024-12-25 15:45:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (460, 157, 20, 50, 157, 'PROCESS', '经调查核实，事件处理及时有效，未造成严重后果。建议纳入科室质量改进计划。', 'MEDICATION', 1, 1, NULL, '2024-12-31 19:45:00', '157', '2024-12-31 19:45:00', '157', '2024-12-31 19:45:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (461, 158, 0, 10, 155, 'SUBMIT', NULL, NULL, NULL, NULL, NULL, '2025-01-05 15:06:00', '155', '2025-01-05 15:06:00', '155', '2025-01-05 15:06:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (462, 158, 10, 20, 156, 'PROCESS', '科室已对相关流程进行优化，增加了核查环节，防止类似事件再次发生。', NULL, NULL, NULL, 205, '2025-01-09 18:06:00', '156', '2025-01-09 18:06:00', '156', '2025-01-09 18:06:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (463, 158, 20, 50, 157, 'PROCESS', '经专家评估，该事件属于系统性问题，建议从制度层面进行改进。', 'HUMAN', 1, 0, NULL, '2025-01-13 02:06:00', '157', '2025-01-13 02:06:00', '157', '2025-01-13 02:06:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (464, 159, 0, 10, 155, 'SUBMIT', NULL, NULL, NULL, NULL, NULL, '2025-01-17 14:30:00', '155', '2025-01-17 14:30:00', '155', '2025-01-17 14:30:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (465, 159, 10, 20, 156, 'PROCESS', '科室已对相关流程进行优化，增加了核查环节，防止类似事件再次发生。', NULL, NULL, NULL, 207, '2025-01-21 18:30:00', '156', '2025-01-21 18:30:00', '156', '2025-01-21 18:30:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (466, 159, 20, 50, 157, 'PROCESS', '经职能部门调查评估，认定事件原因为PROCESS，损害程度为3。已制定改进方案。', 'PROCESS', 3, 1, NULL, '2025-01-27 20:30:00', '157', '2025-01-27 20:30:00', '157', '2025-01-27 20:30:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (467, 160, 0, 10, 155, 'SUBMIT', NULL, NULL, NULL, NULL, NULL, '2025-01-07 11:33:00', '155', '2025-01-07 11:33:00', '155', '2025-01-07 11:33:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (468, 160, 10, 20, 156, 'PROCESS', '科室已对事件进行初步分析，认为需要职能部门进一步评估处理。', NULL, NULL, NULL, 205, '2025-01-09 18:33:00', '156', '2025-01-09 18:33:00', '156', '2025-01-09 18:33:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (469, 160, 20, 80, 157, 'NOT_TRUE', '经调查核实，该事件举报内容不属实，相关情况说明已存档。', NULL, NULL, NULL, NULL, '2025-01-14 02:33:00', '157', '2025-01-14 02:33:00', '157', '2025-01-14 02:33:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (470, 161, 0, 10, 155, 'SUBMIT', NULL, NULL, NULL, NULL, NULL, '2025-01-30 12:29:00', '155', '2025-01-30 12:29:00', '155', '2025-01-30 12:29:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (471, 161, 10, 20, 156, 'PROCESS', '科室已对相关流程进行优化，增加了核查环节，防止类似事件再次发生。', NULL, NULL, NULL, 205, '2025-02-03 12:29:00', '156', '2025-02-03 12:29:00', '156', '2025-02-03 12:29:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (472, 161, 20, 50, 157, 'PROCESS', '经职能部门调查评估，认定事件原因为ENVIRONMENT，损害程度为1。已制定改进方案。', 'ENVIRONMENT', 1, 1, NULL, '2025-02-08 14:29:00', '157', '2025-02-08 14:29:00', '157', '2025-02-08 14:29:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (473, 162, 0, 10, 154, 'SUBMIT', NULL, NULL, NULL, NULL, NULL, '2025-01-12 16:00:00', '154', '2025-01-12 16:00:00', '154', '2025-01-12 16:00:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (474, 162, 10, 20, 156, 'PROCESS', '科室已对事件进行初步分析，认为需要职能部门进一步评估处理。', NULL, NULL, NULL, 205, '2025-01-15 19:00:00', '156', '2025-01-15 19:00:00', '156', '2025-01-15 19:00:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (475, 162, 20, 60, 157, 'RETURN', '报告中时间信息有误，请核实后更正重新提交。', NULL, NULL, NULL, NULL, '2025-01-22 20:00:00', '157', '2025-01-22 20:00:00', '157', '2025-01-22 20:00:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (476, 163, 0, 10, 154, 'SUBMIT', NULL, NULL, NULL, NULL, NULL, '2025-01-08 09:12:00', '154', '2025-01-08 09:12:00', '154', '2025-01-08 09:12:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (477, 163, 10, 20, 156, 'PROCESS', '经科室调查，事件原因为设备因素，已联系设备科进行检修维护。', NULL, NULL, NULL, 207, '2025-01-13 15:12:00', '156', '2025-01-13 15:12:00', '156', '2025-01-13 15:12:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (478, 163, 20, 80, 157, 'NOT_TRUE', '经调查核实，该事件举报内容不属实，相关情况说明已存档。', NULL, NULL, NULL, NULL, '2025-01-19 22:12:00', '157', '2025-01-19 22:12:00', '157', '2025-01-19 22:12:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (479, 164, 0, 10, 155, 'SUBMIT', NULL, NULL, NULL, NULL, NULL, '2025-01-31 17:23:00', '155', '2025-01-31 17:23:00', '155', '2025-01-31 17:23:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (480, 164, 10, 20, 156, 'PROCESS', '科室已对相关流程进行优化，增加了核查环节，防止类似事件再次发生。', NULL, NULL, NULL, 205, '2025-02-05 19:23:00', '156', '2025-02-05 19:23:00', '156', '2025-02-05 19:23:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (481, 164, 20, 50, 157, 'PROCESS', '已完成事件定性定级，事件级别为4级，建议按流程继续上报处理。', 'EQUIPMENT', 2, 0, NULL, '2025-02-10 00:23:00', '157', '2025-02-10 00:23:00', '157', '2025-02-10 00:23:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (482, 165, 0, 10, 154, 'SUBMIT', NULL, NULL, NULL, NULL, NULL, '2025-01-21 17:34:00', '154', '2025-01-21 17:34:00', '154', '2025-01-21 17:34:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (483, 165, 10, 20, 156, 'PROCESS', '经科室讨论，认为该事件属于操作流程不规范导致，已对相关人员进行培训。', NULL, NULL, NULL, 205, '2025-01-24 18:34:00', '156', '2025-01-24 18:34:00', '156', '2025-01-24 18:34:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (484, 165, 20, 50, 157, 'PROCESS', '经职能部门调查评估，认定事件原因为HUMAN，损害程度为3。已制定改进方案。', 'HUMAN', 3, 0, NULL, '2025-01-30 19:34:00', '157', '2025-01-30 19:34:00', '157', '2025-01-30 19:34:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (485, 166, 0, 10, 155, 'SUBMIT', NULL, NULL, NULL, NULL, NULL, '2025-01-26 15:37:00', '155', '2025-01-26 15:37:00', '155', '2025-01-26 15:37:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (486, 166, 10, 20, 156, 'PROCESS', '经科室讨论，认为该事件属于操作流程不规范导致，已对相关人员进行培训。', NULL, NULL, NULL, 207, '2025-01-28 17:37:00', '156', '2025-01-28 17:37:00', '156', '2025-01-28 17:37:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (487, 166, 20, 60, 157, 'RETURN', '事件描述不够详细，请补充事件发生的经过、原因分析和已采取的措施。', NULL, NULL, NULL, NULL, '2025-01-31 18:37:00', '157', '2025-01-31 18:37:00', '157', '2025-01-31 18:37:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (488, 167, 0, 20, 155, 'SUBMIT', NULL, NULL, NULL, NULL, NULL, '2025-02-21 16:39:00', '155', '2025-02-21 16:39:00', '155', '2025-02-21 16:39:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (489, 167, 20, 50, 157, 'PROCESS', '经调查核实，事件处理及时有效，未造成严重后果。建议纳入科室质量改进计划。', 'ENVIRONMENT', 2, 0, NULL, '2025-02-23 16:39:00', '157', '2025-02-23 16:39:00', '157', '2025-02-23 16:39:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (490, 168, 0, 20, 154, 'SUBMIT', NULL, NULL, NULL, NULL, NULL, '2025-02-24 14:10:00', '154', '2025-02-24 14:10:00', '154', '2025-02-24 14:10:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (491, 168, 20, 50, 157, 'PROCESS', '经调查核实，事件处理及时有效，未造成严重后果。建议纳入科室质量改进计划。', 'MEDICATION', 2, 1, NULL, '2025-03-01 21:10:00', '157', '2025-03-01 21:10:00', '157', '2025-03-01 21:10:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (492, 169, 0, 10, 155, 'SUBMIT', NULL, NULL, NULL, NULL, NULL, '2025-02-06 10:49:00', '155', '2025-02-06 10:49:00', '155', '2025-02-06 10:49:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (493, 169, 10, 20, 156, 'PROCESS', '经科室讨论，认为该事件属于操作流程不规范导致，已对相关人员进行培训。', NULL, NULL, NULL, 205, '2025-02-11 14:49:00', '156', '2025-02-11 14:49:00', '156', '2025-02-11 14:49:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (494, 169, 20, 50, 157, 'PROCESS', '经调查核实，事件处理及时有效，未造成严重后果。建议纳入科室质量改进计划。', 'EQUIPMENT', 2, 0, NULL, '2025-02-15 17:49:00', '157', '2025-02-15 17:49:00', '157', '2025-02-15 17:49:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (495, 170, 0, 10, 155, 'SUBMIT', NULL, NULL, NULL, NULL, NULL, '2025-02-21 14:06:00', '155', '2025-02-21 14:06:00', '155', '2025-02-21 14:06:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (496, 170, 10, 20, 156, 'PROCESS', '经科室调查，事件原因为设备因素，已联系设备科进行检修维护。', NULL, NULL, NULL, 205, '2025-02-22 14:06:00', '156', '2025-02-22 14:06:00', '156', '2025-02-22 14:06:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (497, 170, 20, 50, 157, 'PROCESS', '经职能部门调查评估，认定事件原因为MEDICATION，损害程度为2。已制定改进方案。', 'MEDICATION', 2, 0, NULL, '2025-03-01 21:06:00', '157', '2025-03-01 21:06:00', '157', '2025-03-01 21:06:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (498, 171, 0, 10, 154, 'SUBMIT', NULL, NULL, NULL, NULL, NULL, '2025-02-21 12:37:00', '154', '2025-02-21 12:37:00', '154', '2025-02-21 12:37:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (499, 171, 10, 20, 156, 'PROCESS', '科室已对相关流程进行优化，增加了核查环节，防止类似事件再次发生。', NULL, NULL, NULL, 205, '2025-02-22 17:37:00', '156', '2025-02-22 17:37:00', '156', '2025-02-22 17:37:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (500, 171, 20, 50, 157, 'PROCESS', '经专家评估，该事件属于系统性问题，建议从制度层面进行改进。', 'EQUIPMENT', 2, 0, NULL, '2025-03-01 23:37:00', '157', '2025-03-01 23:37:00', '157', '2025-03-01 23:37:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (501, 172, 0, 10, 154, 'SUBMIT', NULL, NULL, NULL, NULL, NULL, '2025-02-18 19:17:00', '154', '2025-02-18 19:17:00', '154', '2025-02-18 19:17:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (502, 172, 10, 20, 156, 'PROCESS', '科室已对相关流程进行优化，增加了核查环节，防止类似事件再次发生。', NULL, NULL, NULL, 205, '2025-02-19 23:17:00', '156', '2025-02-19 23:17:00', '156', '2025-02-19 23:17:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (503, 172, 20, 50, 157, 'PROCESS', '经专家评估，该事件属于系统性问题，建议从制度层面进行改进。', 'MEDICATION', 1, 0, NULL, '2025-02-22 00:17:00', '157', '2025-02-22 00:17:00', '157', '2025-02-22 00:17:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (504, 173, 0, 10, 155, 'SUBMIT', NULL, NULL, NULL, NULL, NULL, '2025-02-19 16:11:00', '155', '2025-02-19 16:11:00', '155', '2025-02-19 16:11:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (505, 173, 10, 20, 156, 'PROCESS', '经科室讨论，认为该事件属于操作流程不规范导致，已对相关人员进行培训。', NULL, NULL, NULL, 205, '2025-02-22 00:11:00', '156', '2025-02-22 00:11:00', '156', '2025-02-22 00:11:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (506, 173, 20, 60, 157, 'RETURN', '报告中时间信息有误，请核实后更正重新提交。', NULL, NULL, NULL, NULL, '2025-02-24 03:11:00', '157', '2025-02-24 03:11:00', '157', '2025-02-24 03:11:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (507, 174, 0, 10, 155, 'SUBMIT', NULL, NULL, NULL, NULL, NULL, '2025-02-15 10:44:00', '155', '2025-02-15 10:44:00', '155', '2025-02-15 10:44:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (508, 174, 10, 20, 156, 'PROCESS', '科室已对相关流程进行优化，增加了核查环节，防止类似事件再次发生。', NULL, NULL, NULL, 205, '2025-02-17 13:44:00', '156', '2025-02-17 13:44:00', '156', '2025-02-17 13:44:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (509, 174, 20, 50, 157, 'PROCESS', '经调查核实，事件处理及时有效，未造成严重后果。建议纳入科室质量改进计划。', 'HUMAN', 0, 1, NULL, '2025-02-24 16:44:00', '157', '2025-02-24 16:44:00', '157', '2025-02-24 16:44:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (510, 175, 0, 10, 154, 'SUBMIT', NULL, NULL, NULL, NULL, NULL, '2025-02-02 14:42:00', '154', '2025-02-02 14:42:00', '154', '2025-02-02 14:42:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (511, 175, 10, 20, 156, 'PROCESS', '科室已对相关流程进行优化，增加了核查环节，防止类似事件再次发生。', NULL, NULL, NULL, 206, '2025-02-04 22:42:00', '156', '2025-02-04 22:42:00', '156', '2025-02-04 22:42:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (512, 175, 20, 50, 157, 'PROCESS', '经调查核实，事件处理及时有效，未造成严重后果。建议纳入科室质量改进计划。', 'HUMAN', 1, 0, NULL, '2025-02-09 23:42:00', '157', '2025-02-09 23:42:00', '157', '2025-02-09 23:42:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (513, 176, 0, 20, 155, 'SUBMIT', NULL, NULL, NULL, NULL, NULL, '2025-03-29 14:39:00', '155', '2025-03-29 14:39:00', '155', '2025-03-29 14:39:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (514, 176, 20, 50, 157, 'PROCESS', '已完成事件定性定级，事件级别为4级，建议按流程继续上报处理。', 'HUMAN', 3, 1, NULL, '2025-04-05 21:39:00', '157', '2025-04-05 21:39:00', '157', '2025-04-05 21:39:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (515, 177, 0, 20, 154, 'SUBMIT', NULL, NULL, NULL, NULL, NULL, '2025-03-13 16:36:00', '154', '2025-03-13 16:36:00', '154', '2025-03-13 16:36:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (516, 177, 20, 50, 157, 'PROCESS', '已完成事件调查，确认事件属实。建议加强操作规范方面的管理和培训。', 'ENVIRONMENT', 1, 0, NULL, '2025-03-15 18:36:00', '157', '2025-03-15 18:36:00', '157', '2025-03-15 18:36:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (517, 178, 0, 10, 154, 'SUBMIT', NULL, NULL, NULL, NULL, NULL, '2025-03-08 15:39:00', '154', '2025-03-08 15:39:00', '154', '2025-03-08 15:39:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (518, 178, 10, 20, 156, 'PROCESS', '科室已对事件进行初步分析，认为需要职能部门进一步评估处理。', NULL, NULL, NULL, 205, '2025-03-12 23:39:00', '156', '2025-03-12 23:39:00', '156', '2025-03-12 23:39:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (519, 178, 20, 60, 157, 'RETURN', '报告中时间信息有误，请核实后更正重新提交。', NULL, NULL, NULL, NULL, '2025-03-20 01:39:00', '157', '2025-03-20 01:39:00', '157', '2025-03-20 01:39:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (520, 179, 0, 10, 154, 'SUBMIT', NULL, NULL, NULL, NULL, NULL, '2025-03-07 09:25:00', '154', '2025-03-07 09:25:00', '154', '2025-03-07 09:25:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (521, 179, 10, 20, 156, 'PROCESS', '科室已对事件进行初步分析，认为需要职能部门进一步评估处理。', NULL, NULL, NULL, 205, '2025-03-11 14:25:00', '156', '2025-03-11 14:25:00', '156', '2025-03-11 14:25:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (522, 179, 20, 50, 157, 'PROCESS', '经专家评估，该事件属于系统性问题，建议从制度层面进行改进。', 'PROCESS', 3, 0, NULL, '2025-03-17 19:25:00', '157', '2025-03-17 19:25:00', '157', '2025-03-17 19:25:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (523, 180, 0, 10, 155, 'SUBMIT', NULL, NULL, NULL, NULL, NULL, '2025-03-17 12:27:00', '155', '2025-03-17 12:27:00', '155', '2025-03-17 12:27:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (524, 180, 10, 20, 156, 'PROCESS', '科室已对相关流程进行优化，增加了核查环节，防止类似事件再次发生。', NULL, NULL, NULL, 208, '2025-03-21 17:27:00', '156', '2025-03-21 17:27:00', '156', '2025-03-21 17:27:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (525, 181, 0, 10, 154, 'SUBMIT', NULL, NULL, NULL, NULL, NULL, '2025-03-08 14:26:00', '154', '2025-03-08 14:26:00', '154', '2025-03-08 14:26:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (526, 181, 10, 20, 156, 'PROCESS', '经科室调查，事件原因为设备因素，已联系设备科进行检修维护。', NULL, NULL, NULL, 205, '2025-03-13 22:26:00', '156', '2025-03-13 22:26:00', '156', '2025-03-13 22:26:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (527, 181, 20, 50, 157, 'PROCESS', '经专家评估，该事件属于系统性问题，建议从制度层面进行改进。', 'OTHER', 3, 0, NULL, '2025-03-19 06:26:00', '157', '2025-03-19 06:26:00', '157', '2025-03-19 06:26:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (528, 182, 0, 10, 155, 'SUBMIT', NULL, NULL, NULL, NULL, NULL, '2025-03-23 14:37:00', '155', '2025-03-23 14:37:00', '155', '2025-03-23 14:37:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (529, 182, 10, 20, 156, 'PROCESS', '经科室讨论，已制定整改措施并落实到人，限期整改完成。', NULL, NULL, NULL, 205, '2025-03-27 21:37:00', '156', '2025-03-27 21:37:00', '156', '2025-03-27 21:37:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (530, 182, 20, 50, 157, 'PROCESS', '经专家评估，该事件属于系统性问题，建议从制度层面进行改进。', 'HUMAN', 2, 1, NULL, '2025-03-29 21:37:00', '157', '2025-03-29 21:37:00', '157', '2025-03-29 21:37:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (531, 183, 0, 10, 155, 'SUBMIT', NULL, NULL, NULL, NULL, NULL, '2025-03-31 14:54:00', '155', '2025-03-31 14:54:00', '155', '2025-03-31 14:54:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (532, 183, 10, 20, 156, 'PROCESS', '经科室调查，事件原因为设备因素，已联系设备科进行检修维护。', NULL, NULL, NULL, 205, '2025-04-01 22:54:00', '156', '2025-04-01 22:54:00', '156', '2025-04-01 22:54:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (533, 183, 20, 50, 157, 'PROCESS', '经专家评估，该事件属于系统性问题，建议从制度层面进行改进。', 'MEDICATION', 0, 0, NULL, '2025-04-05 22:54:00', '157', '2025-04-05 22:54:00', '157', '2025-04-05 22:54:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (534, 184, 0, 10, 154, 'SUBMIT', NULL, NULL, NULL, NULL, NULL, '2025-03-02 12:31:00', '154', '2025-03-02 12:31:00', '154', '2025-03-02 12:31:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (535, 184, 10, 20, 156, 'PROCESS', '经科室讨论，认为该事件属于操作流程不规范导致，已对相关人员进行培训。', NULL, NULL, NULL, 206, '2025-03-04 17:31:00', '156', '2025-03-04 17:31:00', '156', '2025-03-04 17:31:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (536, 184, 20, 80, 157, 'NOT_TRUE', '经调查核实，该事件举报内容不属实，相关情况说明已存档。', NULL, NULL, NULL, NULL, '2025-03-11 21:31:00', '157', '2025-03-11 21:31:00', '157', '2025-03-11 21:31:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (537, 185, 0, 10, 154, 'SUBMIT', NULL, NULL, NULL, NULL, NULL, '2025-04-30 08:42:00', '154', '2025-04-30 08:42:00', '154', '2025-04-30 08:42:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (538, 185, 10, 20, 156, 'PROCESS', '科室已对相关流程进行优化，增加了核查环节，防止类似事件再次发生。', NULL, NULL, NULL, 207, '2025-05-05 16:42:00', '156', '2025-05-05 16:42:00', '156', '2025-05-05 16:42:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (539, 185, 20, 50, 157, 'PROCESS', '经职能部门调查评估，认定事件原因为PROCESS，损害程度为2。已制定改进方案。', 'PROCESS', 2, 0, NULL, '2025-05-11 18:42:00', '157', '2025-05-11 18:42:00', '157', '2025-05-11 18:42:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (540, 186, 0, 10, 155, 'SUBMIT', NULL, NULL, NULL, NULL, NULL, '2025-04-18 13:50:00', '155', '2025-04-18 13:50:00', '155', '2025-04-18 13:50:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (541, 186, 10, 20, 156, 'PROCESS', '经科室调查，事件原因为设备因素，已联系设备科进行检修维护。', NULL, NULL, NULL, 205, '2025-04-22 18:50:00', '156', '2025-04-22 18:50:00', '156', '2025-04-22 18:50:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (542, 186, 20, 50, 157, 'PROCESS', '经专家评估，该事件属于系统性问题，建议从制度层面进行改进。', 'PROCESS', 3, 0, NULL, '2025-04-25 22:50:00', '157', '2025-04-25 22:50:00', '157', '2025-04-25 22:50:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (543, 187, 0, 10, 154, 'SUBMIT', NULL, NULL, NULL, NULL, NULL, '2025-04-30 11:51:00', '154', '2025-04-30 11:51:00', '154', '2025-04-30 11:51:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (544, 187, 10, 20, 156, 'PROCESS', '经科室调查，事件原因为设备因素，已联系设备科进行检修维护。', NULL, NULL, NULL, 205, '2025-05-05 14:51:00', '156', '2025-05-05 14:51:00', '156', '2025-05-05 14:51:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (545, 187, 20, 60, 157, 'RETURN', '报告内容不完整，缺少关键信息，请补充后重新提交。', NULL, NULL, NULL, NULL, '2025-05-09 18:51:00', '157', '2025-05-09 18:51:00', '157', '2025-05-09 18:51:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (546, 188, 0, 10, 154, 'SUBMIT', NULL, NULL, NULL, NULL, NULL, '2025-04-05 11:39:00', '154', '2025-04-05 11:39:00', '154', '2025-04-05 11:39:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (547, 188, 10, 20, 156, 'PROCESS', '经科室讨论，认为该事件属于操作流程不规范导致，已对相关人员进行培训。', NULL, NULL, NULL, 205, '2025-04-09 14:39:00', '156', '2025-04-09 14:39:00', '156', '2025-04-09 14:39:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (548, 188, 20, 80, 157, 'NOT_TRUE', '经调查核实，该事件举报内容不属实，相关情况说明已存档。', NULL, NULL, NULL, NULL, '2025-04-16 19:39:00', '157', '2025-04-16 19:39:00', '157', '2025-04-16 19:39:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (549, 189, 0, 20, 155, 'SUBMIT', NULL, NULL, NULL, NULL, NULL, '2025-04-15 11:11:00', '155', '2025-04-15 11:11:00', '155', '2025-04-15 11:11:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (550, 189, 20, 30, 157, 'PROCESS', '已完成事件定性定级，事件级别为2级，建议按流程继续上报处理。', 'PROCESS', 3, 1, NULL, '2025-04-20 13:11:00', '157', '2025-04-20 13:11:00', '157', '2025-04-20 13:11:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (551, 189, 30, 50, 158, 'PROCESS', '已审阅事件报告，同意处理意见。要求质控办持续跟踪整改效果。', NULL, NULL, NULL, NULL, '2025-04-25 14:11:00', '158', '2025-04-25 14:11:00', '158', '2025-04-25 14:11:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (552, 190, 0, 10, 154, 'SUBMIT', NULL, NULL, NULL, NULL, NULL, '2025-04-25 08:27:00', '154', '2025-04-25 08:27:00', '154', '2025-04-25 08:27:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (553, 190, 10, 20, 156, 'PROCESS', '经科室讨论，认为该事件属于操作流程不规范导致，已对相关人员进行培训。', NULL, NULL, NULL, 205, '2025-04-30 14:27:00', '156', '2025-04-30 14:27:00', '156', '2025-04-30 14:27:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (554, 190, 20, 50, 157, 'PROCESS', '经专家评估，该事件属于系统性问题，建议从制度层面进行改进。', 'EQUIPMENT', 2, 0, NULL, '2025-05-02 19:27:00', '157', '2025-05-02 19:27:00', '157', '2025-05-02 19:27:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (555, 191, 0, 10, 154, 'SUBMIT', NULL, NULL, NULL, NULL, NULL, '2025-04-22 15:29:00', '154', '2025-04-22 15:29:00', '154', '2025-04-22 15:29:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (556, 191, 10, 20, 156, 'PROCESS', '经科室讨论，认为该事件属于操作流程不规范导致，已对相关人员进行培训。', NULL, NULL, NULL, 205, '2025-04-26 21:29:00', '156', '2025-04-26 21:29:00', '156', '2025-04-26 21:29:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (557, 191, 20, 50, 157, 'PROCESS', '已完成事件定性定级，事件级别为3级，建议按流程继续上报处理。', 'HUMAN', 2, 0, NULL, '2025-04-29 21:29:00', '157', '2025-04-29 21:29:00', '157', '2025-04-29 21:29:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (558, 192, 0, 10, 154, 'SUBMIT', NULL, NULL, NULL, NULL, NULL, '2025-04-26 10:07:00', '154', '2025-04-26 10:07:00', '154', '2025-04-26 10:07:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (559, 192, 10, 20, 156, 'PROCESS', '经科室讨论，认为该事件属于操作流程不规范导致，已对相关人员进行培训。', NULL, NULL, NULL, 207, '2025-04-29 18:07:00', '156', '2025-04-29 18:07:00', '156', '2025-04-29 18:07:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (560, 192, 20, 50, 157, 'PROCESS', '经调查核实，事件处理及时有效，未造成严重后果。建议纳入科室质量改进计划。', 'ENVIRONMENT', 0, 0, NULL, '2025-05-04 02:07:00', '157', '2025-05-04 02:07:00', '157', '2025-05-04 02:07:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (561, 193, 0, 20, 154, 'SUBMIT', NULL, NULL, NULL, NULL, NULL, '2025-04-15 17:19:00', '154', '2025-04-15 17:19:00', '154', '2025-04-15 17:19:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (562, 194, 0, 10, 155, 'SUBMIT', NULL, NULL, NULL, NULL, NULL, '2025-05-21 08:54:00', '155', '2025-05-21 08:54:00', '155', '2025-05-21 08:54:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (563, 194, 10, 20, 156, 'PROCESS', '经科室调查，事件原因为设备因素，已联系设备科进行检修维护。', NULL, NULL, NULL, 205, '2025-05-26 11:54:00', '156', '2025-05-26 11:54:00', '156', '2025-05-26 11:54:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (564, 194, 20, 50, 157, 'PROCESS', '已完成事件定性定级，事件级别为3级，建议按流程继续上报处理。', 'OTHER', 3, 0, NULL, '2025-05-28 17:54:00', '157', '2025-05-28 17:54:00', '157', '2025-05-28 17:54:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (565, 195, 0, 10, 155, 'SUBMIT', NULL, NULL, NULL, NULL, NULL, '2025-05-07 17:54:00', '155', '2025-05-07 17:54:00', '155', '2025-05-07 17:54:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (566, 195, 10, 20, 156, 'PROCESS', '经科室讨论，认为该事件属于操作流程不规范导致，已对相关人员进行培训。', NULL, NULL, NULL, 205, '2025-05-13 01:54:00', '156', '2025-05-13 01:54:00', '156', '2025-05-13 01:54:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (567, 195, 20, 50, 157, 'PROCESS', '经专家评估，该事件属于系统性问题，建议从制度层面进行改进。', 'MEDICATION', 1, 0, NULL, '2025-05-16 07:54:00', '157', '2025-05-16 07:54:00', '157', '2025-05-16 07:54:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (568, 196, 0, 20, 154, 'SUBMIT', NULL, NULL, NULL, NULL, NULL, '2025-05-25 15:24:00', '154', '2025-05-25 15:24:00', '154', '2025-05-25 15:24:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (569, 196, 20, 70, 157, 'VOID', '经核实，该事件不属于不良事件范畴，予以作废。', NULL, NULL, NULL, NULL, '2025-05-30 17:24:00', '157', '2025-05-30 17:24:00', '157', '2025-05-30 17:24:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (570, 197, 0, 20, 154, 'SUBMIT', NULL, NULL, NULL, NULL, NULL, '2025-05-26 09:36:00', '154', '2025-05-26 09:36:00', '154', '2025-05-26 09:36:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (571, 197, 20, 50, 157, 'PROCESS', '已完成事件定性定级，事件级别为3级，建议按流程继续上报处理。', 'ENVIRONMENT', 4, 0, NULL, '2025-05-30 10:36:00', '157', '2025-05-30 10:36:00', '157', '2025-05-30 10:36:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (572, 198, 0, 20, 154, 'SUBMIT', NULL, NULL, NULL, NULL, NULL, '2025-05-01 18:35:00', '154', '2025-05-01 18:35:00', '154', '2025-05-01 18:35:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (573, 198, 20, 50, 157, 'PROCESS', '经调查核实，事件处理及时有效，未造成严重后果。建议纳入科室质量改进计划。', 'PROCESS', 2, 1, NULL, '2025-05-08 18:35:00', '157', '2025-05-08 18:35:00', '157', '2025-05-08 18:35:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (574, 199, 0, 10, 155, 'SUBMIT', NULL, NULL, NULL, NULL, NULL, '2025-05-10 11:57:00', '155', '2025-05-10 11:57:00', '155', '2025-05-10 11:57:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (575, 199, 10, 20, 156, 'PROCESS', '经科室讨论，已制定整改措施并落实到人，限期整改完成。', NULL, NULL, NULL, 205, '2025-05-13 12:57:00', '156', '2025-05-13 12:57:00', '156', '2025-05-13 12:57:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (576, 199, 20, 80, 157, 'NOT_TRUE', '经调查核实，该事件举报内容不属实，相关情况说明已存档。', NULL, NULL, NULL, NULL, '2025-05-19 18:57:00', '157', '2025-05-19 18:57:00', '157', '2025-05-19 18:57:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (577, 200, 0, 10, 154, 'SUBMIT', NULL, NULL, NULL, NULL, NULL, '2025-05-31 12:52:00', '154', '2025-05-31 12:52:00', '154', '2025-05-31 12:52:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (578, 200, 10, 20, 156, 'PROCESS', '经科室讨论，已制定整改措施并落实到人，限期整改完成。', NULL, NULL, NULL, 205, '2025-06-02 14:52:00', '156', '2025-06-02 14:52:00', '156', '2025-06-02 14:52:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (579, 200, 20, 60, 157, 'RETURN', '事件描述不够详细，请补充事件发生的经过、原因分析和已采取的措施。', NULL, NULL, NULL, NULL, '2025-06-08 17:52:00', '157', '2025-06-08 17:52:00', '157', '2025-06-08 17:52:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (580, 201, 0, 10, 155, 'SUBMIT', NULL, NULL, NULL, NULL, NULL, '2025-05-12 16:17:00', '155', '2025-05-12 16:17:00', '155', '2025-05-12 16:17:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (581, 201, 10, 20, 156, 'PROCESS', '科室已对相关流程进行优化，增加了核查环节，防止类似事件再次发生。', NULL, NULL, NULL, 205, '2025-05-17 19:17:00', '156', '2025-05-17 19:17:00', '156', '2025-05-17 19:17:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (582, 202, 0, 10, 154, 'SUBMIT', NULL, NULL, NULL, NULL, NULL, '2025-05-06 10:36:00', '154', '2025-05-06 10:36:00', '154', '2025-05-06 10:36:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (583, 202, 10, 20, 156, 'PROCESS', '经科室调查，事件原因为设备因素，已联系设备科进行检修维护。', NULL, NULL, NULL, 205, '2025-05-11 13:36:00', '156', '2025-05-11 13:36:00', '156', '2025-05-11 13:36:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (584, 202, 20, 50, 157, 'PROCESS', '已完成事件定性定级，事件级别为3级，建议按流程继续上报处理。', 'ENVIRONMENT', 1, 0, NULL, '2025-05-13 17:36:00', '157', '2025-05-13 17:36:00', '157', '2025-05-13 17:36:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (585, 203, 0, 20, 154, 'SUBMIT', NULL, NULL, NULL, NULL, NULL, '2025-05-21 15:48:00', '154', '2025-05-21 15:48:00', '154', '2025-05-21 15:48:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (586, 203, 20, 50, 157, 'PROCESS', '经职能部门调查评估，认定事件原因为PROCESS，损害程度为3。已制定改进方案。', 'PROCESS', 3, 0, NULL, '2025-05-28 16:48:00', '157', '2025-05-28 16:48:00', '157', '2025-05-28 16:48:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (587, 204, 0, 10, 154, 'SUBMIT', NULL, NULL, NULL, NULL, NULL, '2025-06-27 18:59:00', '154', '2025-06-27 18:59:00', '154', '2025-06-27 18:59:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (588, 204, 10, 20, 156, 'PROCESS', '科室已对事件进行初步分析，认为需要职能部门进一步评估处理。', NULL, NULL, NULL, 205, '2025-07-02 00:59:00', '156', '2025-07-02 00:59:00', '156', '2025-07-02 00:59:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (589, 204, 20, 50, 157, 'PROCESS', '经专家评估，该事件属于系统性问题，建议从制度层面进行改进。', 'EQUIPMENT', 2, 0, NULL, '2025-07-06 03:59:00', '157', '2025-07-06 03:59:00', '157', '2025-07-06 03:59:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (590, 205, 0, 10, 154, 'SUBMIT', NULL, NULL, NULL, NULL, NULL, '2025-06-11 14:28:00', '154', '2025-06-11 14:28:00', '154', '2025-06-11 14:28:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (591, 205, 10, 20, 156, 'PROCESS', '科室已对事件进行初步分析，认为需要职能部门进一步评估处理。', NULL, NULL, NULL, 208, '2025-06-16 14:28:00', '156', '2025-06-16 14:28:00', '156', '2025-06-16 14:28:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (592, 205, 20, 50, 157, 'PROCESS', '经调查核实，事件处理及时有效，未造成严重后果。建议纳入科室质量改进计划。', 'HUMAN', 3, 1, NULL, '2025-06-19 19:28:00', '157', '2025-06-19 19:28:00', '157', '2025-06-19 19:28:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (593, 206, 0, 10, 154, 'SUBMIT', NULL, NULL, NULL, NULL, NULL, '2025-06-23 11:54:00', '154', '2025-06-23 11:54:00', '154', '2025-06-23 11:54:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (594, 206, 10, 20, 156, 'PROCESS', '经科室讨论，已制定整改措施并落实到人，限期整改完成。', NULL, NULL, NULL, 206, '2025-06-27 13:54:00', '156', '2025-06-27 13:54:00', '156', '2025-06-27 13:54:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (595, 206, 20, 50, 157, 'PROCESS', '已完成事件调查，确认事件属实。建议加强操作规范方面的管理和培训。', 'PROCESS', 2, 1, NULL, '2025-06-29 16:54:00', '157', '2025-06-29 16:54:00', '157', '2025-06-29 16:54:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (596, 207, 0, 10, 155, 'SUBMIT', NULL, NULL, NULL, NULL, NULL, '2025-06-23 15:11:00', '155', '2025-06-23 15:11:00', '155', '2025-06-23 15:11:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (597, 207, 10, 20, 156, 'PROCESS', '经科室讨论，认为该事件属于操作流程不规范导致，已对相关人员进行培训。', NULL, NULL, NULL, 205, '2025-06-26 17:11:00', '156', '2025-06-26 17:11:00', '156', '2025-06-26 17:11:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (598, 207, 20, 50, 157, 'PROCESS', '已完成事件调查，确认事件属实。建议加强操作规范方面的管理和培训。', 'MEDICATION', 1, 1, NULL, '2025-06-28 17:11:00', '157', '2025-06-28 17:11:00', '157', '2025-06-28 17:11:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (599, 208, 0, 10, 154, 'SUBMIT', NULL, NULL, NULL, NULL, NULL, '2025-06-23 17:08:00', '154', '2025-06-23 17:08:00', '154', '2025-06-23 17:08:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (600, 208, 10, 20, 156, 'PROCESS', '科室已对事件进行初步分析，认为需要职能部门进一步评估处理。', NULL, NULL, NULL, 205, '2025-06-28 19:08:00', '156', '2025-06-28 19:08:00', '156', '2025-06-28 19:08:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (601, 208, 20, 70, 157, 'VOID', '经核实，该事件不属于不良事件范畴，予以作废。', NULL, NULL, NULL, NULL, '2025-07-01 00:08:00', '157', '2025-07-01 00:08:00', '157', '2025-07-01 00:08:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (602, 209, 0, 10, 154, 'SUBMIT', NULL, NULL, NULL, NULL, NULL, '2025-06-21 15:10:00', '154', '2025-06-21 15:10:00', '154', '2025-06-21 15:10:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (603, 209, 10, 20, 156, 'PROCESS', '经科室讨论，已制定整改措施并落实到人，限期整改完成。', NULL, NULL, NULL, 205, '2025-06-22 19:10:00', '156', '2025-06-22 19:10:00', '156', '2025-06-22 19:10:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (604, 209, 20, 50, 157, 'PROCESS', '经专家评估，该事件属于系统性问题，建议从制度层面进行改进。', 'PROCESS', 2, 0, NULL, '2025-06-27 19:10:00', '157', '2025-06-27 19:10:00', '157', '2025-06-27 19:10:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (605, 210, 0, 10, 154, 'SUBMIT', NULL, NULL, NULL, NULL, NULL, '2025-06-12 14:35:00', '154', '2025-06-12 14:35:00', '154', '2025-06-12 14:35:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (606, 210, 10, 20, 156, 'PROCESS', '经科室调查，事件原因为设备因素，已联系设备科进行检修维护。', NULL, NULL, NULL, 206, '2025-06-17 17:35:00', '156', '2025-06-17 17:35:00', '156', '2025-06-17 17:35:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (607, 210, 20, 50, 157, 'PROCESS', '经专家评估，该事件属于系统性问题，建议从制度层面进行改进。', 'EQUIPMENT', 4, 1, NULL, '2025-06-24 01:35:00', '157', '2025-06-24 01:35:00', '157', '2025-06-24 01:35:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (608, 211, 0, 10, 155, 'SUBMIT', NULL, NULL, NULL, NULL, NULL, '2025-06-12 12:38:00', '155', '2025-06-12 12:38:00', '155', '2025-06-12 12:38:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (609, 211, 10, 20, 156, 'PROCESS', '经科室讨论，认为该事件属于操作流程不规范导致，已对相关人员进行培训。', NULL, NULL, NULL, 205, '2025-06-16 14:38:00', '156', '2025-06-16 14:38:00', '156', '2025-06-16 14:38:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (610, 211, 20, 80, 157, 'NOT_TRUE', '经调查核实，该事件举报内容不属实，相关情况说明已存档。', NULL, NULL, NULL, NULL, '2025-06-21 22:38:00', '157', '2025-06-21 22:38:00', '157', '2025-06-21 22:38:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (611, 212, 0, 10, 154, 'SUBMIT', NULL, NULL, NULL, NULL, NULL, '2025-06-26 09:02:00', '154', '2025-06-26 09:02:00', '154', '2025-06-26 09:02:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (612, 212, 10, 20, 156, 'PROCESS', '经科室讨论，认为该事件属于操作流程不规范导致，已对相关人员进行培训。', NULL, NULL, NULL, 208, '2025-06-29 11:02:00', '156', '2025-06-29 11:02:00', '156', '2025-06-29 11:02:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (613, 212, 20, 50, 157, 'PROCESS', '经调查核实，事件处理及时有效，未造成严重后果。建议纳入科室质量改进计划。', 'PROCESS', 1, 0, NULL, '2025-07-03 14:02:00', '157', '2025-07-03 14:02:00', '157', '2025-07-03 14:02:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (614, 213, 0, 10, 155, 'SUBMIT', NULL, NULL, NULL, NULL, NULL, '2025-06-08 14:48:00', '155', '2025-06-08 14:48:00', '155', '2025-06-08 14:48:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (615, 213, 10, 20, 156, 'PROCESS', '经科室讨论，认为该事件属于操作流程不规范导致，已对相关人员进行培训。', NULL, NULL, NULL, 205, '2025-06-09 21:48:00', '156', '2025-06-09 21:48:00', '156', '2025-06-09 21:48:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (616, 213, 20, 50, 157, 'PROCESS', '经专家评估，该事件属于系统性问题，建议从制度层面进行改进。', 'EQUIPMENT', 1, 1, NULL, '2025-06-12 03:48:00', '157', '2025-06-12 03:48:00', '157', '2025-06-12 03:48:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (617, 214, 0, 10, 154, 'SUBMIT', NULL, NULL, NULL, NULL, NULL, '2025-06-07 13:09:00', '154', '2025-06-07 13:09:00', '154', '2025-06-07 13:09:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (618, 214, 10, 20, 156, 'PROCESS', '经科室讨论，认为该事件属于操作流程不规范导致，已对相关人员进行培训。', NULL, NULL, NULL, 206, '2025-06-10 14:09:00', '156', '2025-06-10 14:09:00', '156', '2025-06-10 14:09:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (619, 214, 20, 50, 157, 'PROCESS', '已完成事件调查，确认事件属实。建议加强操作规范方面的管理和培训。', 'HUMAN', 1, 0, NULL, '2025-06-14 20:09:00', '157', '2025-06-14 20:09:00', '157', '2025-06-14 20:09:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (620, 215, 0, 20, 154, 'SUBMIT', NULL, NULL, NULL, NULL, NULL, '2025-07-31 18:32:00', '154', '2025-07-31 18:32:00', '154', '2025-07-31 18:32:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (621, 215, 20, 60, 157, 'RETURN', '事件描述不够详细，请补充事件发生的经过、原因分析和已采取的措施。', NULL, NULL, NULL, NULL, '2025-08-06 19:32:00', '157', '2025-08-06 19:32:00', '157', '2025-08-06 19:32:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (622, 216, 0, 10, 154, 'SUBMIT', NULL, NULL, NULL, NULL, NULL, '2025-07-30 17:52:00', '154', '2025-07-30 17:52:00', '154', '2025-07-30 17:52:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (623, 216, 10, 20, 156, 'PROCESS', '经科室讨论，认为该事件属于操作流程不规范导致，已对相关人员进行培训。', NULL, NULL, NULL, 205, '2025-08-05 01:52:00', '156', '2025-08-05 01:52:00', '156', '2025-08-05 01:52:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (624, 216, 20, 30, 157, 'PROCESS', '经调查核实，事件处理及时有效，未造成严重后果。建议纳入科室质量改进计划。', 'EQUIPMENT', 2, 0, NULL, '2025-08-08 04:52:00', '157', '2025-08-08 04:52:00', '157', '2025-08-08 04:52:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (625, 216, 30, 50, 158, 'PROCESS', '同意职能部门处理意见，要求相关科室认真落实整改措施。', NULL, NULL, NULL, NULL, '2025-08-12 12:52:00', '158', '2025-08-12 12:52:00', '158', '2025-08-12 12:52:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (626, 217, 0, 10, 154, 'SUBMIT', NULL, NULL, NULL, NULL, NULL, '2025-07-06 15:41:00', '154', '2025-07-06 15:41:00', '154', '2025-07-06 15:41:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (627, 217, 10, 20, 156, 'PROCESS', '科室已对事件进行初步分析，认为需要职能部门进一步评估处理。', NULL, NULL, NULL, 205, '2025-07-08 23:41:00', '156', '2025-07-08 23:41:00', '156', '2025-07-08 23:41:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (628, 217, 20, 50, 157, 'PROCESS', '已完成事件定性定级，事件级别为4级，建议按流程继续上报处理。', 'EQUIPMENT', 2, 1, NULL, '2025-07-13 06:41:00', '157', '2025-07-13 06:41:00', '157', '2025-07-13 06:41:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (629, 218, 0, 10, 155, 'SUBMIT', NULL, NULL, NULL, NULL, NULL, '2025-07-31 08:54:00', '155', '2025-07-31 08:54:00', '155', '2025-07-31 08:54:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (630, 218, 10, 20, 156, 'PROCESS', '科室已对事件进行初步分析，认为需要职能部门进一步评估处理。', NULL, NULL, NULL, 205, '2025-08-02 08:54:00', '156', '2025-08-02 08:54:00', '156', '2025-08-02 08:54:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (631, 218, 20, 80, 157, 'NOT_TRUE', '经调查核实，该事件举报内容不属实，相关情况说明已存档。', NULL, NULL, NULL, NULL, '2025-08-09 13:54:00', '157', '2025-08-09 13:54:00', '157', '2025-08-09 13:54:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (632, 219, 0, 10, 155, 'SUBMIT', NULL, NULL, NULL, NULL, NULL, '2025-07-26 11:29:00', '155', '2025-07-26 11:29:00', '155', '2025-07-26 11:29:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (633, 219, 10, 20, 156, 'PROCESS', '科室已对相关流程进行优化，增加了核查环节，防止类似事件再次发生。', NULL, NULL, NULL, 205, '2025-07-29 14:29:00', '156', '2025-07-29 14:29:00', '156', '2025-07-29 14:29:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (634, 219, 20, 80, 157, 'NOT_TRUE', '经调查核实，该事件举报内容不属实，相关情况说明已存档。', NULL, NULL, NULL, NULL, '2025-08-02 14:29:00', '157', '2025-08-02 14:29:00', '157', '2025-08-02 14:29:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (635, 220, 0, 10, 155, 'SUBMIT', NULL, NULL, NULL, NULL, NULL, '2025-07-19 09:37:00', '155', '2025-07-19 09:37:00', '155', '2025-07-19 09:37:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (636, 220, 10, 20, 156, 'PROCESS', '经科室讨论，认为该事件属于操作流程不规范导致，已对相关人员进行培训。', NULL, NULL, NULL, 206, '2025-07-22 15:37:00', '156', '2025-07-22 15:37:00', '156', '2025-07-22 15:37:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (637, 220, 20, 50, 157, 'PROCESS', '已完成事件调查，确认事件属实。建议加强操作规范方面的管理和培训。', 'PROCESS', 4, 0, NULL, '2025-07-28 19:37:00', '157', '2025-07-28 19:37:00', '157', '2025-07-28 19:37:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (638, 221, 0, 10, 154, 'SUBMIT', NULL, NULL, NULL, NULL, NULL, '2025-07-24 18:52:00', '154', '2025-07-24 18:52:00', '154', '2025-07-24 18:52:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (639, 221, 10, 20, 156, 'PROCESS', '经科室调查，事件原因为设备因素，已联系设备科进行检修维护。', NULL, NULL, NULL, 205, '2025-07-28 00:52:00', '156', '2025-07-28 00:52:00', '156', '2025-07-28 00:52:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (640, 221, 20, 50, 157, 'PROCESS', '经调查核实，事件处理及时有效，未造成严重后果。建议纳入科室质量改进计划。', 'MEDICATION', 1, 0, NULL, '2025-07-30 06:52:00', '157', '2025-07-30 06:52:00', '157', '2025-07-30 06:52:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (641, 222, 0, 10, 155, 'SUBMIT', NULL, NULL, NULL, NULL, NULL, '2025-07-07 18:14:00', '155', '2025-07-07 18:14:00', '155', '2025-07-07 18:14:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (642, 222, 10, 20, 156, 'PROCESS', '经科室讨论，已制定整改措施并落实到人，限期整改完成。', NULL, NULL, NULL, 205, '2025-07-12 21:14:00', '156', '2025-07-12 21:14:00', '156', '2025-07-12 21:14:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (643, 222, 20, 50, 157, 'PROCESS', '已完成事件定性定级，事件级别为4级，建议按流程继续上报处理。', 'HUMAN', 0, 0, NULL, '2025-07-15 23:14:00', '157', '2025-07-15 23:14:00', '157', '2025-07-15 23:14:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (644, 223, 0, 20, 155, 'SUBMIT', NULL, NULL, NULL, NULL, NULL, '2025-07-20 16:19:00', '155', '2025-07-20 16:19:00', '155', '2025-07-20 16:19:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (645, 223, 20, 50, 157, 'PROCESS', '已完成事件定性定级，事件级别为4级，建议按流程继续上报处理。', 'MEDICATION', 3, 1, NULL, '2025-07-26 21:19:00', '157', '2025-07-26 21:19:00', '157', '2025-07-26 21:19:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (646, 224, 0, 10, 154, 'SUBMIT', NULL, NULL, NULL, NULL, NULL, '2025-07-26 15:15:00', '154', '2025-07-26 15:15:00', '154', '2025-07-26 15:15:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (647, 224, 10, 20, 156, 'PROCESS', '经科室调查，事件原因为设备因素，已联系设备科进行检修维护。', NULL, NULL, NULL, 205, '2025-07-28 18:15:00', '156', '2025-07-28 18:15:00', '156', '2025-07-28 18:15:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (648, 224, 20, 50, 157, 'PROCESS', '已完成事件调查，确认事件属实。建议加强操作规范方面的管理和培训。', 'EQUIPMENT', 1, 0, NULL, '2025-08-04 02:15:00', '157', '2025-08-04 02:15:00', '157', '2025-08-04 02:15:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (649, 225, 0, 10, 155, 'SUBMIT', NULL, NULL, NULL, NULL, NULL, '2025-07-16 11:03:00', '155', '2025-07-16 11:03:00', '155', '2025-07-16 11:03:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (650, 225, 10, 20, 156, 'PROCESS', '科室已对相关流程进行优化，增加了核查环节，防止类似事件再次发生。', NULL, NULL, NULL, 205, '2025-07-18 15:03:00', '156', '2025-07-18 15:03:00', '156', '2025-07-18 15:03:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (651, 225, 20, 50, 157, 'PROCESS', '已完成事件调查，确认事件属实。建议加强操作规范方面的管理和培训。', 'HUMAN', 2, 1, NULL, '2025-07-21 21:03:00', '157', '2025-07-21 21:03:00', '157', '2025-07-21 21:03:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (652, 226, 0, 10, 154, 'SUBMIT', NULL, NULL, NULL, NULL, NULL, '2025-07-15 15:40:00', '154', '2025-07-15 15:40:00', '154', '2025-07-15 15:40:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (653, 226, 10, 20, 156, 'PROCESS', '科室已对事件进行初步分析，认为需要职能部门进一步评估处理。', NULL, NULL, NULL, 205, '2025-07-20 17:40:00', '156', '2025-07-20 17:40:00', '156', '2025-07-20 17:40:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (654, 226, 20, 70, 157, 'VOID', '经核实，该事件不属于不良事件范畴，予以作废。', NULL, NULL, NULL, NULL, '2025-07-23 01:40:00', '157', '2025-07-23 01:40:00', '157', '2025-07-23 01:40:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (655, 227, 0, 10, 155, 'SUBMIT', NULL, NULL, NULL, NULL, NULL, '2025-08-07 15:09:00', '155', '2025-08-07 15:09:00', '155', '2025-08-07 15:09:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (656, 227, 10, 20, 156, 'PROCESS', '科室已对事件进行初步分析，认为需要职能部门进一步评估处理。', NULL, NULL, NULL, 205, '2025-08-08 17:09:00', '156', '2025-08-08 17:09:00', '156', '2025-08-08 17:09:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (657, 227, 20, 60, 157, 'RETURN', '事件描述不够详细，请补充事件发生的经过、原因分析和已采取的措施。', NULL, NULL, NULL, NULL, '2025-08-11 17:09:00', '157', '2025-08-11 17:09:00', '157', '2025-08-11 17:09:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (658, 228, 0, 10, 154, 'SUBMIT', NULL, NULL, NULL, NULL, NULL, '2025-08-02 10:08:00', '154', '2025-08-02 10:08:00', '154', '2025-08-02 10:08:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (659, 228, 10, 20, 156, 'PROCESS', '科室已对事件进行初步分析，认为需要职能部门进一步评估处理。', NULL, NULL, NULL, 206, '2025-08-06 16:08:00', '156', '2025-08-06 16:08:00', '156', '2025-08-06 16:08:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (660, 228, 20, 50, 157, 'PROCESS', '已完成事件调查，确认事件属实。建议加强操作规范方面的管理和培训。', 'OTHER', 1, 0, NULL, '2025-08-11 20:08:00', '157', '2025-08-11 20:08:00', '157', '2025-08-11 20:08:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (661, 229, 0, 10, 155, 'SUBMIT', NULL, NULL, NULL, NULL, NULL, '2025-08-29 18:43:00', '155', '2025-08-29 18:43:00', '155', '2025-08-29 18:43:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (662, 229, 10, 20, 156, 'PROCESS', '经科室调查，事件原因为设备因素，已联系设备科进行检修维护。', NULL, NULL, NULL, 205, '2025-08-31 19:43:00', '156', '2025-08-31 19:43:00', '156', '2025-08-31 19:43:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (663, 229, 20, 50, 157, 'PROCESS', '经调查核实，事件处理及时有效，未造成严重后果。建议纳入科室质量改进计划。', 'PROCESS', 2, 1, NULL, '2025-09-03 19:43:00', '157', '2025-09-03 19:43:00', '157', '2025-09-03 19:43:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (664, 230, 0, 10, 154, 'SUBMIT', NULL, NULL, NULL, NULL, NULL, '2025-08-24 11:46:00', '154', '2025-08-24 11:46:00', '154', '2025-08-24 11:46:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (665, 230, 10, 20, 156, 'PROCESS', '科室已对相关流程进行优化，增加了核查环节，防止类似事件再次发生。', NULL, NULL, NULL, 206, '2025-08-27 14:46:00', '156', '2025-08-27 14:46:00', '156', '2025-08-27 14:46:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (666, 230, 20, 60, 157, 'RETURN', '报告中时间信息有误，请核实后更正重新提交。', NULL, NULL, NULL, NULL, '2025-08-30 17:46:00', '157', '2025-08-30 17:46:00', '157', '2025-08-30 17:46:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (667, 231, 0, 10, 154, 'SUBMIT', NULL, NULL, NULL, NULL, NULL, '2025-08-23 13:52:00', '154', '2025-08-23 13:52:00', '154', '2025-08-23 13:52:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (668, 231, 10, 20, 156, 'PROCESS', '经科室讨论，已制定整改措施并落实到人，限期整改完成。', NULL, NULL, NULL, 205, '2025-08-26 14:52:00', '156', '2025-08-26 14:52:00', '156', '2025-08-26 14:52:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (669, 231, 20, 50, 157, 'PROCESS', '经调查核实，事件处理及时有效，未造成严重后果。建议纳入科室质量改进计划。', 'MEDICATION', 1, 0, NULL, '2025-08-29 22:52:00', '157', '2025-08-29 22:52:00', '157', '2025-08-29 22:52:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (670, 232, 0, 10, 154, 'SUBMIT', NULL, NULL, NULL, NULL, NULL, '2025-08-05 15:04:00', '154', '2025-08-05 15:04:00', '154', '2025-08-05 15:04:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (671, 232, 10, 20, 156, 'PROCESS', '经科室讨论，已制定整改措施并落实到人，限期整改完成。', NULL, NULL, NULL, 208, '2025-08-08 17:04:00', '156', '2025-08-08 17:04:00', '156', '2025-08-08 17:04:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (672, 232, 20, 60, 157, 'RETURN', '报告内容不完整，缺少关键信息，请补充后重新提交。', NULL, NULL, NULL, NULL, '2025-08-14 00:04:00', '157', '2025-08-14 00:04:00', '157', '2025-08-14 00:04:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (673, 233, 0, 10, 154, 'SUBMIT', NULL, NULL, NULL, NULL, NULL, '2025-08-21 11:03:00', '154', '2025-08-21 11:03:00', '154', '2025-08-21 11:03:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (674, 233, 10, 20, 156, 'PROCESS', '经科室讨论，认为该事件属于操作流程不规范导致，已对相关人员进行培训。', NULL, NULL, NULL, 205, '2025-08-23 14:03:00', '156', '2025-08-23 14:03:00', '156', '2025-08-23 14:03:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (675, 233, 20, 50, 157, 'PROCESS', '经专家评估，该事件属于系统性问题，建议从制度层面进行改进。', 'EQUIPMENT', 1, 0, NULL, '2025-08-28 14:03:00', '157', '2025-08-28 14:03:00', '157', '2025-08-28 14:03:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (676, 234, 0, 10, 155, 'SUBMIT', NULL, NULL, NULL, NULL, NULL, '2025-08-05 11:47:00', '155', '2025-08-05 11:47:00', '155', '2025-08-05 11:47:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (677, 234, 10, 20, 156, 'PROCESS', '经科室调查，事件原因为设备因素，已联系设备科进行检修维护。', NULL, NULL, NULL, 205, '2025-08-09 14:47:00', '156', '2025-08-09 14:47:00', '156', '2025-08-09 14:47:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (678, 234, 20, 50, 157, 'PROCESS', '已完成事件调查，确认事件属实。建议加强操作规范方面的管理和培训。', 'HUMAN', 2, 0, NULL, '2025-08-12 15:47:00', '157', '2025-08-12 15:47:00', '157', '2025-08-12 15:47:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (679, 235, 0, 10, 154, 'SUBMIT', NULL, NULL, NULL, NULL, NULL, '2025-08-24 14:47:00', '154', '2025-08-24 14:47:00', '154', '2025-08-24 14:47:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (680, 235, 10, 20, 156, 'PROCESS', '科室已对事件进行初步分析，认为需要职能部门进一步评估处理。', NULL, NULL, NULL, 205, '2025-08-28 21:47:00', '156', '2025-08-28 21:47:00', '156', '2025-08-28 21:47:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (681, 235, 20, 50, 157, 'PROCESS', '已完成事件定性定级，事件级别为4级，建议按流程继续上报处理。', 'PROCESS', 2, 0, NULL, '2025-09-03 00:47:00', '157', '2025-09-03 00:47:00', '157', '2025-09-03 00:47:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (682, 236, 0, 10, 155, 'SUBMIT', NULL, NULL, NULL, NULL, NULL, '2025-08-30 13:20:00', '155', '2025-08-30 13:20:00', '155', '2025-08-30 13:20:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (683, 237, 0, 10, 155, 'SUBMIT', NULL, NULL, NULL, NULL, NULL, '2025-08-07 09:23:00', '155', '2025-08-07 09:23:00', '155', '2025-08-07 09:23:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (684, 237, 10, 20, 156, 'PROCESS', '科室已对事件进行初步分析，认为需要职能部门进一步评估处理。', NULL, NULL, NULL, 205, '2025-08-08 15:23:00', '156', '2025-08-08 15:23:00', '156', '2025-08-08 15:23:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (685, 237, 20, 50, 157, 'PROCESS', '经调查核实，事件处理及时有效，未造成严重后果。建议纳入科室质量改进计划。', 'ENVIRONMENT', 0, 0, NULL, '2025-08-13 23:23:00', '157', '2025-08-13 23:23:00', '157', '2025-08-13 23:23:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (686, 238, 0, 10, 154, 'SUBMIT', NULL, NULL, NULL, NULL, NULL, '2025-09-03 12:25:00', '154', '2025-09-03 12:25:00', '154', '2025-09-03 12:25:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (687, 238, 10, 20, 156, 'PROCESS', '经科室讨论，认为该事件属于操作流程不规范导致，已对相关人员进行培训。', NULL, NULL, NULL, 205, '2025-09-04 20:25:00', '156', '2025-09-04 20:25:00', '156', '2025-09-04 20:25:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (688, 238, 20, 70, 157, 'VOID', '经核实，该事件不属于不良事件范畴，予以作废。', NULL, NULL, NULL, NULL, '2025-09-10 03:25:00', '157', '2025-09-10 03:25:00', '157', '2025-09-10 03:25:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (689, 239, 0, 10, 154, 'SUBMIT', NULL, NULL, NULL, NULL, NULL, '2025-09-10 15:12:00', '154', '2025-09-10 15:12:00', '154', '2025-09-10 15:12:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (690, 239, 10, 20, 156, 'PROCESS', '科室已对相关流程进行优化，增加了核查环节，防止类似事件再次发生。', NULL, NULL, NULL, 207, '2025-09-11 18:12:00', '156', '2025-09-11 18:12:00', '156', '2025-09-11 18:12:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (691, 239, 20, 50, 157, 'PROCESS', '经职能部门调查评估，认定事件原因为PROCESS，损害程度为1。已制定改进方案。', 'PROCESS', 1, 0, NULL, '2025-09-18 00:12:00', '157', '2025-09-18 00:12:00', '157', '2025-09-18 00:12:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (692, 240, 0, 10, 154, 'SUBMIT', NULL, NULL, NULL, NULL, NULL, '2025-09-06 09:17:00', '154', '2025-09-06 09:17:00', '154', '2025-09-06 09:17:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (693, 240, 10, 20, 156, 'PROCESS', '经科室讨论，认为该事件属于操作流程不规范导致，已对相关人员进行培训。', NULL, NULL, NULL, 206, '2025-09-10 17:17:00', '156', '2025-09-10 17:17:00', '156', '2025-09-10 17:17:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (694, 240, 20, 50, 157, 'PROCESS', '已完成事件定性定级，事件级别为4级，建议按流程继续上报处理。', 'MEDICATION', 1, 0, NULL, '2025-09-13 21:17:00', '157', '2025-09-13 21:17:00', '157', '2025-09-13 21:17:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (695, 241, 0, 10, 155, 'SUBMIT', NULL, NULL, NULL, NULL, NULL, '2025-09-24 10:01:00', '155', '2025-09-24 10:01:00', '155', '2025-09-24 10:01:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (696, 241, 10, 20, 156, 'PROCESS', '经科室讨论，已制定整改措施并落实到人，限期整改完成。', NULL, NULL, NULL, 208, '2025-09-27 14:01:00', '156', '2025-09-27 14:01:00', '156', '2025-09-27 14:01:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (697, 241, 20, 80, 157, 'NOT_TRUE', '经调查核实，该事件举报内容不属实，相关情况说明已存档。', NULL, NULL, NULL, NULL, '2025-09-30 20:01:00', '157', '2025-09-30 20:01:00', '157', '2025-09-30 20:01:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (698, 242, 0, 10, 155, 'SUBMIT', NULL, NULL, NULL, NULL, NULL, '2025-09-17 13:12:00', '155', '2025-09-17 13:12:00', '155', '2025-09-17 13:12:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (699, 242, 10, 20, 156, 'PROCESS', '科室已对相关流程进行优化，增加了核查环节，防止类似事件再次发生。', NULL, NULL, NULL, 205, '2025-09-22 13:12:00', '156', '2025-09-22 13:12:00', '156', '2025-09-22 13:12:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (700, 242, 20, 50, 157, 'PROCESS', '已完成事件定性定级，事件级别为3级，建议按流程继续上报处理。', 'PROCESS', 1, 0, NULL, '2025-09-25 20:12:00', '157', '2025-09-25 20:12:00', '157', '2025-09-25 20:12:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (701, 243, 0, 20, 154, 'SUBMIT', NULL, NULL, NULL, NULL, NULL, '2025-09-02 08:17:00', '154', '2025-09-02 08:17:00', '154', '2025-09-02 08:17:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (702, 243, 20, 50, 157, 'PROCESS', '经职能部门调查评估，认定事件原因为MEDICATION，损害程度为2。已制定改进方案。', 'MEDICATION', 2, 0, NULL, '2025-09-09 16:17:00', '157', '2025-09-09 16:17:00', '157', '2025-09-09 16:17:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (703, 244, 0, 10, 154, 'SUBMIT', NULL, NULL, NULL, NULL, NULL, '2025-09-11 11:31:00', '154', '2025-09-11 11:31:00', '154', '2025-09-11 11:31:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (704, 244, 10, 20, 156, 'PROCESS', '经科室调查，事件原因为设备因素，已联系设备科进行检修维护。', NULL, NULL, NULL, 207, '2025-09-16 19:31:00', '156', '2025-09-16 19:31:00', '156', '2025-09-16 19:31:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (705, 244, 20, 70, 157, 'VOID', '经核实，该事件不属于不良事件范畴，予以作废。', NULL, NULL, NULL, NULL, '2025-09-22 01:31:00', '157', '2025-09-22 01:31:00', '157', '2025-09-22 01:31:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (706, 245, 0, 10, 155, 'SUBMIT', NULL, NULL, NULL, NULL, NULL, '2025-09-02 14:14:00', '155', '2025-09-02 14:14:00', '155', '2025-09-02 14:14:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (707, 245, 10, 20, 156, 'PROCESS', '经科室调查，事件原因为设备因素，已联系设备科进行检修维护。', NULL, NULL, NULL, 208, '2025-09-06 14:14:00', '156', '2025-09-06 14:14:00', '156', '2025-09-06 14:14:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (708, 245, 20, 50, 157, 'PROCESS', '已完成事件定性定级，事件级别为4级，建议按流程继续上报处理。', 'HUMAN', 2, 0, NULL, '2025-09-11 17:14:00', '157', '2025-09-11 17:14:00', '157', '2025-09-11 17:14:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (709, 246, 0, 10, 154, 'SUBMIT', NULL, NULL, NULL, NULL, NULL, '2025-09-08 15:25:00', '154', '2025-09-08 15:25:00', '154', '2025-09-08 15:25:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (710, 246, 10, 20, 156, 'PROCESS', '经科室调查，事件原因为设备因素，已联系设备科进行检修维护。', NULL, NULL, NULL, 205, '2025-09-11 20:25:00', '156', '2025-09-11 20:25:00', '156', '2025-09-11 20:25:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (711, 247, 0, 10, 155, 'SUBMIT', NULL, NULL, NULL, NULL, NULL, '2025-09-18 14:02:00', '155', '2025-09-18 14:02:00', '155', '2025-09-18 14:02:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (712, 247, 10, 20, 156, 'PROCESS', '经科室讨论，认为该事件属于操作流程不规范导致，已对相关人员进行培训。', NULL, NULL, NULL, 208, '2025-09-19 15:02:00', '156', '2025-09-19 15:02:00', '156', '2025-09-19 15:02:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (713, 247, 20, 50, 157, 'PROCESS', '经专家评估，该事件属于系统性问题，建议从制度层面进行改进。', 'HUMAN', 2, 0, NULL, '2025-09-26 22:02:00', '157', '2025-09-26 22:02:00', '157', '2025-09-26 22:02:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (714, 248, 0, 20, 155, 'SUBMIT', NULL, NULL, NULL, NULL, NULL, '2025-09-14 15:05:00', '155', '2025-09-14 15:05:00', '155', '2025-09-14 15:05:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (715, 248, 20, 30, 157, 'PROCESS', '经调查核实，事件处理及时有效，未造成严重后果。建议纳入科室质量改进计划。', 'ENVIRONMENT', 1, 0, NULL, '2025-09-20 21:05:00', '157', '2025-09-20 21:05:00', '157', '2025-09-20 21:05:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (716, 248, 30, 50, 158, 'PROCESS', '同意按流程处理，要求举一反三，在全院范围内开展安全教育。', NULL, NULL, NULL, NULL, '2025-09-25 23:05:00', '158', '2025-09-25 23:05:00', '158', '2025-09-25 23:05:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (717, 249, 0, 20, 154, 'SUBMIT', NULL, NULL, NULL, NULL, NULL, '2025-10-04 16:25:00', '154', '2025-10-04 16:25:00', '154', '2025-10-04 16:25:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (718, 249, 20, 50, 157, 'PROCESS', '已完成事件调查，确认事件属实。建议加强操作规范方面的管理和培训。', 'HUMAN', 1, 0, NULL, '2025-10-09 16:25:00', '157', '2025-10-09 16:25:00', '157', '2025-10-09 16:25:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (719, 250, 0, 10, 154, 'SUBMIT', NULL, NULL, NULL, NULL, NULL, '2025-10-27 13:49:00', '154', '2025-10-27 13:49:00', '154', '2025-10-27 13:49:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (720, 250, 10, 20, 156, 'PROCESS', '经科室调查，事件原因为设备因素，已联系设备科进行检修维护。', NULL, NULL, NULL, 205, '2025-10-30 15:49:00', '156', '2025-10-30 15:49:00', '156', '2025-10-30 15:49:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (721, 250, 20, 50, 157, 'PROCESS', '经职能部门调查评估，认定事件原因为HUMAN，损害程度为1。已制定改进方案。', 'HUMAN', 1, 0, NULL, '2025-11-02 17:49:00', '157', '2025-11-02 17:49:00', '157', '2025-11-02 17:49:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (722, 251, 0, 10, 155, 'SUBMIT', NULL, NULL, NULL, NULL, NULL, '2025-10-18 14:02:00', '155', '2025-10-18 14:02:00', '155', '2025-10-18 14:02:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (723, 251, 10, 20, 156, 'PROCESS', '经科室讨论，已制定整改措施并落实到人，限期整改完成。', NULL, NULL, NULL, 205, '2025-10-21 18:02:00', '156', '2025-10-21 18:02:00', '156', '2025-10-21 18:02:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (724, 251, 20, 50, 157, 'PROCESS', '经职能部门调查评估，认定事件原因为MEDICATION，损害程度为2。已制定改进方案。', 'MEDICATION', 2, 0, NULL, '2025-10-25 20:02:00', '157', '2025-10-25 20:02:00', '157', '2025-10-25 20:02:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (725, 252, 0, 10, 155, 'SUBMIT', NULL, NULL, NULL, NULL, NULL, '2025-10-07 13:37:00', '155', '2025-10-07 13:37:00', '155', '2025-10-07 13:37:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (726, 252, 10, 20, 156, 'PROCESS', '经科室讨论，认为该事件属于操作流程不规范导致，已对相关人员进行培训。', NULL, NULL, NULL, 205, '2025-10-09 16:37:00', '156', '2025-10-09 16:37:00', '156', '2025-10-09 16:37:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (727, 252, 20, 50, 157, 'PROCESS', '经职能部门调查评估，认定事件原因为MEDICATION，损害程度为1。已制定改进方案。', 'MEDICATION', 1, 0, NULL, '2025-10-15 20:37:00', '157', '2025-10-15 20:37:00', '157', '2025-10-15 20:37:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (728, 253, 0, 10, 154, 'SUBMIT', NULL, NULL, NULL, NULL, NULL, '2025-10-18 16:29:00', '154', '2025-10-18 16:29:00', '154', '2025-10-18 16:29:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (729, 253, 10, 20, 156, 'PROCESS', '科室已对相关流程进行优化，增加了核查环节，防止类似事件再次发生。', NULL, NULL, NULL, 205, '2025-10-22 23:29:00', '156', '2025-10-22 23:29:00', '156', '2025-10-22 23:29:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (730, 254, 0, 10, 154, 'SUBMIT', NULL, NULL, NULL, NULL, NULL, '2025-10-22 19:06:00', '154', '2025-10-22 19:06:00', '154', '2025-10-22 19:06:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (731, 254, 10, 20, 156, 'PROCESS', '经科室调查，事件原因为设备因素，已联系设备科进行检修维护。', NULL, NULL, NULL, 205, '2025-10-24 02:06:00', '156', '2025-10-24 02:06:00', '156', '2025-10-24 02:06:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (732, 254, 20, 50, 157, 'PROCESS', '已完成事件定性定级，事件级别为3级，建议按流程继续上报处理。', 'EQUIPMENT', 1, 0, NULL, '2025-10-27 09:06:00', '157', '2025-10-27 09:06:00', '157', '2025-10-27 09:06:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (733, 255, 0, 10, 155, 'SUBMIT', NULL, NULL, NULL, NULL, NULL, '2025-10-04 08:42:00', '155', '2025-10-04 08:42:00', '155', '2025-10-04 08:42:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (734, 255, 10, 20, 156, 'PROCESS', '科室已对相关流程进行优化，增加了核查环节，防止类似事件再次发生。', NULL, NULL, NULL, 205, '2025-10-08 09:42:00', '156', '2025-10-08 09:42:00', '156', '2025-10-08 09:42:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (735, 255, 20, 50, 157, 'PROCESS', '已完成事件调查，确认事件属实。建议加强操作规范方面的管理和培训。', 'PROCESS', 1, 1, NULL, '2025-10-14 09:42:00', '157', '2025-10-14 09:42:00', '157', '2025-10-14 09:42:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (736, 256, 0, 10, 154, 'SUBMIT', NULL, NULL, NULL, NULL, NULL, '2025-10-09 12:56:00', '154', '2025-10-09 12:56:00', '154', '2025-10-09 12:56:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (737, 256, 10, 20, 156, 'PROCESS', '科室已对相关流程进行优化，增加了核查环节，防止类似事件再次发生。', NULL, NULL, NULL, 208, '2025-10-14 16:56:00', '156', '2025-10-14 16:56:00', '156', '2025-10-14 16:56:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (738, 256, 20, 30, 157, 'PROCESS', '已完成事件调查，确认事件属实。建议加强操作规范方面的管理和培训。', 'HUMAN', 1, 0, NULL, '2025-10-22 00:56:00', '157', '2025-10-22 00:56:00', '157', '2025-10-22 00:56:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (739, 256, 30, 50, 158, 'PROCESS', '该事件性质严重，同意提交质量委员会讨论，制定系统性改进方案。', NULL, NULL, NULL, NULL, '2025-10-23 02:56:00', '158', '2025-10-23 02:56:00', '158', '2025-10-23 02:56:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (740, 257, 0, 10, 155, 'SUBMIT', NULL, NULL, NULL, NULL, NULL, '2025-10-08 18:52:00', '155', '2025-10-08 18:52:00', '155', '2025-10-08 18:52:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (741, 257, 10, 20, 156, 'PROCESS', '经科室调查，事件原因为设备因素，已联系设备科进行检修维护。', NULL, NULL, NULL, 205, '2025-10-11 18:52:00', '156', '2025-10-11 18:52:00', '156', '2025-10-11 18:52:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (742, 257, 20, 30, 157, 'PROCESS', '经专家评估，该事件属于系统性问题，建议从制度层面进行改进。', 'MEDICATION', 2, 0, NULL, '2025-10-13 22:52:00', '157', '2025-10-13 22:52:00', '157', '2025-10-13 22:52:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (743, 257, 30, 50, 158, 'PROCESS', '同意职能部门处理意见，要求相关科室认真落实整改措施。', NULL, NULL, NULL, NULL, '2025-10-14 22:52:00', '158', '2025-10-14 22:52:00', '158', '2025-10-14 22:52:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (744, 258, 0, 20, 155, 'SUBMIT', NULL, NULL, NULL, NULL, NULL, '2025-10-01 13:51:00', '155', '2025-10-01 13:51:00', '155', '2025-10-01 13:51:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (745, 258, 20, 50, 157, 'PROCESS', '经专家评估，该事件属于系统性问题，建议从制度层面进行改进。', 'ENVIRONMENT', 4, 0, NULL, '2025-10-04 15:51:00', '157', '2025-10-04 15:51:00', '157', '2025-10-04 15:51:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (746, 259, 0, 20, 154, 'SUBMIT', NULL, NULL, NULL, NULL, NULL, '2025-10-08 18:34:00', '154', '2025-10-08 18:34:00', '154', '2025-10-08 18:34:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (747, 259, 20, 60, 157, 'RETURN', '报告内容不完整，缺少关键信息，请补充后重新提交。', NULL, NULL, NULL, NULL, '2025-10-16 02:34:00', '157', '2025-10-16 02:34:00', '157', '2025-10-16 02:34:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (748, 260, 0, 10, 155, 'SUBMIT', NULL, NULL, NULL, NULL, NULL, '2025-10-06 12:07:00', '155', '2025-10-06 12:07:00', '155', '2025-10-06 12:07:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (749, 260, 10, 20, 156, 'PROCESS', '经科室讨论，认为该事件属于操作流程不规范导致，已对相关人员进行培训。', NULL, NULL, NULL, 205, '2025-10-10 17:07:00', '156', '2025-10-10 17:07:00', '156', '2025-10-10 17:07:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (750, 260, 20, 80, 157, 'NOT_TRUE', '经调查核实，该事件举报内容不属实，相关情况说明已存档。', NULL, NULL, NULL, NULL, '2025-10-12 21:07:00', '157', '2025-10-12 21:07:00', '157', '2025-10-12 21:07:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (751, 261, 0, 10, 154, 'SUBMIT', NULL, NULL, NULL, NULL, NULL, '2025-11-27 15:44:00', '154', '2025-11-27 15:44:00', '154', '2025-11-27 15:44:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (752, 261, 10, 20, 156, 'PROCESS', '经科室讨论，认为该事件属于操作流程不规范导致，已对相关人员进行培训。', NULL, NULL, NULL, 205, '2025-11-30 21:44:00', '156', '2025-11-30 21:44:00', '156', '2025-11-30 21:44:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (753, 261, 20, 50, 157, 'PROCESS', '经职能部门调查评估，认定事件原因为PROCESS，损害程度为1。已制定改进方案。', 'PROCESS', 1, 0, NULL, '2025-12-06 05:44:00', '157', '2025-12-06 05:44:00', '157', '2025-12-06 05:44:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (754, 262, 0, 10, 155, 'SUBMIT', NULL, NULL, NULL, NULL, NULL, '2025-11-05 13:54:00', '155', '2025-11-05 13:54:00', '155', '2025-11-05 13:54:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (755, 262, 10, 20, 156, 'PROCESS', '经科室讨论，认为该事件属于操作流程不规范导致，已对相关人员进行培训。', NULL, NULL, NULL, 205, '2025-11-09 15:54:00', '156', '2025-11-09 15:54:00', '156', '2025-11-09 15:54:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (756, 262, 20, 80, 157, 'NOT_TRUE', '经调查核实，该事件举报内容不属实，相关情况说明已存档。', NULL, NULL, NULL, NULL, '2025-11-16 19:54:00', '157', '2025-11-16 19:54:00', '157', '2025-11-16 19:54:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (757, 263, 0, 10, 154, 'SUBMIT', NULL, NULL, NULL, NULL, NULL, '2025-11-03 13:55:00', '154', '2025-11-03 13:55:00', '154', '2025-11-03 13:55:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (758, 263, 10, 20, 156, 'PROCESS', '科室已对相关流程进行优化，增加了核查环节，防止类似事件再次发生。', NULL, NULL, NULL, 207, '2025-11-08 19:55:00', '156', '2025-11-08 19:55:00', '156', '2025-11-08 19:55:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (759, 263, 20, 50, 157, 'PROCESS', '经调查核实，事件处理及时有效，未造成严重后果。建议纳入科室质量改进计划。', 'ENVIRONMENT', 1, 0, NULL, '2025-11-11 22:55:00', '157', '2025-11-11 22:55:00', '157', '2025-11-11 22:55:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (760, 264, 0, 10, 155, 'SUBMIT', NULL, NULL, NULL, NULL, NULL, '2025-11-21 13:12:00', '155', '2025-11-21 13:12:00', '155', '2025-11-21 13:12:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (761, 264, 10, 20, 156, 'PROCESS', '经科室讨论，认为该事件属于操作流程不规范导致，已对相关人员进行培训。', NULL, NULL, NULL, 206, '2025-11-22 21:12:00', '156', '2025-11-22 21:12:00', '156', '2025-11-22 21:12:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (762, 264, 20, 50, 157, 'PROCESS', '已完成事件定性定级，事件级别为3级，建议按流程继续上报处理。', 'EQUIPMENT', 2, 1, NULL, '2025-11-28 01:12:00', '157', '2025-11-28 01:12:00', '157', '2025-11-28 01:12:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (763, 265, 0, 10, 154, 'SUBMIT', NULL, NULL, NULL, NULL, NULL, '2025-11-23 17:44:00', '154', '2025-11-23 17:44:00', '154', '2025-11-23 17:44:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (764, 265, 10, 20, 156, 'PROCESS', '科室已对相关流程进行优化，增加了核查环节，防止类似事件再次发生。', NULL, NULL, NULL, 208, '2025-11-26 21:44:00', '156', '2025-11-26 21:44:00', '156', '2025-11-26 21:44:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (765, 266, 0, 20, 155, 'SUBMIT', NULL, NULL, NULL, NULL, NULL, '2025-11-05 14:05:00', '155', '2025-11-05 14:05:00', '155', '2025-11-05 14:05:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (766, 266, 20, 50, 157, 'PROCESS', '已完成事件调查，确认事件属实。建议加强操作规范方面的管理和培训。', 'ENVIRONMENT', 2, 0, NULL, '2025-11-11 19:05:00', '157', '2025-11-11 19:05:00', '157', '2025-11-11 19:05:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (767, 267, 0, 10, 155, 'SUBMIT', NULL, NULL, NULL, NULL, NULL, '2025-11-01 12:32:00', '155', '2025-11-01 12:32:00', '155', '2025-11-01 12:32:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (768, 267, 10, 20, 156, 'PROCESS', '科室已对相关流程进行优化，增加了核查环节，防止类似事件再次发生。', NULL, NULL, NULL, 205, '2025-11-06 19:32:00', '156', '2025-11-06 19:32:00', '156', '2025-11-06 19:32:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (769, 267, 20, 30, 157, 'PROCESS', '已完成事件定性定级，事件级别为2级，建议按流程继续上报处理。', 'EQUIPMENT', 1, 0, NULL, '2025-11-14 02:32:00', '157', '2025-11-14 02:32:00', '157', '2025-11-14 02:32:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (770, 267, 30, 50, 158, 'PROCESS', '已审阅事件报告，同意处理意见。要求质控办持续跟踪整改效果。', NULL, NULL, NULL, NULL, '2025-11-16 05:32:00', '158', '2025-11-16 05:32:00', '158', '2025-11-16 05:32:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (771, 268, 0, 10, 154, 'SUBMIT', NULL, NULL, NULL, NULL, NULL, '2025-11-12 16:30:00', '154', '2025-11-12 16:30:00', '154', '2025-11-12 16:30:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (772, 268, 10, 20, 156, 'PROCESS', '经科室讨论，认为该事件属于操作流程不规范导致，已对相关人员进行培训。', NULL, NULL, NULL, 205, '2025-11-13 17:30:00', '156', '2025-11-13 17:30:00', '156', '2025-11-13 17:30:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (773, 268, 20, 50, 157, 'PROCESS', '已完成事件调查，确认事件属实。建议加强操作规范方面的管理和培训。', 'HUMAN', 1, 0, NULL, '2025-11-18 18:30:00', '157', '2025-11-18 18:30:00', '157', '2025-11-18 18:30:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (774, 269, 0, 20, 154, 'SUBMIT', NULL, NULL, NULL, NULL, NULL, '2025-11-03 13:35:00', '154', '2025-11-03 13:35:00', '154', '2025-11-03 13:35:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (775, 269, 20, 30, 157, 'PROCESS', '已完成事件定性定级，事件级别为2级，建议按流程继续上报处理。', 'PROCESS', 2, 1, NULL, '2025-11-09 19:35:00', '157', '2025-11-09 19:35:00', '157', '2025-11-09 19:35:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (776, 269, 30, 50, 158, 'PROCESS', '已审阅事件报告，同意处理意见。要求质控办持续跟踪整改效果。', NULL, NULL, NULL, NULL, '2025-11-11 00:35:00', '158', '2025-11-11 00:35:00', '158', '2025-11-11 00:35:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (777, 270, 0, 10, 154, 'SUBMIT', NULL, NULL, NULL, NULL, NULL, '2025-11-20 14:27:00', '154', '2025-11-20 14:27:00', '154', '2025-11-20 14:27:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (778, 270, 10, 20, 156, 'PROCESS', '经科室调查，事件原因为设备因素，已联系设备科进行检修维护。', NULL, NULL, NULL, 205, '2025-11-22 14:27:00', '156', '2025-11-22 14:27:00', '156', '2025-11-22 14:27:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (779, 270, 20, 50, 157, 'PROCESS', '经专家评估，该事件属于系统性问题，建议从制度层面进行改进。', 'PROCESS', 2, 1, NULL, '2025-11-29 18:27:00', '157', '2025-11-29 18:27:00', '157', '2025-11-29 18:27:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (780, 271, 0, 10, 155, 'SUBMIT', NULL, NULL, NULL, NULL, NULL, '2025-12-13 18:00:00', '155', '2025-12-13 18:00:00', '155', '2025-12-13 18:00:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (781, 271, 10, 20, 156, 'PROCESS', '科室已对事件进行初步分析，认为需要职能部门进一步评估处理。', NULL, NULL, NULL, 208, '2025-12-14 22:00:00', '156', '2025-12-14 22:00:00', '156', '2025-12-14 22:00:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (782, 271, 20, 30, 157, 'PROCESS', '经专家评估，该事件属于系统性问题，建议从制度层面进行改进。', 'HUMAN', 0, 0, NULL, '2025-12-21 06:00:00', '157', '2025-12-21 06:00:00', '157', '2025-12-21 06:00:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (783, 271, 30, 40, 158, 'TO_COMMITTEE', '已审阅事件报告，同意处理意见。要求质控办持续跟踪整改效果。', NULL, NULL, NULL, NULL, '2025-12-22 07:00:00', '158', '2025-12-22 07:00:00', '158', '2025-12-22 07:00:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (784, 272, 0, 20, 155, 'SUBMIT', NULL, NULL, NULL, NULL, NULL, '2025-12-21 12:15:00', '155', '2025-12-21 12:15:00', '155', '2025-12-21 12:15:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (785, 272, 20, 30, 157, 'PROCESS', '已完成事件调查，确认事件属实。建议加强操作规范方面的管理和培训。', 'EQUIPMENT', 1, 0, NULL, '2025-12-26 12:15:00', '157', '2025-12-26 12:15:00', '157', '2025-12-26 12:15:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (786, 272, 30, 50, 158, 'PROCESS', '已审阅事件报告，同意处理意见。要求质控办持续跟踪整改效果。', NULL, NULL, NULL, NULL, '2025-12-28 17:15:00', '158', '2025-12-28 17:15:00', '158', '2025-12-28 17:15:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (787, 273, 0, 10, 155, 'SUBMIT', NULL, NULL, NULL, NULL, NULL, '2025-12-15 08:45:00', '155', '2025-12-15 08:45:00', '155', '2025-12-15 08:45:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (788, 273, 10, 20, 156, 'PROCESS', '经科室讨论，认为该事件属于操作流程不规范导致，已对相关人员进行培训。', NULL, NULL, NULL, 205, '2025-12-19 15:45:00', '156', '2025-12-19 15:45:00', '156', '2025-12-19 15:45:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (789, 273, 20, 80, 157, 'NOT_TRUE', '经调查核实，该事件举报内容不属实，相关情况说明已存档。', NULL, NULL, NULL, NULL, '2025-12-26 17:45:00', '157', '2025-12-26 17:45:00', '157', '2025-12-26 17:45:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (790, 274, 0, 10, 155, 'SUBMIT', NULL, NULL, NULL, NULL, NULL, '2025-12-18 15:03:00', '155', '2025-12-18 15:03:00', '155', '2025-12-18 15:03:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (791, 274, 10, 20, 156, 'PROCESS', '科室已对相关流程进行优化，增加了核查环节，防止类似事件再次发生。', NULL, NULL, NULL, 205, '2025-12-20 22:03:00', '156', '2025-12-20 22:03:00', '156', '2025-12-20 22:03:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (792, 274, 20, 50, 157, 'PROCESS', '已完成事件定性定级，事件级别为3级，建议按流程继续上报处理。', 'MEDICATION', 2, 0, NULL, '2025-12-25 05:03:00', '157', '2025-12-25 05:03:00', '157', '2025-12-25 05:03:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (793, 275, 0, 10, 154, 'SUBMIT', NULL, NULL, NULL, NULL, NULL, '2025-12-10 09:54:00', '154', '2025-12-10 09:54:00', '154', '2025-12-10 09:54:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (794, 275, 10, 20, 156, 'PROCESS', '科室已对事件进行初步分析，认为需要职能部门进一步评估处理。', NULL, NULL, NULL, 207, '2025-12-11 17:54:00', '156', '2025-12-11 17:54:00', '156', '2025-12-11 17:54:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (795, 275, 20, 50, 157, 'PROCESS', '经调查核实，事件处理及时有效，未造成严重后果。建议纳入科室质量改进计划。', 'OTHER', 4, 0, NULL, '2025-12-17 22:54:00', '157', '2025-12-17 22:54:00', '157', '2025-12-17 22:54:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (796, 276, 0, 10, 154, 'SUBMIT', NULL, NULL, NULL, NULL, NULL, '2025-12-02 14:22:00', '154', '2025-12-02 14:22:00', '154', '2025-12-02 14:22:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (797, 276, 10, 20, 156, 'PROCESS', '科室已对相关流程进行优化，增加了核查环节，防止类似事件再次发生。', NULL, NULL, NULL, 207, '2025-12-03 17:22:00', '156', '2025-12-03 17:22:00', '156', '2025-12-03 17:22:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (798, 276, 20, 50, 157, 'PROCESS', '经专家评估，该事件属于系统性问题，建议从制度层面进行改进。', 'MEDICATION', 0, 0, NULL, '2025-12-10 22:22:00', '157', '2025-12-10 22:22:00', '157', '2025-12-10 22:22:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (799, 277, 0, 10, 154, 'SUBMIT', NULL, NULL, NULL, NULL, NULL, '2025-12-18 13:56:00', '154', '2025-12-18 13:56:00', '154', '2025-12-18 13:56:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (800, 277, 10, 20, 156, 'PROCESS', '经科室讨论，认为该事件属于操作流程不规范导致，已对相关人员进行培训。', NULL, NULL, NULL, 205, '2025-12-20 17:56:00', '156', '2025-12-20 17:56:00', '156', '2025-12-20 17:56:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (801, 277, 20, 50, 157, 'PROCESS', '经调查核实，事件处理及时有效，未造成严重后果。建议纳入科室质量改进计划。', 'EQUIPMENT', 1, 1, NULL, '2025-12-24 23:56:00', '157', '2025-12-24 23:56:00', '157', '2025-12-24 23:56:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (802, 278, 0, 10, 155, 'SUBMIT', NULL, NULL, NULL, NULL, NULL, '2025-12-30 10:02:00', '155', '2025-12-30 10:02:00', '155', '2025-12-30 10:02:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (803, 278, 10, 20, 156, 'PROCESS', '经科室调查，事件原因为设备因素，已联系设备科进行检修维护。', NULL, NULL, NULL, 206, '2026-01-01 16:02:00', '156', '2026-01-01 16:02:00', '156', '2026-01-01 16:02:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (804, 278, 20, 70, 157, 'VOID', '经核实，该事件不属于不良事件范畴，予以作废。', NULL, NULL, NULL, NULL, '2026-01-07 17:02:00', '157', '2026-01-07 17:02:00', '157', '2026-01-07 17:02:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (805, 279, 0, 20, 155, 'SUBMIT', NULL, NULL, NULL, NULL, NULL, '2025-12-09 14:36:00', '155', '2025-12-09 14:36:00', '155', '2025-12-09 14:36:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (806, 279, 20, 50, 157, 'PROCESS', '经职能部门调查评估，认定事件原因为HUMAN，损害程度为2。已制定改进方案。', 'HUMAN', 2, 0, NULL, '2025-12-13 19:36:00', '157', '2025-12-13 19:36:00', '157', '2025-12-13 19:36:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (807, 280, 0, 10, 155, 'SUBMIT', NULL, NULL, NULL, NULL, NULL, '2025-12-01 14:00:00', '155', '2025-12-01 14:00:00', '155', '2025-12-01 14:00:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (808, 280, 10, 20, 156, 'PROCESS', '经科室讨论，已制定整改措施并落实到人，限期整改完成。', NULL, NULL, NULL, 206, '2025-12-05 15:00:00', '156', '2025-12-05 15:00:00', '156', '2025-12-05 15:00:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (809, 280, 20, 50, 157, 'PROCESS', '已完成事件定性定级，事件级别为3级，建议按流程继续上报处理。', 'HUMAN', 1, 0, NULL, '2025-12-08 20:00:00', '157', '2025-12-08 20:00:00', '157', '2025-12-08 20:00:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (810, 281, 0, 10, 154, 'SUBMIT', NULL, NULL, NULL, NULL, NULL, '2026-01-24 15:04:00', '154', '2026-01-24 15:04:00', '154', '2026-01-24 15:04:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (811, 281, 10, 20, 156, 'PROCESS', '科室已对相关流程进行优化，增加了核查环节，防止类似事件再次发生。', NULL, NULL, NULL, 205, '2026-01-27 18:04:00', '156', '2026-01-27 18:04:00', '156', '2026-01-27 18:04:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (812, 281, 20, 30, 157, 'PROCESS', '经职能部门调查评估，认定事件原因为EQUIPMENT，损害程度为0。已制定改进方案。', 'EQUIPMENT', 0, 0, NULL, '2026-01-31 20:04:00', '157', '2026-01-31 20:04:00', '157', '2026-01-31 20:04:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (813, 281, 30, 50, 158, 'PROCESS', '该事件性质严重，同意提交质量委员会讨论，制定系统性改进方案。', NULL, NULL, NULL, NULL, '2026-02-03 20:04:00', '158', '2026-02-03 20:04:00', '158', '2026-02-03 20:04:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (814, 282, 0, 20, 154, 'SUBMIT', NULL, NULL, NULL, NULL, NULL, '2026-01-10 16:54:00', '154', '2026-01-10 16:54:00', '154', '2026-01-10 16:54:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (815, 282, 20, 50, 157, 'PROCESS', '经调查核实，事件处理及时有效，未造成严重后果。建议纳入科室质量改进计划。', 'HUMAN', 0, 1, NULL, '2026-01-12 23:54:00', '157', '2026-01-12 23:54:00', '157', '2026-01-12 23:54:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (816, 283, 0, 10, 155, 'SUBMIT', NULL, NULL, NULL, NULL, NULL, '2026-01-23 11:17:00', '155', '2026-01-23 11:17:00', '155', '2026-01-23 11:17:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (817, 283, 10, 20, 156, 'PROCESS', '经科室调查，事件原因为设备因素，已联系设备科进行检修维护。', NULL, NULL, NULL, 205, '2026-01-27 19:17:00', '156', '2026-01-27 19:17:00', '156', '2026-01-27 19:17:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (818, 283, 20, 50, 157, 'PROCESS', '已完成事件定性定级，事件级别为3级，建议按流程继续上报处理。', 'EQUIPMENT', 2, 1, NULL, '2026-01-31 00:17:00', '157', '2026-01-31 00:17:00', '157', '2026-01-31 00:17:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (819, 284, 0, 10, 155, 'SUBMIT', NULL, NULL, NULL, NULL, NULL, '2026-01-16 17:58:00', '155', '2026-01-16 17:58:00', '155', '2026-01-16 17:58:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (820, 284, 10, 20, 156, 'PROCESS', '科室已对事件进行初步分析，认为需要职能部门进一步评估处理。', NULL, NULL, NULL, 205, '2026-01-21 21:58:00', '156', '2026-01-21 21:58:00', '156', '2026-01-21 21:58:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (821, 284, 20, 30, 157, 'PROCESS', '经调查核实，事件处理及时有效，未造成严重后果。建议纳入科室质量改进计划。', 'HUMAN', 2, 0, NULL, '2026-01-24 22:58:00', '157', '2026-01-24 22:58:00', '157', '2026-01-24 22:58:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (822, 284, 30, 50, 158, 'PROCESS', '同意职能部门处理意见，要求相关科室认真落实整改措施。', NULL, NULL, NULL, NULL, '2026-01-27 01:58:00', '158', '2026-01-27 01:58:00', '158', '2026-01-27 01:58:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (823, 285, 0, 20, 155, 'SUBMIT', NULL, NULL, NULL, NULL, NULL, '2026-01-08 18:28:00', '155', '2026-01-08 18:28:00', '155', '2026-01-08 18:28:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (824, 285, 20, 50, 157, 'PROCESS', '经职能部门调查评估，认定事件原因为PROCESS，损害程度为2。已制定改进方案。', 'PROCESS', 2, 1, NULL, '2026-01-14 02:28:00', '157', '2026-01-14 02:28:00', '157', '2026-01-14 02:28:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (825, 286, 0, 10, 155, 'SUBMIT', NULL, NULL, NULL, NULL, NULL, '2026-01-20 08:14:00', '155', '2026-01-20 08:14:00', '155', '2026-01-20 08:14:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (826, 286, 10, 20, 156, 'PROCESS', '科室已对相关流程进行优化，增加了核查环节，防止类似事件再次发生。', NULL, NULL, NULL, 205, '2026-01-23 08:14:00', '156', '2026-01-23 08:14:00', '156', '2026-01-23 08:14:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (827, 286, 20, 50, 157, 'PROCESS', '已完成事件定性定级，事件级别为4级，建议按流程继续上报处理。', 'MEDICATION', 3, 0, NULL, '2026-01-25 13:14:00', '157', '2026-01-25 13:14:00', '157', '2026-01-25 13:14:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (828, 287, 0, 20, 154, 'SUBMIT', NULL, NULL, NULL, NULL, NULL, '2026-01-15 13:11:00', '154', '2026-01-15 13:11:00', '154', '2026-01-15 13:11:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (829, 287, 20, 50, 157, 'PROCESS', '经调查核实，事件处理及时有效，未造成严重后果。建议纳入科室质量改进计划。', 'MEDICATION', 2, 0, NULL, '2026-01-17 14:11:00', '157', '2026-01-17 14:11:00', '157', '2026-01-17 14:11:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (830, 288, 0, 20, 155, 'SUBMIT', NULL, NULL, NULL, NULL, NULL, '2026-01-10 18:30:00', '155', '2026-01-10 18:30:00', '155', '2026-01-10 18:30:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (831, 288, 20, 50, 157, 'PROCESS', '经职能部门调查评估，认定事件原因为ENVIRONMENT，损害程度为3。已制定改进方案。', 'ENVIRONMENT', 3, 1, NULL, '2026-01-17 22:30:00', '157', '2026-01-17 22:30:00', '157', '2026-01-17 22:30:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (832, 289, 0, 10, 155, 'SUBMIT', NULL, NULL, NULL, NULL, NULL, '2026-01-17 12:15:00', '155', '2026-01-17 12:15:00', '155', '2026-01-17 12:15:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (833, 289, 10, 20, 156, 'PROCESS', '科室已对事件进行初步分析，认为需要职能部门进一步评估处理。', NULL, NULL, NULL, 205, '2026-01-20 15:15:00', '156', '2026-01-20 15:15:00', '156', '2026-01-20 15:15:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (834, 289, 20, 80, 157, 'NOT_TRUE', '经调查核实，该事件举报内容不属实，相关情况说明已存档。', NULL, NULL, NULL, NULL, '2026-01-23 18:15:00', '157', '2026-01-23 18:15:00', '157', '2026-01-23 18:15:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (835, 290, 0, 10, 154, 'SUBMIT', NULL, NULL, NULL, NULL, NULL, '2026-01-30 14:34:00', '154', '2026-01-30 14:34:00', '154', '2026-01-30 14:34:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (836, 290, 10, 20, 156, 'PROCESS', '科室已对事件进行初步分析，认为需要职能部门进一步评估处理。', NULL, NULL, NULL, 205, '2026-02-02 22:34:00', '156', '2026-02-02 22:34:00', '156', '2026-02-02 22:34:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (837, 290, 20, 80, 157, 'NOT_TRUE', '经调查核实，该事件举报内容不属实，相关情况说明已存档。', NULL, NULL, NULL, NULL, '2026-02-07 23:34:00', '157', '2026-02-07 23:34:00', '157', '2026-02-07 23:34:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (838, 291, 0, 10, 154, 'SUBMIT', NULL, NULL, NULL, NULL, NULL, '2026-01-12 16:27:00', '154', '2026-01-12 16:27:00', '154', '2026-01-12 16:27:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (839, 291, 10, 20, 156, 'PROCESS', '科室已对事件进行初步分析，认为需要职能部门进一步评估处理。', NULL, NULL, NULL, 208, '2026-01-14 18:27:00', '156', '2026-01-14 18:27:00', '156', '2026-01-14 18:27:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (840, 291, 20, 80, 157, 'NOT_TRUE', '经调查核实，该事件举报内容不属实，相关情况说明已存档。', NULL, NULL, NULL, NULL, '2026-01-16 18:27:00', '157', '2026-01-16 18:27:00', '157', '2026-01-16 18:27:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (841, 292, 0, 20, 155, 'SUBMIT', NULL, NULL, NULL, NULL, NULL, '2026-02-11 18:35:00', '155', '2026-02-11 18:35:00', '155', '2026-02-11 18:35:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (842, 292, 20, 50, 157, 'PROCESS', '经调查核实，事件处理及时有效，未造成严重后果。建议纳入科室质量改进计划。', 'PROCESS', 2, 1, NULL, '2026-02-18 02:35:00', '157', '2026-02-18 02:35:00', '157', '2026-02-18 02:35:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (843, 293, 0, 10, 155, 'SUBMIT', NULL, NULL, NULL, NULL, NULL, '2026-02-28 18:40:00', '155', '2026-02-28 18:40:00', '155', '2026-02-28 18:40:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (844, 293, 10, 20, 156, 'PROCESS', '科室已对事件进行初步分析，认为需要职能部门进一步评估处理。', NULL, NULL, NULL, 205, '2026-03-03 02:40:00', '156', '2026-03-03 02:40:00', '156', '2026-03-03 02:40:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (845, 293, 20, 50, 157, 'PROCESS', '经专家评估，该事件属于系统性问题，建议从制度层面进行改进。', 'EQUIPMENT', 1, 1, NULL, '2026-03-09 07:40:00', '157', '2026-03-09 07:40:00', '157', '2026-03-09 07:40:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (846, 294, 0, 20, 155, 'SUBMIT', NULL, NULL, NULL, NULL, NULL, '2026-02-05 10:16:00', '155', '2026-02-05 10:16:00', '155', '2026-02-05 10:16:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (847, 294, 20, 50, 157, 'PROCESS', '经调查核实，事件处理及时有效，未造成严重后果。建议纳入科室质量改进计划。', 'HUMAN', 1, 0, NULL, '2026-02-12 14:16:00', '157', '2026-02-12 14:16:00', '157', '2026-02-12 14:16:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (848, 295, 0, 10, 154, 'SUBMIT', NULL, NULL, NULL, NULL, NULL, '2026-02-21 08:07:00', '154', '2026-02-21 08:07:00', '154', '2026-02-21 08:07:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (849, 296, 0, 20, 154, 'SUBMIT', NULL, NULL, NULL, NULL, NULL, '2026-02-13 14:35:00', '154', '2026-02-13 14:35:00', '154', '2026-02-13 14:35:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (850, 296, 20, 30, 157, 'PROCESS', '经调查核实，事件处理及时有效，未造成严重后果。建议纳入科室质量改进计划。', 'PROCESS', 0, 1, NULL, '2026-02-15 18:35:00', '157', '2026-02-15 18:35:00', '157', '2026-02-15 18:35:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (851, 296, 30, 50, 158, 'PROCESS', '同意按流程处理，要求举一反三，在全院范围内开展安全教育。', NULL, NULL, NULL, NULL, '2026-02-19 02:35:00', '158', '2026-02-19 02:35:00', '158', '2026-02-19 02:35:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (852, 297, 0, 10, 154, 'SUBMIT', NULL, NULL, NULL, NULL, NULL, '2026-02-08 11:45:00', '154', '2026-02-08 11:45:00', '154', '2026-02-08 11:45:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (853, 297, 10, 20, 156, 'PROCESS', '经科室讨论，已制定整改措施并落实到人，限期整改完成。', NULL, NULL, NULL, 208, '2026-02-10 11:45:00', '156', '2026-02-10 11:45:00', '156', '2026-02-10 11:45:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (854, 297, 20, 50, 157, 'PROCESS', '经职能部门调查评估，认定事件原因为MEDICATION，损害程度为1。已制定改进方案。', 'MEDICATION', 1, 1, NULL, '2026-02-17 11:45:00', '157', '2026-02-17 11:45:00', '157', '2026-02-17 11:45:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (855, 298, 0, 20, 154, 'SUBMIT', NULL, NULL, NULL, NULL, NULL, '2026-02-20 16:33:00', '154', '2026-02-20 16:33:00', '154', '2026-02-20 16:33:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (856, 298, 20, 50, 157, 'PROCESS', '已完成事件定性定级，事件级别为4级，建议按流程继续上报处理。', 'HUMAN', 3, 0, NULL, '2026-02-22 17:33:00', '157', '2026-02-22 17:33:00', '157', '2026-02-22 17:33:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (857, 299, 0, 10, 154, 'SUBMIT', NULL, NULL, NULL, NULL, NULL, '2026-02-01 11:26:00', '154', '2026-02-01 11:26:00', '154', '2026-02-01 11:26:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (858, 299, 10, 20, 156, 'PROCESS', '科室已对相关流程进行优化，增加了核查环节，防止类似事件再次发生。', NULL, NULL, NULL, 206, '2026-02-03 18:26:00', '156', '2026-02-03 18:26:00', '156', '2026-02-03 18:26:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (859, 299, 20, 30, 157, 'PROCESS', '经专家评估，该事件属于系统性问题，建议从制度层面进行改进。', 'HUMAN', 3, 1, NULL, '2026-02-07 22:26:00', '157', '2026-02-07 22:26:00', '157', '2026-02-07 22:26:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (860, 299, 30, 50, 158, 'PROCESS', '同意职能部门处理意见，要求相关科室认真落实整改措施。', NULL, NULL, NULL, NULL, '2026-02-10 06:26:00', '158', '2026-02-10 06:26:00', '158', '2026-02-10 06:26:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (861, 300, 0, 10, 154, 'SUBMIT', NULL, NULL, NULL, NULL, NULL, '2026-02-20 09:07:00', '154', '2026-02-20 09:07:00', '154', '2026-02-20 09:07:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (862, 300, 10, 20, 156, 'PROCESS', '经科室讨论，认为该事件属于操作流程不规范导致，已对相关人员进行培训。', NULL, NULL, NULL, 207, '2026-02-24 11:07:00', '156', '2026-02-24 11:07:00', '156', '2026-02-24 11:07:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (863, 300, 20, 50, 157, 'PROCESS', '经职能部门调查评估，认定事件原因为HUMAN，损害程度为1。已制定改进方案。', 'HUMAN', 1, 0, NULL, '2026-03-03 18:07:00', '157', '2026-03-03 18:07:00', '157', '2026-03-03 18:07:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (864, 301, 0, 10, 154, 'SUBMIT', NULL, NULL, NULL, NULL, NULL, '2026-02-23 18:54:00', '154', '2026-02-23 18:54:00', '154', '2026-02-23 18:54:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (865, 301, 10, 20, 156, 'PROCESS', '经科室讨论，已制定整改措施并落实到人，限期整改完成。', NULL, NULL, NULL, 205, '2026-02-27 01:54:00', '156', '2026-02-27 01:54:00', '156', '2026-02-27 01:54:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (866, 301, 20, 60, 157, 'RETURN', '报告内容不完整，缺少关键信息，请补充后重新提交。', NULL, NULL, NULL, NULL, '2026-03-02 04:54:00', '157', '2026-03-02 04:54:00', '157', '2026-03-02 04:54:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (867, 302, 0, 10, 155, 'SUBMIT', NULL, NULL, NULL, NULL, NULL, '2026-02-17 17:34:00', '155', '2026-02-17 17:34:00', '155', '2026-02-17 17:34:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (868, 302, 10, 20, 156, 'PROCESS', '科室已对事件进行初步分析，认为需要职能部门进一步评估处理。', NULL, NULL, NULL, 205, '2026-02-22 21:34:00', '156', '2026-02-22 21:34:00', '156', '2026-02-22 21:34:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (869, 302, 20, 50, 157, 'PROCESS', '经专家评估，该事件属于系统性问题，建议从制度层面进行改进。', 'PROCESS', 1, 0, NULL, '2026-02-27 23:34:00', '157', '2026-02-27 23:34:00', '157', '2026-02-27 23:34:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (870, 303, 0, 10, 155, 'SUBMIT', NULL, NULL, NULL, NULL, NULL, '2026-02-06 09:00:00', '155', '2026-02-06 09:00:00', '155', '2026-02-06 09:00:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (871, 303, 10, 20, 156, 'PROCESS', '经科室讨论，已制定整改措施并落实到人，限期整改完成。', NULL, NULL, NULL, 205, '2026-02-09 16:00:00', '156', '2026-02-09 16:00:00', '156', '2026-02-09 16:00:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (872, 303, 20, 70, 157, 'VOID', '经核实，该事件不属于不良事件范畴，予以作废。', NULL, NULL, NULL, NULL, '2026-02-11 17:00:00', '157', '2026-02-11 17:00:00', '157', '2026-02-11 17:00:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (873, 304, 0, 10, 154, 'SUBMIT', NULL, NULL, NULL, NULL, NULL, '2026-03-05 10:04:00', '154', '2026-03-05 10:04:00', '154', '2026-03-05 10:04:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (874, 304, 10, 20, 156, 'PROCESS', '经科室讨论，已制定整改措施并落实到人，限期整改完成。', NULL, NULL, NULL, 205, '2026-03-06 15:04:00', '156', '2026-03-06 15:04:00', '156', '2026-03-06 15:04:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (875, 304, 20, 50, 157, 'PROCESS', '经专家评估，该事件属于系统性问题，建议从制度层面进行改进。', 'OTHER', 1, 1, NULL, '2026-03-11 17:04:00', '157', '2026-03-11 17:04:00', '157', '2026-03-11 17:04:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (876, 305, 0, 10, 155, 'SUBMIT', NULL, NULL, NULL, NULL, NULL, '2026-03-06 09:18:00', '155', '2026-03-06 09:18:00', '155', '2026-03-06 09:18:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (877, 305, 10, 20, 156, 'PROCESS', '科室已对相关流程进行优化，增加了核查环节，防止类似事件再次发生。', NULL, NULL, NULL, 205, '2026-03-09 11:18:00', '156', '2026-03-09 11:18:00', '156', '2026-03-09 11:18:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (878, 305, 20, 50, 157, 'PROCESS', '经职能部门调查评估，认定事件原因为MEDICATION，损害程度为0。已制定改进方案。', 'MEDICATION', 0, 1, NULL, '2026-03-11 17:18:00', '157', '2026-03-11 17:18:00', '157', '2026-03-11 17:18:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (879, 306, 0, 10, 154, 'SUBMIT', NULL, NULL, NULL, NULL, NULL, '2026-03-11 14:07:00', '154', '2026-03-11 14:07:00', '154', '2026-03-11 14:07:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (880, 306, 10, 20, 156, 'PROCESS', '科室已对事件进行初步分析，认为需要职能部门进一步评估处理。', NULL, NULL, NULL, 205, '2026-03-16 15:07:00', '156', '2026-03-16 15:07:00', '156', '2026-03-16 15:07:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (881, 306, 20, 50, 157, 'PROCESS', '已完成事件定性定级，事件级别为3级，建议按流程继续上报处理。', 'EQUIPMENT', 2, 0, NULL, '2026-03-22 22:07:00', '157', '2026-03-22 22:07:00', '157', '2026-03-22 22:07:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (882, 307, 0, 10, 154, 'SUBMIT', NULL, NULL, NULL, NULL, NULL, '2026-03-28 16:09:00', '154', '2026-03-28 16:09:00', '154', '2026-03-28 16:09:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (883, 307, 10, 20, 156, 'PROCESS', '科室已对相关流程进行优化，增加了核查环节，防止类似事件再次发生。', NULL, NULL, NULL, 205, '2026-04-01 19:09:00', '156', '2026-04-01 19:09:00', '156', '2026-04-01 19:09:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (884, 307, 20, 50, 157, 'PROCESS', '已完成事件调查，确认事件属实。建议加强操作规范方面的管理和培训。', 'MEDICATION', 1, 0, NULL, '2026-04-05 03:09:00', '157', '2026-04-05 03:09:00', '157', '2026-04-05 03:09:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (885, 308, 0, 20, 155, 'SUBMIT', NULL, NULL, NULL, NULL, NULL, '2026-03-16 17:58:00', '155', '2026-03-16 17:58:00', '155', '2026-03-16 17:58:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (886, 308, 20, 50, 157, 'PROCESS', '经专家评估，该事件属于系统性问题，建议从制度层面进行改进。', 'ENVIRONMENT', 3, 0, NULL, '2026-03-21 18:58:00', '157', '2026-03-21 18:58:00', '157', '2026-03-21 18:58:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (887, 309, 0, 20, 155, 'SUBMIT', NULL, NULL, NULL, NULL, NULL, '2026-03-04 14:34:00', '155', '2026-03-04 14:34:00', '155', '2026-03-04 14:34:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (888, 309, 20, 50, 157, 'PROCESS', '已完成事件定性定级，事件级别为3级，建议按流程继续上报处理。', 'ENVIRONMENT', 2, 1, NULL, '2026-03-11 20:34:00', '157', '2026-03-11 20:34:00', '157', '2026-03-11 20:34:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (889, 310, 0, 10, 154, 'SUBMIT', NULL, NULL, NULL, NULL, NULL, '2026-03-17 17:02:00', '154', '2026-03-17 17:02:00', '154', '2026-03-17 17:02:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (890, 310, 10, 20, 156, 'PROCESS', '经科室调查，事件原因为设备因素，已联系设备科进行检修维护。', NULL, NULL, NULL, 206, '2026-03-21 01:02:00', '156', '2026-03-21 01:02:00', '156', '2026-03-21 01:02:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (891, 310, 20, 70, 157, 'VOID', '经核实，该事件不属于不良事件范畴，予以作废。', NULL, NULL, NULL, NULL, '2026-03-24 02:02:00', '157', '2026-03-24 02:02:00', '157', '2026-03-24 02:02:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (892, 311, 0, 20, 155, 'SUBMIT', NULL, NULL, NULL, NULL, NULL, '2026-03-02 09:04:00', '155', '2026-03-02 09:04:00', '155', '2026-03-02 09:04:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (893, 311, 20, 50, 157, 'PROCESS', '经职能部门调查评估，认定事件原因为PROCESS，损害程度为1。已制定改进方案。', 'PROCESS', 1, 0, NULL, '2026-03-09 16:04:00', '157', '2026-03-09 16:04:00', '157', '2026-03-09 16:04:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (894, 312, 0, 10, 154, 'SUBMIT', NULL, NULL, NULL, NULL, NULL, '2026-03-17 11:53:00', '154', '2026-03-17 11:53:00', '154', '2026-03-17 11:53:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (895, 312, 10, 20, 156, 'PROCESS', '科室已对事件进行初步分析，认为需要职能部门进一步评估处理。', NULL, NULL, NULL, 205, '2026-03-22 18:53:00', '156', '2026-03-22 18:53:00', '156', '2026-03-22 18:53:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (896, 312, 20, 60, 157, 'RETURN', '事件描述不够详细，请补充事件发生的经过、原因分析和已采取的措施。', NULL, NULL, NULL, NULL, '2026-03-28 19:53:00', '157', '2026-03-28 19:53:00', '157', '2026-03-28 19:53:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (897, 313, 0, 10, 155, 'SUBMIT', NULL, NULL, NULL, NULL, NULL, '2026-03-04 15:52:00', '155', '2026-03-04 15:52:00', '155', '2026-03-04 15:52:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (898, 313, 10, 20, 156, 'PROCESS', '经科室讨论，认为该事件属于操作流程不规范导致，已对相关人员进行培训。', NULL, NULL, NULL, 206, '2026-03-07 21:52:00', '156', '2026-03-07 21:52:00', '156', '2026-03-07 21:52:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (899, 313, 20, 30, 157, 'PROCESS', '经调查核实，事件处理及时有效，未造成严重后果。建议纳入科室质量改进计划。', 'MEDICATION', 2, 0, NULL, '2026-03-13 22:52:00', '157', '2026-03-13 22:52:00', '157', '2026-03-13 22:52:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (900, 314, 0, 10, 155, 'SUBMIT', NULL, NULL, NULL, NULL, NULL, '2026-03-31 13:47:00', '155', '2026-03-31 13:47:00', '155', '2026-03-31 13:47:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (901, 314, 10, 20, 156, 'PROCESS', '经科室讨论，已制定整改措施并落实到人，限期整改完成。', NULL, NULL, NULL, 208, '2026-04-04 18:47:00', '156', '2026-04-04 18:47:00', '156', '2026-04-04 18:47:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (902, 314, 20, 60, 157, 'RETURN', '报告内容不完整，缺少关键信息，请补充后重新提交。', NULL, NULL, NULL, NULL, '2026-04-11 18:47:00', '157', '2026-04-11 18:47:00', '157', '2026-04-11 18:47:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (903, 315, 0, 10, 155, 'SUBMIT', NULL, NULL, NULL, NULL, NULL, '2026-04-04 18:20:00', '155', '2026-04-04 18:20:00', '155', '2026-04-04 18:20:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (904, 315, 10, 20, 156, 'PROCESS', '经科室调查，事件原因为设备因素，已联系设备科进行检修维护。', NULL, NULL, NULL, 205, '2026-04-06 18:20:00', '156', '2026-04-06 18:20:00', '156', '2026-04-06 18:20:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (905, 315, 20, 50, 157, 'PROCESS', '已完成事件定性定级，事件级别为3级，建议按流程继续上报处理。', 'MEDICATION', 2, 0, NULL, '2026-04-13 20:20:00', '157', '2026-04-13 20:20:00', '157', '2026-04-13 20:20:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (906, 316, 0, 20, 155, 'SUBMIT', NULL, NULL, NULL, NULL, NULL, '2026-04-04 12:56:00', '155', '2026-04-04 12:56:00', '155', '2026-04-04 12:56:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (907, 316, 20, 30, 157, 'PROCESS', '经调查核实，事件处理及时有效，未造成严重后果。建议纳入科室质量改进计划。', 'ENVIRONMENT', 0, 0, NULL, '2026-04-08 18:56:00', '157', '2026-04-08 18:56:00', '157', '2026-04-08 18:56:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (908, 316, 30, 50, 158, 'PROCESS', '该事件性质严重，同意提交质量委员会讨论，制定系统性改进方案。', NULL, NULL, NULL, NULL, '2026-04-14 01:56:00', '158', '2026-04-14 01:56:00', '158', '2026-04-14 01:56:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (909, 317, 0, 10, 154, 'SUBMIT', NULL, NULL, NULL, NULL, NULL, '2026-04-25 15:35:00', '154', '2026-04-25 15:35:00', '154', '2026-04-25 15:35:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (910, 317, 10, 20, 156, 'PROCESS', '科室已对相关流程进行优化，增加了核查环节，防止类似事件再次发生。', NULL, NULL, NULL, 206, '2026-04-28 19:35:00', '156', '2026-04-28 19:35:00', '156', '2026-04-28 19:35:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (911, 317, 20, 50, 157, 'PROCESS', '已完成事件定性定级，事件级别为4级，建议按流程继续上报处理。', 'PROCESS', 1, 0, NULL, '2026-05-05 23:35:00', '157', '2026-05-05 23:35:00', '157', '2026-05-05 23:35:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (912, 318, 0, 10, 154, 'SUBMIT', NULL, NULL, NULL, NULL, NULL, '2026-04-25 11:06:00', '154', '2026-04-25 11:06:00', '154', '2026-04-25 11:06:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (913, 318, 10, 20, 156, 'PROCESS', '科室已对相关流程进行优化，增加了核查环节，防止类似事件再次发生。', NULL, NULL, NULL, 205, '2026-04-28 12:06:00', '156', '2026-04-28 12:06:00', '156', '2026-04-28 12:06:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (914, 318, 20, 50, 157, 'PROCESS', '已完成事件定性定级，事件级别为4级，建议按流程继续上报处理。', 'EQUIPMENT', 3, 0, NULL, '2026-04-30 20:06:00', '157', '2026-04-30 20:06:00', '157', '2026-04-30 20:06:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (915, 319, 0, 10, 155, 'SUBMIT', NULL, NULL, NULL, NULL, NULL, '2026-04-30 11:44:00', '155', '2026-04-30 11:44:00', '155', '2026-04-30 11:44:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (916, 319, 10, 20, 156, 'PROCESS', '经科室讨论，认为该事件属于操作流程不规范导致，已对相关人员进行培训。', NULL, NULL, NULL, 205, '2026-05-02 15:44:00', '156', '2026-05-02 15:44:00', '156', '2026-05-02 15:44:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (917, 320, 0, 10, 154, 'SUBMIT', NULL, NULL, NULL, NULL, NULL, '2026-04-10 17:06:00', '154', '2026-04-10 17:06:00', '154', '2026-04-10 17:06:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (918, 320, 10, 20, 156, 'PROCESS', '经科室讨论，认为该事件属于操作流程不规范导致，已对相关人员进行培训。', NULL, NULL, NULL, 205, '2026-04-15 17:06:00', '156', '2026-04-15 17:06:00', '156', '2026-04-15 17:06:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (919, 320, 20, 50, 157, 'PROCESS', '经专家评估，该事件属于系统性问题，建议从制度层面进行改进。', 'EQUIPMENT', 2, 0, NULL, '2026-04-23 01:06:00', '157', '2026-04-23 01:06:00', '157', '2026-04-23 01:06:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (920, 321, 0, 10, 154, 'SUBMIT', NULL, NULL, NULL, NULL, NULL, '2026-04-06 16:37:00', '154', '2026-04-06 16:37:00', '154', '2026-04-06 16:37:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (921, 321, 10, 20, 156, 'PROCESS', '经科室调查，事件原因为设备因素，已联系设备科进行检修维护。', NULL, NULL, NULL, 206, '2026-04-09 16:37:00', '156', '2026-04-09 16:37:00', '156', '2026-04-09 16:37:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (922, 321, 20, 60, 157, 'RETURN', '报告中时间信息有误，请核实后更正重新提交。', NULL, NULL, NULL, NULL, '2026-04-14 22:37:00', '157', '2026-04-14 22:37:00', '157', '2026-04-14 22:37:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (923, 322, 0, 10, 155, 'SUBMIT', NULL, NULL, NULL, NULL, NULL, '2026-04-10 15:01:00', '155', '2026-04-10 15:01:00', '155', '2026-04-10 15:01:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (924, 322, 10, 20, 156, 'PROCESS', '经科室讨论，已制定整改措施并落实到人，限期整改完成。', NULL, NULL, NULL, 205, '2026-04-14 21:01:00', '156', '2026-04-14 21:01:00', '156', '2026-04-14 21:01:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (925, 322, 20, 30, 157, 'PROCESS', '已完成事件调查，确认事件属实。建议加强操作规范方面的管理和培训。', 'HUMAN', 1, 1, NULL, '2026-04-20 05:01:00', '157', '2026-04-20 05:01:00', '157', '2026-04-20 05:01:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (926, 322, 30, 50, 158, 'PROCESS', '该事件性质严重，同意提交质量委员会讨论，制定系统性改进方案。', NULL, NULL, NULL, NULL, '2026-04-22 12:01:00', '158', '2026-04-22 12:01:00', '158', '2026-04-22 12:01:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (927, 323, 0, 20, 155, 'SUBMIT', NULL, NULL, NULL, NULL, NULL, '2026-04-23 12:19:00', '155', '2026-04-23 12:19:00', '155', '2026-04-23 12:19:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (928, 323, 20, 30, 157, 'PROCESS', '经专家评估，该事件属于系统性问题，建议从制度层面进行改进。', 'MEDICATION', 2, 0, NULL, '2026-04-29 18:19:00', '157', '2026-04-29 18:19:00', '157', '2026-04-29 18:19:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (929, 324, 0, 10, 155, 'SUBMIT', NULL, NULL, NULL, NULL, NULL, '2026-04-13 11:58:00', '155', '2026-04-13 11:58:00', '155', '2026-04-13 11:58:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (930, 324, 10, 20, 156, 'PROCESS', '科室已对事件进行初步分析，认为需要职能部门进一步评估处理。', NULL, NULL, NULL, 206, '2026-04-17 13:58:00', '156', '2026-04-17 13:58:00', '156', '2026-04-17 13:58:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (931, 324, 20, 50, 157, 'PROCESS', '已完成事件调查，确认事件属实。建议加强操作规范方面的管理和培训。', 'EQUIPMENT', 3, 0, NULL, '2026-04-24 15:58:00', '157', '2026-04-24 15:58:00', '157', '2026-04-24 15:58:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (932, 325, 0, 20, 155, 'SUBMIT', NULL, NULL, NULL, NULL, NULL, '2026-05-01 12:12:00', '155', '2026-05-01 12:12:00', '155', '2026-05-01 12:12:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (933, 326, 0, 10, 154, 'SUBMIT', NULL, NULL, NULL, NULL, NULL, '2026-05-03 10:13:00', '154', '2026-05-03 10:13:00', '154', '2026-05-03 10:13:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (934, 327, 0, 10, 155, 'SUBMIT', NULL, NULL, NULL, NULL, NULL, '2026-05-05 13:58:00', '155', '2026-05-05 13:58:00', '155', '2026-05-05 13:58:00', 0, 0);
INSERT INTO ae_event_flow (id, event_id, from_status, to_status, handler_id, action, opinion, cause, damage_level, need_track, transfer_dept_id, handle_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (935, 328, 0, 20, 154, 'SUBMIT', NULL, NULL, NULL, NULL, NULL, '2026-05-03 16:10:00', '154', '2026-05-03 16:10:00', '154', '2026-05-03 16:10:00', 0, 0);

-- ============================================================
-- PHASE 6: Insert 121 tracking records
-- ============================================================
INSERT INTO ae_event_track (id, event_id, track_time, remind_time, content, tracker_id, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (4, 6, '2023-06-03 08:47:00', '2023-06-23 08:47:00', '第1次跟踪随访：患者目前恢复情况良好，未再出现类似不良事件。', 157, 2, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_track (id, event_id, track_time, remind_time, content, tracker_id, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (5, 9, '2023-06-06 12:53:00', '2023-06-26 12:53:00', '第1次跟踪：整改措施已落实到位，相关培训已完成，效果评估中。', 157, 2, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_track (id, event_id, track_time, remind_time, content, tracker_id, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (6, 15, '2023-07-20 09:43:00', '2023-08-01 09:43:00', '第1次跟踪：整改措施已落实到位，相关培训已完成，效果评估中。', 157, 2, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_track (id, event_id, track_time, remind_time, content, tracker_id, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (7, 15, '2023-08-12 09:43:00', '2023-09-01 09:43:00', '第2次跟踪：科室已修订操作规程，新流程试运行中，暂未发现问题。', 157, 2, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_track (id, event_id, track_time, remind_time, content, tracker_id, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (8, 15, '2023-08-31 09:43:00', '2023-09-19 09:43:00', '第3次跟踪：整改措施已落实到位，相关培训已完成，效果评估中。', 157, 2, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_track (id, event_id, track_time, remind_time, content, tracker_id, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (9, 17, '2023-07-20 08:38:00', '2023-08-15 08:38:00', '第1次跟踪随访：患者目前恢复情况良好，未再出现类似不良事件。', 157, 2, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_track (id, event_id, track_time, remind_time, content, tracker_id, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (10, 20, '2023-07-08 08:04:00', '2023-07-22 08:04:00', '第1次跟踪：科室已修订操作规程，新流程试运行中，暂未发现问题。', 157, 2, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_track (id, event_id, track_time, remind_time, content, tracker_id, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (11, 20, '2023-07-31 08:04:00', '2023-08-15 08:04:00', '第2次跟踪：整改措施已落实到位，相关培训已完成，效果评估中。', 157, 2, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_track (id, event_id, track_time, remind_time, content, tracker_id, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (12, 20, '2023-08-25 08:04:00', '2023-09-19 08:04:00', '第3次跟踪：整改措施已落实到位，相关培训已完成，效果评估中。', 157, 2, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_track (id, event_id, track_time, remind_time, content, tracker_id, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (13, 21, '2023-07-05 15:15:00', '2023-07-27 15:15:00', '第1次跟踪：科室已修订操作规程，新流程试运行中，暂未发现问题。', 157, 2, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_track (id, event_id, track_time, remind_time, content, tracker_id, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (14, 22, '2023-07-31 13:51:00', '2023-08-22 13:51:00', '第1次跟踪：科室已修订操作规程，新流程试运行中，暂未发现问题。', 157, 2, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_track (id, event_id, track_time, remind_time, content, tracker_id, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (15, 22, '2023-08-09 13:51:00', '2023-08-20 13:51:00', '第2次跟踪：科室已修订操作规程，新流程试运行中，暂未发现问题。', 157, 2, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_track (id, event_id, track_time, remind_time, content, tracker_id, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (16, 28, '2023-08-24 15:39:00', '2023-09-16 15:39:00', '第1次跟踪随访：患者目前恢复情况良好，未再出现类似不良事件。', 157, 2, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_track (id, event_id, track_time, remind_time, content, tracker_id, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (17, 28, '2023-09-16 15:39:00', '2023-10-12 15:39:00', '第2次跟踪随访：患者目前恢复情况良好，未再出现类似不良事件。', 157, 2, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_track (id, event_id, track_time, remind_time, content, tracker_id, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (18, 28, '2023-09-21 15:39:00', '2023-10-13 15:39:00', '第3次跟踪：科室已修订操作规程，新流程试运行中，暂未发现问题。', 157, 2, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_track (id, event_id, track_time, remind_time, content, tracker_id, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (19, 29, '2023-08-23 15:53:00', '2023-09-19 15:53:00', '第1次跟踪：科室已修订操作规程，新流程试运行中，暂未发现问题。', 157, 2, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_track (id, event_id, track_time, remind_time, content, tracker_id, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (20, 29, '2023-09-17 15:53:00', '2023-10-03 15:53:00', '第2次跟踪：科室已修订操作规程，新流程试运行中，暂未发现问题。', 157, 2, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_track (id, event_id, track_time, remind_time, content, tracker_id, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (21, 29, '2023-09-08 15:53:00', '2023-09-25 15:53:00', '第3次跟踪：科室已修订操作规程，新流程试运行中，暂未发现问题。', 157, 2, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_track (id, event_id, track_time, remind_time, content, tracker_id, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (22, 35, '2023-10-28 08:54:00', '2023-11-20 08:54:00', '第1次跟踪：整改措施已落实到位，相关培训已完成，效果评估中。', 157, 2, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_track (id, event_id, track_time, remind_time, content, tracker_id, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (23, 36, '2023-10-20 12:22:00', '2023-11-07 12:22:00', '第1次跟踪：整改措施已落实到位，相关培训已完成，效果评估中。', 157, 2, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_track (id, event_id, track_time, remind_time, content, tracker_id, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (24, 36, '2023-11-05 12:22:00', '2023-11-17 12:22:00', '第2次跟踪随访：患者目前恢复情况良好，未再出现类似不良事件。', 157, 2, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_track (id, event_id, track_time, remind_time, content, tracker_id, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (25, 36, '2023-12-17 12:22:00', '2024-01-12 12:22:00', '第3次跟踪：科室已修订操作规程，新流程试运行中，暂未发现问题。', 157, 2, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_track (id, event_id, track_time, remind_time, content, tracker_id, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (26, 41, '2023-11-14 09:18:00', '2023-12-11 09:18:00', '第1次跟踪：整改措施已落实到位，相关培训已完成，效果评估中。', 157, 2, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_track (id, event_id, track_time, remind_time, content, tracker_id, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (27, 41, '2023-12-09 09:18:00', '2023-12-21 09:18:00', '第2次跟踪：科室已修订操作规程，新流程试运行中，暂未发现问题。', 157, 2, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_track (id, event_id, track_time, remind_time, content, tracker_id, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (28, 53, '2023-12-04 09:37:00', '2023-12-30 09:37:00', '第1次跟踪随访：患者目前恢复情况良好，未再出现类似不良事件。', 157, 2, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_track (id, event_id, track_time, remind_time, content, tracker_id, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (29, 58, '2024-01-02 11:46:00', '2024-01-13 11:46:00', '第1次跟踪：科室已修订操作规程，新流程试运行中，暂未发现问题。', 157, 2, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_track (id, event_id, track_time, remind_time, content, tracker_id, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (30, 58, '2024-01-11 11:46:00', '2024-01-26 11:46:00', '第2次跟踪：整改措施已落实到位，相关培训已完成，效果评估中。', 157, 2, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_track (id, event_id, track_time, remind_time, content, tracker_id, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (31, 59, '2023-12-31 12:42:00', '2024-01-15 12:42:00', '第1次跟踪随访：患者目前恢复情况良好，未再出现类似不良事件。', 157, 2, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_track (id, event_id, track_time, remind_time, content, tracker_id, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (32, 65, '2024-02-08 11:16:00', '2024-02-20 11:16:00', '第1次跟踪：科室已修订操作规程，新流程试运行中，暂未发现问题。', 157, 2, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_track (id, event_id, track_time, remind_time, content, tracker_id, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (33, 65, '2024-03-09 11:16:00', '2024-03-20 11:16:00', '第2次跟踪：科室已修订操作规程，新流程试运行中，暂未发现问题。', 157, 2, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_track (id, event_id, track_time, remind_time, content, tracker_id, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (34, 65, '2024-03-21 11:16:00', '2024-04-08 11:16:00', '第3次跟踪随访：患者目前恢复情况良好，未再出现类似不良事件。', 157, 2, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_track (id, event_id, track_time, remind_time, content, tracker_id, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (35, 71, '2024-02-25 13:16:00', '2024-03-08 13:16:00', '第1次跟踪：科室已修订操作规程，新流程试运行中，暂未发现问题。', 157, 2, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_track (id, event_id, track_time, remind_time, content, tracker_id, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (36, 71, '2024-03-04 13:16:00', '2024-03-21 13:16:00', '第2次跟踪随访：患者目前恢复情况良好，未再出现类似不良事件。', 157, 2, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_track (id, event_id, track_time, remind_time, content, tracker_id, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (37, 72, '2024-03-02 17:48:00', '2024-03-22 17:48:00', '第1次跟踪：整改措施已落实到位，相关培训已完成，效果评估中。', 157, 2, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_track (id, event_id, track_time, remind_time, content, tracker_id, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (38, 76, '2024-04-13 16:30:00', '2024-05-10 16:30:00', '第1次跟踪随访：患者目前恢复情况良好，未再出现类似不良事件。', 157, 2, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_track (id, event_id, track_time, remind_time, content, tracker_id, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (39, 82, '2024-04-29 17:55:00', '2024-05-26 17:55:00', '第1次跟踪：整改措施已落实到位，相关培训已完成，效果评估中。', 157, 2, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_track (id, event_id, track_time, remind_time, content, tracker_id, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (40, 95, '2024-06-12 16:13:00', '2024-07-03 16:13:00', '第1次跟踪：整改措施已落实到位，相关培训已完成，效果评估中。', 157, 2, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_track (id, event_id, track_time, remind_time, content, tracker_id, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (41, 114, '2024-08-12 08:22:00', '2024-09-11 08:22:00', '第1次跟踪：科室已修订操作规程，新流程试运行中，暂未发现问题。', 157, 2, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_track (id, event_id, track_time, remind_time, content, tracker_id, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (42, 114, '2024-08-26 08:22:00', '2024-09-14 08:22:00', '第2次跟踪：科室已修订操作规程，新流程试运行中，暂未发现问题。', 157, 2, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_track (id, event_id, track_time, remind_time, content, tracker_id, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (43, 132, '2024-10-02 08:22:00', '2024-10-17 08:22:00', '第1次跟踪随访：患者目前恢复情况良好，未再出现类似不良事件。', 157, 2, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_track (id, event_id, track_time, remind_time, content, tracker_id, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (44, 132, '2024-10-25 08:22:00', '2024-11-14 08:22:00', '第2次跟踪随访：患者目前恢复情况良好，未再出现类似不良事件。', 157, 2, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_track (id, event_id, track_time, remind_time, content, tracker_id, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (45, 132, '2024-11-03 08:22:00', '2024-11-24 08:22:00', '第3次跟踪：整改措施已落实到位，相关培训已完成，效果评估中。', 157, 2, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_track (id, event_id, track_time, remind_time, content, tracker_id, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (46, 134, '2024-11-06 08:55:00', '2024-12-04 08:55:00', '第1次跟踪随访：患者目前恢复情况良好，未再出现类似不良事件。', 157, 2, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_track (id, event_id, track_time, remind_time, content, tracker_id, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (47, 134, '2024-11-16 08:55:00', '2024-12-10 08:55:00', '第2次跟踪：科室已修订操作规程，新流程试运行中，暂未发现问题。', 157, 2, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_track (id, event_id, track_time, remind_time, content, tracker_id, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (48, 134, '2024-12-12 08:55:00', '2025-01-01 08:55:00', '第3次跟踪：科室已修订操作规程，新流程试运行中，暂未发现问题。', 157, 2, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_track (id, event_id, track_time, remind_time, content, tracker_id, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (49, 145, '2024-12-05 16:57:00', '2024-12-20 16:57:00', '第1次跟踪：整改措施已落实到位，相关培训已完成，效果评估中。', 157, 2, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_track (id, event_id, track_time, remind_time, content, tracker_id, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (50, 145, '2024-12-15 16:57:00', '2024-12-30 16:57:00', '第2次跟踪：科室已修订操作规程，新流程试运行中，暂未发现问题。', 157, 2, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_track (id, event_id, track_time, remind_time, content, tracker_id, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (51, 145, '2025-01-24 16:57:00', '2025-02-12 16:57:00', '第3次跟踪：整改措施已落实到位，相关培训已完成，效果评估中。', 157, 2, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_track (id, event_id, track_time, remind_time, content, tracker_id, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (52, 157, '2025-01-15 08:37:00', '2025-02-12 08:37:00', '第1次跟踪：科室已修订操作规程，新流程试运行中，暂未发现问题。', 157, 2, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_track (id, event_id, track_time, remind_time, content, tracker_id, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (53, 157, '2025-01-28 08:37:00', '2025-02-20 08:37:00', '第2次跟踪：整改措施已落实到位，相关培训已完成，效果评估中。', 157, 2, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_track (id, event_id, track_time, remind_time, content, tracker_id, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (54, 157, '2025-03-12 08:37:00', '2025-04-10 08:37:00', '第3次跟踪随访：患者目前恢复情况良好，未再出现类似不良事件。', 157, 2, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_track (id, event_id, track_time, remind_time, content, tracker_id, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (55, 159, '2025-02-01 14:20:00', '2025-02-08 14:20:00', '第1次跟踪随访：患者目前恢复情况良好，未再出现类似不良事件。', 157, 2, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_track (id, event_id, track_time, remind_time, content, tracker_id, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (56, 159, '2025-02-08 14:20:00', '2025-02-28 14:20:00', '第2次跟踪随访：患者目前恢复情况良好，未再出现类似不良事件。', 157, 2, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_track (id, event_id, track_time, remind_time, content, tracker_id, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (57, 161, '2025-02-17 12:18:00', '2025-03-10 12:18:00', '第1次跟踪：整改措施已落实到位，相关培训已完成，效果评估中。', 157, 2, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_track (id, event_id, track_time, remind_time, content, tracker_id, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (58, 161, '2025-03-03 12:18:00', '2025-04-02 12:18:00', '第2次跟踪：整改措施已落实到位，相关培训已完成，效果评估中。', 157, 2, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_track (id, event_id, track_time, remind_time, content, tracker_id, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (59, 161, '2025-03-19 12:18:00', '2025-04-01 12:18:00', '第3次跟踪随访：患者目前恢复情况良好，未再出现类似不良事件。', 157, 2, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_track (id, event_id, track_time, remind_time, content, tracker_id, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (60, 168, '2025-03-13 13:50:00', '2025-04-08 13:50:00', '第1次跟踪：科室已修订操作规程，新流程试运行中，暂未发现问题。', 157, 2, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_track (id, event_id, track_time, remind_time, content, tracker_id, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (61, 174, '2025-03-05 10:32:00', '2025-03-15 10:32:00', '第1次跟踪随访：患者目前恢复情况良好，未再出现类似不良事件。', 157, 2, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_track (id, event_id, track_time, remind_time, content, tracker_id, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (62, 176, '2025-04-17 14:28:00', '2025-05-15 14:28:00', '第1次跟踪：科室已修订操作规程，新流程试运行中，暂未发现问题。', 157, 2, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_track (id, event_id, track_time, remind_time, content, tracker_id, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (63, 176, '2025-05-12 14:28:00', '2025-05-24 14:28:00', '第2次跟踪随访：患者目前恢复情况良好，未再出现类似不良事件。', 157, 2, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_track (id, event_id, track_time, remind_time, content, tracker_id, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (64, 176, '2025-06-14 14:28:00', '2025-06-26 14:28:00', '第3次跟踪：整改措施已落实到位，相关培训已完成，效果评估中。', 157, 2, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_track (id, event_id, track_time, remind_time, content, tracker_id, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (65, 182, '2025-04-21 14:26:00', '2025-04-30 14:26:00', '第1次跟踪：科室已修订操作规程，新流程试运行中，暂未发现问题。', 157, 2, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_track (id, event_id, track_time, remind_time, content, tracker_id, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (66, 182, '2025-05-12 14:26:00', '2025-05-27 14:26:00', '第2次跟踪：整改措施已落实到位，相关培训已完成，效果评估中。', 157, 2, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_track (id, event_id, track_time, remind_time, content, tracker_id, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (67, 189, '2025-05-10 10:46:00', '2025-05-22 10:46:00', '第1次跟踪随访：患者目前恢复情况良好，未再出现类似不良事件。', 157, 2, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_track (id, event_id, track_time, remind_time, content, tracker_id, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (68, 189, '2025-05-25 10:46:00', '2025-06-02 10:46:00', '第2次跟踪：整改措施已落实到位，相关培训已完成，效果评估中。', 157, 2, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_track (id, event_id, track_time, remind_time, content, tracker_id, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (69, 189, '2025-06-17 10:46:00', '2025-07-04 10:46:00', '第3次跟踪随访：患者目前恢复情况良好，未再出现类似不良事件。', 157, 2, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_track (id, event_id, track_time, remind_time, content, tracker_id, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (70, 198, '2025-05-24 18:17:00', '2025-06-14 18:17:00', '第1次跟踪随访：患者目前恢复情况良好，未再出现类似不良事件。', 157, 2, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_track (id, event_id, track_time, remind_time, content, tracker_id, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (71, 198, '2025-06-15 18:17:00', '2025-06-28 18:17:00', '第2次跟踪：科室已修订操作规程，新流程试运行中，暂未发现问题。', 157, 2, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_track (id, event_id, track_time, remind_time, content, tracker_id, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (72, 205, '2025-07-01 14:17:00', '2025-07-23 14:17:00', '第1次跟踪随访：患者目前恢复情况良好，未再出现类似不良事件。', 157, 2, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_track (id, event_id, track_time, remind_time, content, tracker_id, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (73, 205, '2025-07-12 14:17:00', '2025-08-05 14:17:00', '第2次跟踪：整改措施已落实到位，相关培训已完成，效果评估中。', 157, 2, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_track (id, event_id, track_time, remind_time, content, tracker_id, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (74, 206, '2025-07-11 11:28:00', '2025-08-09 11:28:00', '第1次跟踪：整改措施已落实到位，相关培训已完成，效果评估中。', 157, 2, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_track (id, event_id, track_time, remind_time, content, tracker_id, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (75, 207, '2025-07-09 14:50:00', '2025-07-18 14:50:00', '第1次跟踪：科室已修订操作规程，新流程试运行中，暂未发现问题。', 157, 2, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_track (id, event_id, track_time, remind_time, content, tracker_id, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (76, 210, '2025-07-05 14:29:00', '2025-07-12 14:29:00', '第1次跟踪：整改措施已落实到位，相关培训已完成，效果评估中。', 157, 2, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_track (id, event_id, track_time, remind_time, content, tracker_id, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (77, 210, '2025-07-16 14:29:00', '2025-08-12 14:29:00', '第2次跟踪：科室已修订操作规程，新流程试运行中，暂未发现问题。', 157, 2, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_track (id, event_id, track_time, remind_time, content, tracker_id, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (78, 210, '2025-07-19 14:29:00', '2025-07-27 14:29:00', '第3次跟踪：科室已修订操作规程，新流程试运行中，暂未发现问题。', 157, 2, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_track (id, event_id, track_time, remind_time, content, tracker_id, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (79, 213, '2025-07-01 14:40:00', '2025-07-30 14:40:00', '第1次跟踪：整改措施已落实到位，相关培训已完成，效果评估中。', 157, 2, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_track (id, event_id, track_time, remind_time, content, tracker_id, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (80, 213, '2025-07-20 14:40:00', '2025-08-14 14:40:00', '第2次跟踪随访：患者目前恢复情况良好，未再出现类似不良事件。', 157, 2, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_track (id, event_id, track_time, remind_time, content, tracker_id, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (81, 217, '2025-08-05 15:40:00', '2025-08-25 15:40:00', '第1次跟踪：整改措施已落实到位，相关培训已完成，效果评估中。', 157, 2, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_track (id, event_id, track_time, remind_time, content, tracker_id, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (82, 217, '2025-09-04 15:40:00', '2025-09-13 15:40:00', '第2次跟踪：科室已修订操作规程，新流程试运行中，暂未发现问题。', 157, 2, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_track (id, event_id, track_time, remind_time, content, tracker_id, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (83, 217, '2025-09-02 15:40:00', '2025-09-09 15:40:00', '第3次跟踪：整改措施已落实到位，相关培训已完成，效果评估中。', 157, 2, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_track (id, event_id, track_time, remind_time, content, tracker_id, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (84, 223, '2025-08-19 16:10:00', '2025-09-13 16:10:00', '第1次跟踪：科室已修订操作规程，新流程试运行中，暂未发现问题。', 157, 2, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_track (id, event_id, track_time, remind_time, content, tracker_id, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (85, 223, '2025-09-06 16:10:00', '2025-09-23 16:10:00', '第2次跟踪：科室已修订操作规程，新流程试运行中，暂未发现问题。', 157, 2, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_track (id, event_id, track_time, remind_time, content, tracker_id, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (86, 223, '2025-09-20 16:10:00', '2025-10-09 16:10:00', '第3次跟踪随访：患者目前恢复情况良好，未再出现类似不良事件。', 157, 2, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_track (id, event_id, track_time, remind_time, content, tracker_id, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (87, 225, '2025-08-02 10:36:00', '2025-08-26 10:36:00', '第1次跟踪：整改措施已落实到位，相关培训已完成，效果评估中。', 157, 2, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_track (id, event_id, track_time, remind_time, content, tracker_id, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (88, 225, '2025-08-11 10:36:00', '2025-09-01 10:36:00', '第2次跟踪：整改措施已落实到位，相关培训已完成，效果评估中。', 157, 2, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_track (id, event_id, track_time, remind_time, content, tracker_id, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (89, 225, '2025-09-25 10:36:00', '2025-10-08 10:36:00', '第3次跟踪随访：患者目前恢复情况良好，未再出现类似不良事件。', 157, 2, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_track (id, event_id, track_time, remind_time, content, tracker_id, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (90, 229, '2025-09-14 18:19:00', '2025-10-12 18:19:00', '第1次跟踪随访：患者目前恢复情况良好，未再出现类似不良事件。', 157, 2, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_track (id, event_id, track_time, remind_time, content, tracker_id, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (91, 229, '2025-09-30 18:19:00', '2025-10-29 18:19:00', '第2次跟踪：整改措施已落实到位，相关培训已完成，效果评估中。', 157, 2, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_track (id, event_id, track_time, remind_time, content, tracker_id, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (92, 229, '2025-10-04 18:19:00', '2025-10-31 18:19:00', '第3次跟踪：科室已修订操作规程，新流程试运行中，暂未发现问题。', 157, 2, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_track (id, event_id, track_time, remind_time, content, tracker_id, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (93, 255, '2025-11-03 08:29:00', '2025-11-30 08:29:00', '第1次跟踪：整改措施已落实到位，相关培训已完成，效果评估中。', 157, 2, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_track (id, event_id, track_time, remind_time, content, tracker_id, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (94, 255, '2025-12-03 08:29:00', '2025-12-16 08:29:00', '第2次跟踪随访：患者目前恢复情况良好，未再出现类似不良事件。', 157, 2, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_track (id, event_id, track_time, remind_time, content, tracker_id, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (95, 264, '2025-12-12 13:11:00', '2026-01-11 13:11:00', '第1次跟踪：科室已修订操作规程，新流程试运行中，暂未发现问题。', 157, 2, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_track (id, event_id, track_time, remind_time, content, tracker_id, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (96, 269, '2025-12-03 13:10:00', '2025-12-12 13:10:00', '第1次跟踪：科室已修订操作规程，新流程试运行中，暂未发现问题。', 157, 2, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_track (id, event_id, track_time, remind_time, content, tracker_id, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (97, 270, '2025-12-14 14:10:00', '2026-01-07 14:10:00', '第1次跟踪：整改措施已落实到位，相关培训已完成，效果评估中。', 157, 2, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_track (id, event_id, track_time, remind_time, content, tracker_id, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (98, 270, '2025-12-21 14:10:00', '2025-12-29 14:10:00', '第2次跟踪：整改措施已落实到位，相关培训已完成，效果评估中。', 157, 2, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_track (id, event_id, track_time, remind_time, content, tracker_id, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (99, 270, '2025-12-30 14:10:00', '2026-01-16 14:10:00', '第3次跟踪：科室已修订操作规程，新流程试运行中，暂未发现问题。', 157, 2, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_track (id, event_id, track_time, remind_time, content, tracker_id, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (100, 277, '2026-01-14 13:54:00', '2026-01-27 13:54:00', '第1次跟踪：科室已修订操作规程，新流程试运行中，暂未发现问题。', 157, 2, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_track (id, event_id, track_time, remind_time, content, tracker_id, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (101, 282, '2026-02-08 16:25:00', '2026-03-04 16:25:00', '第1次跟踪随访：患者目前恢复情况良好，未再出现类似不良事件。', 157, 2, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_track (id, event_id, track_time, remind_time, content, tracker_id, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (102, 282, '2026-03-10 16:25:00', '2026-04-04 16:25:00', '第2次跟踪随访：患者目前恢复情况良好，未再出现类似不良事件。', 157, 2, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_track (id, event_id, track_time, remind_time, content, tracker_id, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (103, 282, '2026-02-26 16:25:00', '2026-03-06 16:25:00', '第3次跟踪：科室已修订操作规程，新流程试运行中，暂未发现问题。', 157, 2, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_track (id, event_id, track_time, remind_time, content, tracker_id, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (104, 283, '2026-02-22 11:17:00', '2026-03-01 11:17:00', '第1次跟踪：整改措施已落实到位，相关培训已完成，效果评估中。', 157, 2, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_track (id, event_id, track_time, remind_time, content, tracker_id, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (105, 285, '2026-01-24 18:14:00', '2026-02-22 18:14:00', '第1次跟踪：科室已修订操作规程，新流程试运行中，暂未发现问题。', 157, 2, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_track (id, event_id, track_time, remind_time, content, tracker_id, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (106, 285, '2026-02-04 18:14:00', '2026-02-11 18:14:00', '第2次跟踪随访：患者目前恢复情况良好，未再出现类似不良事件。', 157, 2, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_track (id, event_id, track_time, remind_time, content, tracker_id, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (107, 285, '2026-03-19 18:14:00', '2026-03-27 18:14:00', '第3次跟踪：整改措施已落实到位，相关培训已完成，效果评估中。', 157, 2, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_track (id, event_id, track_time, remind_time, content, tracker_id, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (108, 288, '2026-02-08 18:06:00', '2026-02-20 18:06:00', '第1次跟踪：科室已修订操作规程，新流程试运行中，暂未发现问题。', 157, 2, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_track (id, event_id, track_time, remind_time, content, tracker_id, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (109, 292, '2026-03-01 18:05:00', '2026-03-23 18:05:00', '第1次跟踪：科室已修订操作规程，新流程试运行中，暂未发现问题。', 157, 2, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_track (id, event_id, track_time, remind_time, content, tracker_id, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (110, 293, '2026-03-22 18:37:00', '2026-04-04 18:37:00', '第1次跟踪：整改措施已落实到位，相关培训已完成，效果评估中。', 157, 2, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_track (id, event_id, track_time, remind_time, content, tracker_id, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (111, 293, '2026-04-08 18:37:00', '2026-05-08 18:37:00', '第2次跟踪：科室已修订操作规程，新流程试运行中，暂未发现问题。', 157, 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_track (id, event_id, track_time, remind_time, content, tracker_id, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (112, 293, '2026-04-29 18:37:00', '2026-05-16 18:37:00', '第3次跟踪随访：患者目前恢复情况良好，未再出现类似不良事件。', 157, 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_track (id, event_id, track_time, remind_time, content, tracker_id, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (113, 296, '2026-03-04 14:30:00', '2026-03-17 14:30:00', '第1次跟踪随访：患者目前恢复情况良好，未再出现类似不良事件。', 157, 2, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_track (id, event_id, track_time, remind_time, content, tracker_id, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (114, 296, '2026-03-29 14:30:00', '2026-04-10 14:30:00', '第2次跟踪：整改措施已落实到位，相关培训已完成，效果评估中。', 157, 2, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_track (id, event_id, track_time, remind_time, content, tracker_id, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (115, 296, '2026-03-22 14:30:00', '2026-04-01 14:30:00', '第3次跟踪：整改措施已落实到位，相关培训已完成，效果评估中。', 157, 2, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_track (id, event_id, track_time, remind_time, content, tracker_id, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (116, 297, '2026-03-08 11:44:00', '2026-04-06 11:44:00', '第1次跟踪：整改措施已落实到位，相关培训已完成，效果评估中。', 157, 2, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_track (id, event_id, track_time, remind_time, content, tracker_id, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (117, 299, '2026-02-21 11:14:00', '2026-03-07 11:14:00', '第1次跟踪：科室已修订操作规程，新流程试运行中，暂未发现问题。', 157, 2, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_track (id, event_id, track_time, remind_time, content, tracker_id, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (118, 299, '2026-03-01 11:14:00', '2026-03-12 11:14:00', '第2次跟踪随访：患者目前恢复情况良好，未再出现类似不良事件。', 157, 2, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_track (id, event_id, track_time, remind_time, content, tracker_id, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (119, 299, '2026-04-16 11:14:00', '2026-05-12 11:14:00', '第3次跟踪：整改措施已落实到位，相关培训已完成，效果评估中。', 157, 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_track (id, event_id, track_time, remind_time, content, tracker_id, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (120, 304, '2026-03-20 09:49:00', '2026-03-29 09:49:00', '第1次跟踪随访：患者目前恢复情况良好，未再出现类似不良事件。', 157, 2, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_track (id, event_id, track_time, remind_time, content, tracker_id, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (121, 305, '2026-03-26 08:54:00', '2026-04-24 08:54:00', '第1次跟踪：科室已修订操作规程，新流程试运行中，暂未发现问题。', 157, 2, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_track (id, event_id, track_time, remind_time, content, tracker_id, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (122, 309, '2026-03-28 14:28:00', '2026-04-26 14:28:00', '第1次跟踪：整改措施已落实到位，相关培训已完成，效果评估中。', 157, 2, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_track (id, event_id, track_time, remind_time, content, tracker_id, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (123, 309, '2026-04-26 14:28:00', '2026-05-07 14:28:00', '第2次跟踪随访：患者目前恢复情况良好，未再出现类似不良事件。', 157, 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_track (id, event_id, track_time, remind_time, content, tracker_id, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (124, 309, '2026-04-19 14:28:00', '2026-05-16 14:28:00', '第3次跟踪：整改措施已落实到位，相关培训已完成，效果评估中。', 157, 1, 'admin', NOW(), 'admin', NOW(), 0, 0);

-- ============================================================
-- PHASE 7: Insert 587 notifications
-- ============================================================
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (1, 6, 205, 157, '不良事件已转入职能部门处理：AE20230504001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (2, 7, 200, 156, '您有新的不良事件待处理：AE20230518001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (3, 7, 205, 157, '不良事件已转入职能部门处理：AE20230518001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (4, 8, 200, 156, '您有新的不良事件待处理：AE20230505001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (5, 8, 205, 157, '不良事件已转入职能部门处理：AE20230505001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (6, 8, 1, 158, '不良事件需要院领导审批：AE20230505001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (7, 9, 201, 156, '您有新的不良事件待处理：AE20230518002', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (8, 9, 205, 157, '不良事件已转入职能部门处理：AE20230518002', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (9, 10, 201, 156, '您有新的不良事件待处理：AE20230528001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (10, 10, 205, 157, '不良事件已转入职能部门处理：AE20230528001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (11, 11, 205, 157, '不良事件已转入职能部门处理：AE20230520001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (12, 12, 201, 156, '您有新的不良事件待处理：AE20230525001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (13, 12, 208, 157, '不良事件已转入职能部门处理：AE20230525001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (14, 13, 201, 156, '您有新的不良事件待处理：AE20230529001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (15, 14, 200, 156, '您有新的不良事件待处理：AE20230616001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (16, 14, 205, 157, '不良事件已转入职能部门处理：AE20230616001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (17, 14, 1, 158, '不良事件需要院领导审批：AE20230616001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (18, 15, 201, 156, '您有新的不良事件待处理：AE20230622001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (19, 15, 208, 157, '不良事件已转入职能部门处理：AE20230622001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (20, 16, 201, 156, '您有新的不良事件待处理：AE20230625001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (21, 16, 207, 157, '不良事件已转入职能部门处理：AE20230625001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (22, 17, 205, 157, '不良事件已转入职能部门处理：AE20230630001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (23, 17, 1, 158, '不良事件需要院领导审批：AE20230630001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (24, 18, 201, 156, '您有新的不良事件待处理：AE20230627001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (25, 18, 205, 157, '不良事件已转入职能部门处理：AE20230627001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (26, 18, 1, 158, '不良事件需要院领导审批：AE20230627001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (27, 19, 201, 156, '您有新的不良事件待处理：AE20230607001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (28, 19, 207, 157, '不良事件已转入职能部门处理：AE20230607001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (29, 20, 206, 157, '不良事件已转入职能部门处理：AE20230608001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (30, 20, 1, 158, '不良事件需要院领导审批：AE20230608001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (31, 21, 200, 156, '您有新的不良事件待处理：AE20230619001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (32, 21, 206, 157, '不良事件已转入职能部门处理：AE20230619001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (33, 22, 200, 156, '您有新的不良事件待处理：AE20230713001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (34, 22, 208, 157, '不良事件已转入职能部门处理：AE20230713001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (35, 23, 207, 157, '不良事件已转入职能部门处理：AE20230704001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (36, 24, 201, 156, '您有新的不良事件待处理：AE20230706001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (37, 24, 207, 157, '不良事件已转入职能部门处理：AE20230706001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (38, 25, 200, 156, '您有新的不良事件待处理：AE20230705001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (39, 26, 200, 156, '您有新的不良事件待处理：AE20230702001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (40, 26, 208, 157, '不良事件已转入职能部门处理：AE20230702001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (41, 26, 1, 158, '不良事件需要院领导审批：AE20230702001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (42, 27, 200, 156, '您有新的不良事件待处理：AE20230722001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (43, 27, 205, 157, '不良事件已转入职能部门处理：AE20230722001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (44, 28, 200, 156, '您有新的不良事件待处理：AE20230801001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (45, 28, 207, 157, '不良事件已转入职能部门处理：AE20230801001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (46, 29, 200, 156, '您有新的不良事件待处理：AE20230806001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (47, 29, 205, 157, '不良事件已转入职能部门处理：AE20230806001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (48, 30, 201, 156, '您有新的不良事件待处理：AE20230824001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (49, 30, 205, 157, '不良事件已转入职能部门处理：AE20230824001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (50, 31, 200, 156, '您有新的不良事件待处理：AE20230821001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (51, 31, 205, 157, '不良事件已转入职能部门处理：AE20230821001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (52, 32, 200, 156, '您有新的不良事件待处理：AE20230804001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (53, 32, 206, 157, '不良事件已转入职能部门处理：AE20230804001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (54, 32, 1, 158, '不良事件需要院领导审批：AE20230804001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (55, 33, 206, 157, '不良事件已转入职能部门处理：AE20230829001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (56, 34, 205, 157, '不良事件已转入职能部门处理：AE20230929001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (57, 35, 205, 157, '不良事件已转入职能部门处理：AE20230928001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (58, 35, 1, 158, '不良事件需要院领导审批：AE20230928001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (59, 36, 201, 156, '您有新的不良事件待处理：AE20230925001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (60, 36, 205, 157, '不良事件已转入职能部门处理：AE20230925001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (61, 37, 200, 156, '您有新的不良事件待处理：AE20230920001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (62, 37, 206, 157, '不良事件已转入职能部门处理：AE20230920001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (63, 38, 201, 156, '您有新的不良事件待处理：AE20230922001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (64, 38, 205, 157, '不良事件已转入职能部门处理：AE20230922001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (65, 38, 1, 158, '不良事件需要院领导审批：AE20230922001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (66, 40, 201, 156, '您有新的不良事件待处理：AE20231010001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (67, 40, 206, 157, '不良事件已转入职能部门处理：AE20231010001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (68, 41, 205, 157, '不良事件已转入职能部门处理：AE20231022001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (69, 42, 201, 156, '您有新的不良事件待处理：AE20231008001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (70, 42, 208, 157, '不良事件已转入职能部门处理：AE20231008001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (71, 43, 200, 156, '您有新的不良事件待处理：AE20231021001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (72, 43, 206, 157, '不良事件已转入职能部门处理：AE20231021001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (73, 45, 201, 156, '您有新的不良事件待处理：AE20231030001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (74, 45, 208, 157, '不良事件已转入职能部门处理：AE20231030001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (75, 46, 201, 156, '您有新的不良事件待处理：AE20231009001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (76, 46, 206, 157, '不良事件已转入职能部门处理：AE20231009001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (77, 47, 201, 156, '您有新的不良事件待处理：AE20231114001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (78, 47, 205, 157, '不良事件已转入职能部门处理：AE20231114001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (79, 47, 1, 158, '不良事件需要院领导审批：AE20231114001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (80, 48, 200, 156, '您有新的不良事件待处理：AE20231110001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (81, 48, 208, 157, '不良事件已转入职能部门处理：AE20231110001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (82, 49, 200, 156, '您有新的不良事件待处理：AE20231127001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (83, 49, 205, 157, '不良事件已转入职能部门处理：AE20231127001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (84, 50, 205, 157, '不良事件已转入职能部门处理：AE20231106001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (85, 51, 200, 156, '您有新的不良事件待处理：AE20231101001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (86, 51, 207, 157, '不良事件已转入职能部门处理：AE20231101001', 0, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (87, 52, 200, 156, '您有新的不良事件待处理：AE20231108001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (88, 52, 206, 157, '不良事件已转入职能部门处理：AE20231108001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (89, 53, 201, 156, '您有新的不良事件待处理：AE20231110002', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (90, 53, 205, 157, '不良事件已转入职能部门处理：AE20231110002', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (91, 54, 201, 156, '您有新的不良事件待处理：AE20231220001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (92, 54, 207, 157, '不良事件已转入职能部门处理：AE20231220001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (93, 55, 200, 156, '您有新的不良事件待处理：AE20231204001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (94, 55, 205, 157, '不良事件已转入职能部门处理：AE20231204001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (95, 56, 200, 156, '您有新的不良事件待处理：AE20231215001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (96, 56, 206, 157, '不良事件已转入职能部门处理：AE20231215001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (97, 57, 200, 156, '您有新的不良事件待处理：AE20231211001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (98, 57, 208, 157, '不良事件已转入职能部门处理：AE20231211001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (99, 57, 1, 158, '不良事件需要院领导审批：AE20231211001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (100, 58, 200, 156, '您有新的不良事件待处理：AE20231203001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (101, 58, 205, 157, '不良事件已转入职能部门处理：AE20231203001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (102, 59, 201, 156, '您有新的不良事件待处理：AE20231208001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (103, 59, 205, 157, '不良事件已转入职能部门处理：AE20231208001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (104, 60, 200, 156, '您有新的不良事件待处理：AE20231224001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (105, 60, 205, 157, '不良事件已转入职能部门处理：AE20231224001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (106, 61, 200, 156, '您有新的不良事件待处理：AE20231227001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (107, 61, 205, 157, '不良事件已转入职能部门处理：AE20231227001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (108, 61, 1, 158, '不良事件需要院领导审批：AE20231227001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (109, 62, 201, 156, '您有新的不良事件待处理：AE20240128001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (110, 62, 205, 157, '不良事件已转入职能部门处理：AE20240128001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (111, 63, 201, 156, '您有新的不良事件待处理：AE20240119001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (112, 64, 201, 156, '您有新的不良事件待处理：AE20240125001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (113, 65, 200, 156, '您有新的不良事件待处理：AE20240121001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (114, 65, 206, 157, '不良事件已转入职能部门处理：AE20240121001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (115, 65, 1, 158, '不良事件需要院领导审批：AE20240121001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (116, 66, 200, 156, '您有新的不良事件待处理：AE20240123001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (117, 66, 206, 157, '不良事件已转入职能部门处理：AE20240123001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (118, 67, 201, 156, '您有新的不良事件待处理：AE20240102001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (119, 67, 205, 157, '不良事件已转入职能部门处理：AE20240102001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (120, 68, 201, 156, '您有新的不良事件待处理：AE20240220001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (121, 68, 205, 157, '不良事件已转入职能部门处理：AE20240220001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (122, 69, 200, 156, '您有新的不良事件待处理：AE20240225001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (123, 69, 205, 157, '不良事件已转入职能部门处理：AE20240225001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (124, 69, 1, 158, '不良事件需要院领导审批：AE20240225001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (125, 70, 200, 156, '您有新的不良事件待处理：AE20240216001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (126, 70, 205, 157, '不良事件已转入职能部门处理：AE20240216001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (127, 71, 205, 157, '不良事件已转入职能部门处理：AE20240203001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (128, 72, 200, 156, '您有新的不良事件待处理：AE20240212001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (129, 72, 205, 157, '不良事件已转入职能部门处理：AE20240212001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (130, 73, 205, 157, '不良事件已转入职能部门处理：AE20240220002', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (131, 74, 201, 156, '您有新的不良事件待处理：AE20240310001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (132, 74, 205, 157, '不良事件已转入职能部门处理：AE20240310001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (133, 75, 200, 156, '您有新的不良事件待处理：AE20240309001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (134, 76, 201, 156, '您有新的不良事件待处理：AE20240315001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (135, 76, 205, 157, '不良事件已转入职能部门处理：AE20240315001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (136, 77, 201, 156, '您有新的不良事件待处理：AE20240314001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (137, 77, 206, 157, '不良事件已转入职能部门处理：AE20240314001', 0, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (138, 78, 208, 157, '不良事件已转入职能部门处理：AE20240331001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (139, 79, 205, 157, '不良事件已转入职能部门处理：AE20240316001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (140, 80, 201, 156, '您有新的不良事件待处理：AE20240316002', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (141, 80, 205, 157, '不良事件已转入职能部门处理：AE20240316002', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (142, 81, 200, 156, '您有新的不良事件待处理：AE20240306001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (143, 81, 205, 157, '不良事件已转入职能部门处理：AE20240306001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (144, 82, 201, 156, '您有新的不良事件待处理：AE20240403001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (145, 82, 205, 157, '不良事件已转入职能部门处理：AE20240403001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (146, 83, 201, 156, '您有新的不良事件待处理：AE20240415001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (147, 83, 205, 157, '不良事件已转入职能部门处理：AE20240415001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (148, 83, 1, 158, '不良事件需要院领导审批：AE20240415001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (149, 84, 201, 156, '您有新的不良事件待处理：AE20240416001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (150, 84, 205, 157, '不良事件已转入职能部门处理：AE20240416001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (151, 85, 201, 156, '您有新的不良事件待处理：AE20240425001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (152, 85, 205, 157, '不良事件已转入职能部门处理：AE20240425001', 0, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (153, 86, 200, 156, '您有新的不良事件待处理：AE20240425002', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (154, 87, 205, 157, '不良事件已转入职能部门处理：AE20240411001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (155, 88, 200, 156, '您有新的不良事件待处理：AE20240528001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (156, 88, 205, 157, '不良事件已转入职能部门处理：AE20240528001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (157, 89, 201, 156, '您有新的不良事件待处理：AE20240503001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (158, 90, 201, 156, '您有新的不良事件待处理：AE20240522001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (159, 90, 205, 157, '不良事件已转入职能部门处理：AE20240522001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (160, 91, 201, 156, '您有新的不良事件待处理：AE20240504001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (161, 91, 207, 157, '不良事件已转入职能部门处理：AE20240504001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (162, 93, 201, 156, '您有新的不良事件待处理：AE20240512001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (163, 93, 205, 157, '不良事件已转入职能部门处理：AE20240512001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (164, 94, 200, 156, '您有新的不良事件待处理：AE20240531002', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (165, 94, 208, 157, '不良事件已转入职能部门处理：AE20240531002', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (166, 94, 1, 158, '不良事件需要院领导审批：AE20240531002', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (167, 95, 200, 156, '您有新的不良事件待处理：AE20240527001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (168, 95, 205, 157, '不良事件已转入职能部门处理：AE20240527001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (169, 96, 200, 156, '您有新的不良事件待处理：AE20240518001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (170, 96, 205, 157, '不良事件已转入职能部门处理：AE20240518001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (171, 97, 201, 156, '您有新的不良事件待处理：AE20240524001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (172, 97, 205, 157, '不良事件已转入职能部门处理：AE20240524001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (173, 97, 1, 158, '不良事件需要院领导审批：AE20240524001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (174, 98, 201, 156, '您有新的不良事件待处理：AE20240621001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (175, 98, 207, 157, '不良事件已转入职能部门处理：AE20240621001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (176, 99, 201, 156, '您有新的不良事件待处理：AE20240605001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (177, 99, 205, 157, '不良事件已转入职能部门处理：AE20240605001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (178, 100, 208, 157, '不良事件已转入职能部门处理：AE20240628001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (179, 101, 205, 157, '不良事件已转入职能部门处理：AE20240614001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (180, 102, 205, 157, '不良事件已转入职能部门处理：AE20240619001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (181, 102, 1, 158, '不良事件需要院领导审批：AE20240619001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (182, 103, 200, 156, '您有新的不良事件待处理：AE20240619002', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (183, 103, 205, 157, '不良事件已转入职能部门处理：AE20240619002', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (184, 104, 201, 156, '您有新的不良事件待处理：AE20240620001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (185, 104, 206, 157, '不良事件已转入职能部门处理：AE20240620001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (186, 104, 1, 158, '不良事件需要院领导审批：AE20240620001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (187, 105, 201, 156, '您有新的不良事件待处理：AE20240624001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (188, 105, 205, 157, '不良事件已转入职能部门处理：AE20240624001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (189, 106, 200, 156, '您有新的不良事件待处理：AE20240629001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (190, 106, 205, 157, '不良事件已转入职能部门处理：AE20240629001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (191, 107, 201, 156, '您有新的不良事件待处理：AE20240714001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (192, 108, 200, 156, '您有新的不良事件待处理：AE20240725001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (193, 108, 205, 157, '不良事件已转入职能部门处理：AE20240725001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (194, 110, 205, 157, '不良事件已转入职能部门处理：AE20240710001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (195, 111, 200, 156, '您有新的不良事件待处理：AE20240713001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (196, 111, 205, 157, '不良事件已转入职能部门处理：AE20240713001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (197, 112, 200, 156, '您有新的不良事件待处理：AE20240721001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (198, 112, 205, 157, '不良事件已转入职能部门处理：AE20240721001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (199, 113, 201, 156, '您有新的不良事件待处理：AE20240715001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (200, 113, 205, 157, '不良事件已转入职能部门处理：AE20240715001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (201, 114, 201, 156, '您有新的不良事件待处理：AE20240719001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (202, 114, 205, 157, '不良事件已转入职能部门处理：AE20240719001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (203, 115, 205, 157, '不良事件已转入职能部门处理：AE20240717001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (204, 116, 200, 156, '您有新的不良事件待处理：AE20240815001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (205, 116, 208, 157, '不良事件已转入职能部门处理：AE20240815001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (206, 117, 201, 156, '您有新的不良事件待处理：AE20240812001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (207, 117, 205, 157, '不良事件已转入职能部门处理：AE20240812001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (208, 118, 200, 156, '您有新的不良事件待处理：AE20240810001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (209, 118, 208, 157, '不良事件已转入职能部门处理：AE20240810001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (210, 119, 201, 156, '您有新的不良事件待处理：AE20240805001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (211, 119, 207, 157, '不良事件已转入职能部门处理：AE20240805001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (212, 120, 205, 157, '不良事件已转入职能部门处理：AE20240803001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (213, 122, 200, 156, '您有新的不良事件待处理：AE20240827001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (214, 122, 207, 157, '不良事件已转入职能部门处理：AE20240827001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (215, 123, 201, 156, '您有新的不良事件待处理：AE20240808001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (216, 123, 205, 157, '不良事件已转入职能部门处理：AE20240808001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (217, 124, 200, 156, '您有新的不良事件待处理：AE20240925001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (218, 124, 205, 157, '不良事件已转入职能部门处理：AE20240925001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (219, 125, 205, 157, '不良事件已转入职能部门处理：AE20240923001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (220, 125, 1, 158, '不良事件需要院领导审批：AE20240923001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (221, 126, 200, 156, '您有新的不良事件待处理：AE20240930001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (222, 126, 205, 157, '不良事件已转入职能部门处理：AE20240930001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (223, 127, 201, 156, '您有新的不良事件待处理：AE20240926001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (224, 127, 205, 157, '不良事件已转入职能部门处理：AE20240926001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (225, 128, 201, 156, '您有新的不良事件待处理：AE20240901001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (226, 128, 208, 157, '不良事件已转入职能部门处理：AE20240901001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (227, 129, 200, 156, '您有新的不良事件待处理：AE20240903001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (228, 129, 207, 157, '不良事件已转入职能部门处理：AE20240903001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (229, 130, 201, 156, '您有新的不良事件待处理：AE20240908001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (230, 130, 205, 157, '不良事件已转入职能部门处理：AE20240908001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (231, 131, 200, 156, '您有新的不良事件待处理：AE20240902001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (232, 131, 207, 157, '不良事件已转入职能部门处理：AE20240902001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (233, 132, 200, 156, '您有新的不良事件待处理：AE20240905001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (234, 132, 205, 157, '不良事件已转入职能部门处理：AE20240905001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (235, 133, 200, 156, '您有新的不良事件待处理：AE20241002001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (236, 133, 205, 157, '不良事件已转入职能部门处理：AE20241002001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (237, 133, 1, 158, '不良事件需要院领导审批：AE20241002001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (238, 134, 201, 156, '您有新的不良事件待处理：AE20241012001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (239, 134, 206, 157, '不良事件已转入职能部门处理：AE20241012001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (240, 135, 208, 157, '不良事件已转入职能部门处理：AE20241012002', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (241, 136, 201, 156, '您有新的不良事件待处理：AE20241010001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (242, 136, 206, 157, '不良事件已转入职能部门处理：AE20241010001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (243, 136, 1, 158, '不良事件需要院领导审批：AE20241010001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (244, 137, 200, 156, '您有新的不良事件待处理：AE20241003001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (245, 138, 200, 156, '您有新的不良事件待处理：AE20241008001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (246, 138, 205, 157, '不良事件已转入职能部门处理：AE20241008001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (247, 139, 200, 156, '您有新的不良事件待处理：AE20241012003', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (248, 139, 205, 157, '不良事件已转入职能部门处理：AE20241012003', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (249, 140, 201, 156, '您有新的不良事件待处理：AE20241015001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (250, 140, 205, 157, '不良事件已转入职能部门处理：AE20241015001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (251, 141, 201, 156, '您有新的不良事件待处理：AE20241022001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (252, 141, 205, 157, '不良事件已转入职能部门处理：AE20241022001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (253, 142, 206, 157, '不良事件已转入职能部门处理：AE20241126001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (254, 142, 1, 158, '不良事件需要院领导审批：AE20241126001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (255, 143, 200, 156, '您有新的不良事件待处理：AE20241117001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (256, 143, 205, 157, '不良事件已转入职能部门处理：AE20241117001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (257, 144, 205, 157, '不良事件已转入职能部门处理：AE20241118001', 0, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (258, 145, 200, 156, '您有新的不良事件待处理：AE20241112001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (259, 145, 205, 157, '不良事件已转入职能部门处理：AE20241112001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (260, 145, 1, 158, '不良事件需要院领导审批：AE20241112001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (261, 146, 200, 156, '您有新的不良事件待处理：AE20241106001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (262, 146, 206, 157, '不良事件已转入职能部门处理：AE20241106001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (263, 147, 201, 156, '您有新的不良事件待处理：AE20241114001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (264, 147, 205, 157, '不良事件已转入职能部门处理：AE20241114001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (265, 148, 200, 156, '您有新的不良事件待处理：AE20241106002', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (266, 148, 205, 157, '不良事件已转入职能部门处理：AE20241106002', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (267, 149, 201, 156, '您有新的不良事件待处理：AE20241125001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (268, 149, 205, 157, '不良事件已转入职能部门处理：AE20241125001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (269, 150, 201, 156, '您有新的不良事件待处理：AE20241231001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (270, 150, 205, 157, '不良事件已转入职能部门处理：AE20241231001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (271, 151, 201, 156, '您有新的不良事件待处理：AE20241231002', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (272, 152, 201, 156, '您有新的不良事件待处理：AE20241218001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (273, 152, 205, 157, '不良事件已转入职能部门处理：AE20241218001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (274, 152, 1, 158, '不良事件需要院领导审批：AE20241218001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (275, 153, 200, 156, '您有新的不良事件待处理：AE20241213001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (276, 153, 206, 157, '不良事件已转入职能部门处理：AE20241213001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (277, 154, 200, 156, '您有新的不良事件待处理：AE20241207001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (278, 154, 205, 157, '不良事件已转入职能部门处理：AE20241207001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (279, 154, 1, 158, '不良事件需要院领导审批：AE20241207001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (280, 155, 201, 156, '您有新的不良事件待处理：AE20241211001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (281, 155, 207, 157, '不良事件已转入职能部门处理：AE20241211001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (282, 156, 201, 156, '您有新的不良事件待处理：AE20241212001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (283, 156, 205, 157, '不良事件已转入职能部门处理：AE20241212001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (284, 157, 201, 156, '您有新的不良事件待处理：AE20241224001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (285, 157, 205, 157, '不良事件已转入职能部门处理：AE20241224001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (286, 158, 201, 156, '您有新的不良事件待处理：AE20250105001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (287, 158, 205, 157, '不良事件已转入职能部门处理：AE20250105001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (288, 159, 201, 156, '您有新的不良事件待处理：AE20250117001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (289, 159, 207, 157, '不良事件已转入职能部门处理：AE20250117001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (290, 160, 201, 156, '您有新的不良事件待处理：AE20250107001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (291, 160, 205, 157, '不良事件已转入职能部门处理：AE20250107001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (292, 161, 201, 156, '您有新的不良事件待处理：AE20250130001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (293, 161, 205, 157, '不良事件已转入职能部门处理：AE20250130001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (294, 162, 200, 156, '您有新的不良事件待处理：AE20250112001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (295, 163, 200, 156, '您有新的不良事件待处理：AE20250108001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (296, 163, 207, 157, '不良事件已转入职能部门处理：AE20250108001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (297, 164, 201, 156, '您有新的不良事件待处理：AE20250131001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (298, 164, 205, 157, '不良事件已转入职能部门处理：AE20250131001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (299, 165, 200, 156, '您有新的不良事件待处理：AE20250121001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (300, 165, 205, 157, '不良事件已转入职能部门处理：AE20250121001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (301, 166, 201, 156, '您有新的不良事件待处理：AE20250126001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (302, 167, 205, 157, '不良事件已转入职能部门处理：AE20250221001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (303, 168, 205, 157, '不良事件已转入职能部门处理：AE20250224001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (304, 169, 201, 156, '您有新的不良事件待处理：AE20250206001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (305, 169, 205, 157, '不良事件已转入职能部门处理：AE20250206001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (306, 170, 201, 156, '您有新的不良事件待处理：AE20250221002', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (307, 170, 205, 157, '不良事件已转入职能部门处理：AE20250221002', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (308, 171, 200, 156, '您有新的不良事件待处理：AE20250221003', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (309, 171, 205, 157, '不良事件已转入职能部门处理：AE20250221003', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (310, 172, 200, 156, '您有新的不良事件待处理：AE20250218001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (311, 172, 205, 157, '不良事件已转入职能部门处理：AE20250218001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (312, 173, 201, 156, '您有新的不良事件待处理：AE20250219001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (313, 174, 201, 156, '您有新的不良事件待处理：AE20250215001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (314, 174, 205, 157, '不良事件已转入职能部门处理：AE20250215001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (315, 175, 200, 156, '您有新的不良事件待处理：AE20250202001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (316, 175, 206, 157, '不良事件已转入职能部门处理：AE20250202001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (317, 176, 208, 157, '不良事件已转入职能部门处理：AE20250329001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (318, 177, 206, 157, '不良事件已转入职能部门处理：AE20250313001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (319, 178, 200, 156, '您有新的不良事件待处理：AE20250308001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (320, 179, 200, 156, '您有新的不良事件待处理：AE20250307001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (321, 179, 205, 157, '不良事件已转入职能部门处理：AE20250307001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (322, 180, 201, 156, '您有新的不良事件待处理：AE20250317001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (323, 180, 208, 157, '不良事件已转入职能部门处理：AE20250317001', 0, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (324, 181, 200, 156, '您有新的不良事件待处理：AE20250308002', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (325, 181, 205, 157, '不良事件已转入职能部门处理：AE20250308002', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (326, 182, 201, 156, '您有新的不良事件待处理：AE20250323001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (327, 182, 205, 157, '不良事件已转入职能部门处理：AE20250323001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (328, 183, 201, 156, '您有新的不良事件待处理：AE20250331001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (329, 183, 205, 157, '不良事件已转入职能部门处理：AE20250331001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (330, 184, 200, 156, '您有新的不良事件待处理：AE20250302001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (331, 184, 206, 157, '不良事件已转入职能部门处理：AE20250302001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (332, 185, 200, 156, '您有新的不良事件待处理：AE20250430001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (333, 185, 207, 157, '不良事件已转入职能部门处理：AE20250430001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (334, 186, 201, 156, '您有新的不良事件待处理：AE20250418001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (335, 186, 205, 157, '不良事件已转入职能部门处理：AE20250418001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (336, 187, 200, 156, '您有新的不良事件待处理：AE20250430002', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (337, 188, 200, 156, '您有新的不良事件待处理：AE20250405001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (338, 188, 205, 157, '不良事件已转入职能部门处理：AE20250405001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (339, 189, 206, 157, '不良事件已转入职能部门处理：AE20250415001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (340, 189, 1, 158, '不良事件需要院领导审批：AE20250415001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (341, 190, 200, 156, '您有新的不良事件待处理：AE20250425001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (342, 190, 205, 157, '不良事件已转入职能部门处理：AE20250425001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (343, 191, 200, 156, '您有新的不良事件待处理：AE20250422001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (344, 191, 205, 157, '不良事件已转入职能部门处理：AE20250422001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (345, 192, 200, 156, '您有新的不良事件待处理：AE20250426001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (346, 192, 207, 157, '不良事件已转入职能部门处理：AE20250426001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (347, 194, 201, 156, '您有新的不良事件待处理：AE20250521001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (348, 194, 205, 157, '不良事件已转入职能部门处理：AE20250521001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (349, 195, 201, 156, '您有新的不良事件待处理：AE20250507001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (350, 195, 205, 157, '不良事件已转入职能部门处理：AE20250507001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (351, 196, 205, 157, '不良事件已转入职能部门处理：AE20250525001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (352, 197, 206, 157, '不良事件已转入职能部门处理：AE20250526001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (353, 198, 206, 157, '不良事件已转入职能部门处理：AE20250501001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (354, 199, 201, 156, '您有新的不良事件待处理：AE20250510001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (355, 199, 205, 157, '不良事件已转入职能部门处理：AE20250510001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (356, 200, 200, 156, '您有新的不良事件待处理：AE20250531001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (357, 201, 201, 156, '您有新的不良事件待处理：AE20250512001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (358, 201, 205, 157, '不良事件已转入职能部门处理：AE20250512001', 0, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (359, 202, 200, 156, '您有新的不良事件待处理：AE20250506001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (360, 202, 205, 157, '不良事件已转入职能部门处理：AE20250506001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (361, 203, 205, 157, '不良事件已转入职能部门处理：AE20250521002', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (362, 204, 200, 156, '您有新的不良事件待处理：AE20250627001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (363, 204, 205, 157, '不良事件已转入职能部门处理：AE20250627001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (364, 205, 200, 156, '您有新的不良事件待处理：AE20250611001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (365, 205, 208, 157, '不良事件已转入职能部门处理：AE20250611001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (366, 206, 200, 156, '您有新的不良事件待处理：AE20250623001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (367, 206, 206, 157, '不良事件已转入职能部门处理：AE20250623001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (368, 207, 201, 156, '您有新的不良事件待处理：AE20250623002', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (369, 207, 205, 157, '不良事件已转入职能部门处理：AE20250623002', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (370, 208, 200, 156, '您有新的不良事件待处理：AE20250623003', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (371, 208, 205, 157, '不良事件已转入职能部门处理：AE20250623003', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (372, 209, 200, 156, '您有新的不良事件待处理：AE20250621001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (373, 209, 205, 157, '不良事件已转入职能部门处理：AE20250621001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (374, 210, 200, 156, '您有新的不良事件待处理：AE20250612001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (375, 210, 206, 157, '不良事件已转入职能部门处理：AE20250612001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (376, 211, 201, 156, '您有新的不良事件待处理：AE20250612002', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (377, 211, 205, 157, '不良事件已转入职能部门处理：AE20250612002', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (378, 212, 200, 156, '您有新的不良事件待处理：AE20250626001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (379, 212, 208, 157, '不良事件已转入职能部门处理：AE20250626001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (380, 213, 201, 156, '您有新的不良事件待处理：AE20250608001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (381, 213, 205, 157, '不良事件已转入职能部门处理：AE20250608001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (382, 214, 200, 156, '您有新的不良事件待处理：AE20250607001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (383, 214, 206, 157, '不良事件已转入职能部门处理：AE20250607001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (384, 216, 200, 156, '您有新的不良事件待处理：AE20250730001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (385, 216, 205, 157, '不良事件已转入职能部门处理：AE20250730001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (386, 216, 1, 158, '不良事件需要院领导审批：AE20250730001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (387, 217, 200, 156, '您有新的不良事件待处理：AE20250706001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (388, 217, 205, 157, '不良事件已转入职能部门处理：AE20250706001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (389, 218, 201, 156, '您有新的不良事件待处理：AE20250731002', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (390, 218, 205, 157, '不良事件已转入职能部门处理：AE20250731002', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (391, 219, 201, 156, '您有新的不良事件待处理：AE20250726001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (392, 219, 205, 157, '不良事件已转入职能部门处理：AE20250726001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (393, 220, 201, 156, '您有新的不良事件待处理：AE20250719001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (394, 220, 206, 157, '不良事件已转入职能部门处理：AE20250719001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (395, 221, 200, 156, '您有新的不良事件待处理：AE20250724001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (396, 221, 205, 157, '不良事件已转入职能部门处理：AE20250724001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (397, 222, 201, 156, '您有新的不良事件待处理：AE20250707001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (398, 222, 205, 157, '不良事件已转入职能部门处理：AE20250707001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (399, 223, 205, 157, '不良事件已转入职能部门处理：AE20250720001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (400, 224, 200, 156, '您有新的不良事件待处理：AE20250726002', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (401, 224, 205, 157, '不良事件已转入职能部门处理：AE20250726002', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (402, 225, 201, 156, '您有新的不良事件待处理：AE20250716001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (403, 225, 205, 157, '不良事件已转入职能部门处理：AE20250716001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (404, 226, 200, 156, '您有新的不良事件待处理：AE20250715001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (405, 226, 205, 157, '不良事件已转入职能部门处理：AE20250715001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (406, 227, 201, 156, '您有新的不良事件待处理：AE20250807001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (407, 228, 200, 156, '您有新的不良事件待处理：AE20250802001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (408, 228, 206, 157, '不良事件已转入职能部门处理：AE20250802001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (409, 229, 201, 156, '您有新的不良事件待处理：AE20250829001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (410, 229, 205, 157, '不良事件已转入职能部门处理：AE20250829001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (411, 230, 200, 156, '您有新的不良事件待处理：AE20250824001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (412, 231, 200, 156, '您有新的不良事件待处理：AE20250823001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (413, 231, 205, 157, '不良事件已转入职能部门处理：AE20250823001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (414, 232, 200, 156, '您有新的不良事件待处理：AE20250805001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (415, 233, 200, 156, '您有新的不良事件待处理：AE20250821001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (416, 233, 205, 157, '不良事件已转入职能部门处理：AE20250821001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (417, 234, 201, 156, '您有新的不良事件待处理：AE20250805002', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (418, 234, 205, 157, '不良事件已转入职能部门处理：AE20250805002', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (419, 235, 200, 156, '您有新的不良事件待处理：AE20250824002', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (420, 235, 205, 157, '不良事件已转入职能部门处理：AE20250824002', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (421, 236, 201, 156, '您有新的不良事件待处理：AE20250830001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (422, 237, 201, 156, '您有新的不良事件待处理：AE20250807002', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (423, 237, 205, 157, '不良事件已转入职能部门处理：AE20250807002', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (424, 238, 200, 156, '您有新的不良事件待处理：AE20250903001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (425, 238, 205, 157, '不良事件已转入职能部门处理：AE20250903001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (426, 239, 200, 156, '您有新的不良事件待处理：AE20250910001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (427, 239, 207, 157, '不良事件已转入职能部门处理：AE20250910001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (428, 240, 200, 156, '您有新的不良事件待处理：AE20250906001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (429, 240, 206, 157, '不良事件已转入职能部门处理：AE20250906001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (430, 241, 201, 156, '您有新的不良事件待处理：AE20250924001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (431, 241, 208, 157, '不良事件已转入职能部门处理：AE20250924001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (432, 242, 201, 156, '您有新的不良事件待处理：AE20250917001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (433, 242, 205, 157, '不良事件已转入职能部门处理：AE20250917001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (434, 243, 205, 157, '不良事件已转入职能部门处理：AE20250902001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (435, 244, 200, 156, '您有新的不良事件待处理：AE20250911001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (436, 244, 207, 157, '不良事件已转入职能部门处理：AE20250911001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (437, 245, 201, 156, '您有新的不良事件待处理：AE20250902002', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (438, 245, 208, 157, '不良事件已转入职能部门处理：AE20250902002', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (439, 246, 200, 156, '您有新的不良事件待处理：AE20250908001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (440, 246, 205, 157, '不良事件已转入职能部门处理：AE20250908001', 0, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (441, 247, 201, 156, '您有新的不良事件待处理：AE20250918001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (442, 247, 208, 157, '不良事件已转入职能部门处理：AE20250918001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (443, 248, 207, 157, '不良事件已转入职能部门处理：AE20250914001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (444, 248, 1, 158, '不良事件需要院领导审批：AE20250914001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (445, 249, 205, 157, '不良事件已转入职能部门处理：AE20251004001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (446, 250, 200, 156, '您有新的不良事件待处理：AE20251027001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (447, 250, 205, 157, '不良事件已转入职能部门处理：AE20251027001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (448, 251, 201, 156, '您有新的不良事件待处理：AE20251018001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (449, 251, 205, 157, '不良事件已转入职能部门处理：AE20251018001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (450, 252, 201, 156, '您有新的不良事件待处理：AE20251007001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (451, 252, 205, 157, '不良事件已转入职能部门处理：AE20251007001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (452, 253, 200, 156, '您有新的不良事件待处理：AE20251018002', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (453, 253, 205, 157, '不良事件已转入职能部门处理：AE20251018002', 0, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (454, 254, 200, 156, '您有新的不良事件待处理：AE20251022001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (455, 254, 205, 157, '不良事件已转入职能部门处理：AE20251022001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (456, 255, 201, 156, '您有新的不良事件待处理：AE20251004002', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (457, 255, 205, 157, '不良事件已转入职能部门处理：AE20251004002', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (458, 256, 200, 156, '您有新的不良事件待处理：AE20251009001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (459, 256, 208, 157, '不良事件已转入职能部门处理：AE20251009001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (460, 256, 1, 158, '不良事件需要院领导审批：AE20251009001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (461, 257, 201, 156, '您有新的不良事件待处理：AE20251008001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (462, 257, 205, 157, '不良事件已转入职能部门处理：AE20251008001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (463, 257, 1, 158, '不良事件需要院领导审批：AE20251008001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (464, 258, 205, 157, '不良事件已转入职能部门处理：AE20251001001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (465, 260, 201, 156, '您有新的不良事件待处理：AE20251006001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (466, 260, 205, 157, '不良事件已转入职能部门处理：AE20251006001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (467, 261, 200, 156, '您有新的不良事件待处理：AE20251127001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (468, 261, 205, 157, '不良事件已转入职能部门处理：AE20251127001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (469, 262, 201, 156, '您有新的不良事件待处理：AE20251105001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (470, 262, 205, 157, '不良事件已转入职能部门处理：AE20251105001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (471, 263, 200, 156, '您有新的不良事件待处理：AE20251103001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (472, 263, 207, 157, '不良事件已转入职能部门处理：AE20251103001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (473, 264, 201, 156, '您有新的不良事件待处理：AE20251121001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (474, 264, 206, 157, '不良事件已转入职能部门处理：AE20251121001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (475, 265, 200, 156, '您有新的不良事件待处理：AE20251123001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (476, 265, 208, 157, '不良事件已转入职能部门处理：AE20251123001', 0, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (477, 266, 205, 157, '不良事件已转入职能部门处理：AE20251105002', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (478, 267, 201, 156, '您有新的不良事件待处理：AE20251101001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (479, 267, 205, 157, '不良事件已转入职能部门处理：AE20251101001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (480, 267, 1, 158, '不良事件需要院领导审批：AE20251101001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (481, 268, 200, 156, '您有新的不良事件待处理：AE20251112001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (482, 268, 205, 157, '不良事件已转入职能部门处理：AE20251112001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (483, 269, 208, 157, '不良事件已转入职能部门处理：AE20251103002', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (484, 269, 1, 158, '不良事件需要院领导审批：AE20251103002', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (485, 270, 200, 156, '您有新的不良事件待处理：AE20251120001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (486, 270, 205, 157, '不良事件已转入职能部门处理：AE20251120001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (487, 271, 201, 156, '您有新的不良事件待处理：AE20251213001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (488, 271, 208, 157, '不良事件已转入职能部门处理：AE20251213001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (489, 271, 1, 158, '不良事件需要院领导审批：AE20251213001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (490, 271, 206, 159, '不良事件需要质量委员会讨论：AE20251213001', 0, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (491, 272, 205, 157, '不良事件已转入职能部门处理：AE20251221001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (492, 272, 1, 158, '不良事件需要院领导审批：AE20251221001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (493, 273, 201, 156, '您有新的不良事件待处理：AE20251215001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (494, 273, 205, 157, '不良事件已转入职能部门处理：AE20251215001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (495, 274, 201, 156, '您有新的不良事件待处理：AE20251218001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (496, 274, 205, 157, '不良事件已转入职能部门处理：AE20251218001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (497, 275, 200, 156, '您有新的不良事件待处理：AE20251210001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (498, 275, 207, 157, '不良事件已转入职能部门处理：AE20251210001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (499, 276, 200, 156, '您有新的不良事件待处理：AE20251202001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (500, 276, 207, 157, '不良事件已转入职能部门处理：AE20251202001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (501, 277, 200, 156, '您有新的不良事件待处理：AE20251218002', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (502, 277, 205, 157, '不良事件已转入职能部门处理：AE20251218002', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (503, 278, 201, 156, '您有新的不良事件待处理：AE20251230001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (504, 278, 206, 157, '不良事件已转入职能部门处理：AE20251230001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (505, 279, 205, 157, '不良事件已转入职能部门处理：AE20251209001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (506, 280, 201, 156, '您有新的不良事件待处理：AE20251201001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (507, 280, 206, 157, '不良事件已转入职能部门处理：AE20251201001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (508, 281, 200, 156, '您有新的不良事件待处理：AE20260124001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (509, 281, 205, 157, '不良事件已转入职能部门处理：AE20260124001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (510, 281, 1, 158, '不良事件需要院领导审批：AE20260124001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (511, 282, 205, 157, '不良事件已转入职能部门处理：AE20260110001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (512, 283, 201, 156, '您有新的不良事件待处理：AE20260123001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (513, 283, 205, 157, '不良事件已转入职能部门处理：AE20260123001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (514, 284, 201, 156, '您有新的不良事件待处理：AE20260116001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (515, 284, 205, 157, '不良事件已转入职能部门处理：AE20260116001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (516, 284, 1, 158, '不良事件需要院领导审批：AE20260116001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (517, 285, 206, 157, '不良事件已转入职能部门处理：AE20260108001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (518, 286, 201, 156, '您有新的不良事件待处理：AE20260120001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (519, 286, 205, 157, '不良事件已转入职能部门处理：AE20260120001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (520, 287, 205, 157, '不良事件已转入职能部门处理：AE20260115001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (521, 288, 205, 157, '不良事件已转入职能部门处理：AE20260110002', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (522, 289, 201, 156, '您有新的不良事件待处理：AE20260117001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (523, 289, 205, 157, '不良事件已转入职能部门处理：AE20260117001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (524, 290, 200, 156, '您有新的不良事件待处理：AE20260130001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (525, 290, 205, 157, '不良事件已转入职能部门处理：AE20260130001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (526, 291, 200, 156, '您有新的不良事件待处理：AE20260112001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (527, 291, 208, 157, '不良事件已转入职能部门处理：AE20260112001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (528, 292, 205, 157, '不良事件已转入职能部门处理：AE20260211001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (529, 293, 201, 156, '您有新的不良事件待处理：AE20260228001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (530, 293, 205, 157, '不良事件已转入职能部门处理：AE20260228001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (531, 294, 205, 157, '不良事件已转入职能部门处理：AE20260205001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (532, 295, 200, 156, '您有新的不良事件待处理：AE20260221001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (533, 296, 205, 157, '不良事件已转入职能部门处理：AE20260213001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (534, 296, 1, 158, '不良事件需要院领导审批：AE20260213001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (535, 297, 200, 156, '您有新的不良事件待处理：AE20260208001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (536, 297, 208, 157, '不良事件已转入职能部门处理：AE20260208001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (537, 298, 205, 157, '不良事件已转入职能部门处理：AE20260220001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (538, 299, 200, 156, '您有新的不良事件待处理：AE20260201001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (539, 299, 206, 157, '不良事件已转入职能部门处理：AE20260201001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (540, 299, 1, 158, '不良事件需要院领导审批：AE20260201001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (541, 300, 200, 156, '您有新的不良事件待处理：AE20260220002', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (542, 300, 207, 157, '不良事件已转入职能部门处理：AE20260220002', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (543, 301, 200, 156, '您有新的不良事件待处理：AE20260223001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (544, 302, 201, 156, '您有新的不良事件待处理：AE20260217001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (545, 302, 205, 157, '不良事件已转入职能部门处理：AE20260217001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (546, 303, 201, 156, '您有新的不良事件待处理：AE20260206001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (547, 303, 205, 157, '不良事件已转入职能部门处理：AE20260206001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (548, 304, 200, 156, '您有新的不良事件待处理：AE20260305001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (549, 304, 205, 157, '不良事件已转入职能部门处理：AE20260305001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (550, 305, 201, 156, '您有新的不良事件待处理：AE20260306001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (551, 305, 205, 157, '不良事件已转入职能部门处理：AE20260306001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (552, 306, 200, 156, '您有新的不良事件待处理：AE20260311001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (553, 306, 205, 157, '不良事件已转入职能部门处理：AE20260311001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (554, 307, 200, 156, '您有新的不良事件待处理：AE20260328001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (555, 307, 205, 157, '不良事件已转入职能部门处理：AE20260328001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (556, 308, 205, 157, '不良事件已转入职能部门处理：AE20260316001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (557, 309, 205, 157, '不良事件已转入职能部门处理：AE20260304001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (558, 310, 200, 156, '您有新的不良事件待处理：AE20260317001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (559, 310, 206, 157, '不良事件已转入职能部门处理：AE20260317001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (560, 311, 207, 157, '不良事件已转入职能部门处理：AE20260302001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (561, 312, 200, 156, '您有新的不良事件待处理：AE20260317002', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (562, 313, 201, 156, '您有新的不良事件待处理：AE20260304002', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (563, 313, 206, 157, '不良事件已转入职能部门处理：AE20260304002', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (564, 313, 1, 158, '不良事件需要院领导审批：AE20260304002', 0, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (565, 314, 201, 156, '您有新的不良事件待处理：AE20260331001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (566, 315, 201, 156, '您有新的不良事件待处理：AE20260404001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (567, 315, 205, 157, '不良事件已转入职能部门处理：AE20260404001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (568, 316, 205, 157, '不良事件已转入职能部门处理：AE20260404002', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (569, 316, 1, 158, '不良事件需要院领导审批：AE20260404002', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (570, 317, 200, 156, '您有新的不良事件待处理：AE20260425001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (571, 317, 206, 157, '不良事件已转入职能部门处理：AE20260425001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (572, 318, 200, 156, '您有新的不良事件待处理：AE20260425002', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (573, 318, 205, 157, '不良事件已转入职能部门处理：AE20260425002', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (574, 319, 201, 156, '您有新的不良事件待处理：AE20260430001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (575, 319, 205, 157, '不良事件已转入职能部门处理：AE20260430001', 0, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (576, 320, 200, 156, '您有新的不良事件待处理：AE20260410001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (577, 320, 205, 157, '不良事件已转入职能部门处理：AE20260410001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (578, 321, 200, 156, '您有新的不良事件待处理：AE20260406001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (579, 322, 201, 156, '您有新的不良事件待处理：AE20260410002', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (580, 322, 205, 157, '不良事件已转入职能部门处理：AE20260410002', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (581, 322, 1, 158, '不良事件需要院领导审批：AE20260410002', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (582, 323, 206, 157, '不良事件已转入职能部门处理：AE20260423001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (583, 323, 1, 158, '不良事件需要院领导审批：AE20260423001', 0, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (584, 324, 201, 156, '您有新的不良事件待处理：AE20260413001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (585, 324, 206, 157, '不良事件已转入职能部门处理：AE20260413001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (586, 325, 205, 157, '不良事件已转入职能部门处理：AE20260501001', 0, 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_event_notify (id, event_id, dept_id, notify_user_id, content, status, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (587, 327, 201, 156, '您有新的不良事件待处理：AE20260505001', 1, 'admin', NOW(), 'admin', NOW(), 0, 0);

-- ============================================================
-- PHASE 8: Insert committee votes
-- ============================================================
INSERT INTO ae_committee_vote (id, event_id, committee_id, user_id, vote, opinion, vote_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (1, 271, 3, 159, 1, '经委员会讨论，制定了以下改进措施：1.修订操作规程；2.增加质量控制节点；3.定期开展应急演练。', '2026-01-03 17:35:00', 'admin', NOW(), 'admin', NOW(), 0, 0);
INSERT INTO ae_committee_vote (id, event_id, committee_id, user_id, vote, opinion, vote_time, creator, create_time, updater, update_time, deleted, tenant_id)
VALUES (2, 271, 3, 1, 1, '经委员会讨论，制定了以下改进措施：1.修订操作规程；2.增加质量控制节点；3.定期开展应急演练。', '2026-01-07 17:35:00', 'admin', NOW(), 'admin', NOW(), 0, 0);

-- ============================================================
-- Verification
-- ============================================================
SELECT '=== New Users ===' AS info;
SELECT id, username, nickname, dept_id FROM system_users WHERE id >= 154 AND deleted = 0 ORDER BY id;
SELECT '=== User Roles ===' AS info;
SELECT ur.user_id, u.username, ur.role_id FROM system_user_role ur JOIN system_users u ON ur.user_id = u.id WHERE ur.user_id >= 154 AND ur.deleted = 0;
SELECT '=== Event Count ===' AS info;
SELECT COUNT(*) as total_events FROM ae_adverse_event WHERE deleted = 0;
SELECT '=== Events by Status ===' AS info;
SELECT status, COUNT(*) as cnt FROM ae_adverse_event WHERE deleted = 0 GROUP BY status ORDER BY status;
SELECT '=== Events by Category ===' AS info;
SELECT category, COUNT(*) as cnt FROM ae_adverse_event WHERE deleted = 0 GROUP BY category ORDER BY cnt DESC;
SELECT '=== Events by Year ===' AS info;
SELECT YEAR(report_time) as yr, COUNT(*) as cnt FROM ae_adverse_event WHERE deleted = 0 GROUP BY yr ORDER BY yr;
SELECT '=== Flow Records ===' AS info;
SELECT COUNT(*) as total_flows FROM ae_event_flow WHERE deleted = 0;
SELECT '=== Track Records ===' AS info;
SELECT COUNT(*) as total_tracks FROM ae_event_track WHERE deleted = 0;
SELECT '=== Notifications ===' AS info;
SELECT COUNT(*) as total_notifies FROM ae_event_notify WHERE deleted = 0;

COMMIT;