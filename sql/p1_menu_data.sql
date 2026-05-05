-- P1 菜单数据补全（硬编码ID，无变量依赖）
START TRANSACTION;

-- 删除旧残留
DELETE FROM `ruoyi-vue-pro`.`system_role_menu` WHERE menu_id IN (5969, 5986);
DELETE FROM `ruoyi-vue-pro`.`system_menu` WHERE id IN (5969, 5986);
DELETE FROM `ruoyi-vue-pro`.`system_menu` WHERE id BETWEEN 7000 AND 7043;

-- ===== 一级目录 =====
-- 7000: 不良事件管理
INSERT INTO `ruoyi-vue-pro`.`system_menu` (id, name, permission, type, sort, parent_id, path, icon, component, component_name, status, visible, keep_alive, always_show, creator, create_time, updater, update_time, deleted) VALUES
(7000, '不良事件管理', '', 1, 1, 1, '/radiotherapy', 'ep:warning-filled', '', '', 1, 1, 0, 1, '1', NOW(), '1', NOW(), 0);

-- 7040: 维护功能
INSERT INTO `ruoyi-vue-pro`.`system_menu` (id, name, permission, type, sort, parent_id, path, icon, component, component_name, status, visible, keep_alive, always_show, creator, create_time, updater, update_time, deleted) VALUES
(7040, '维护功能', '', 1, 2, 1, '/radiotherapy/maintain', 'ep:setting', '', '', 1, 1, 0, 1, '1', NOW(), '1', NOW(), 0);

-- ===== 二级目录 =====
-- 7001: 上报不良事件
INSERT INTO `ruoyi-vue-pro`.`system_menu` (id, name, permission, type, sort, parent_id, path, icon, component, component_name, status, visible, keep_alive, always_show, creator, create_time, updater, update_time, deleted) VALUES
(7001, '上报不良事件', '', 1, 1, 7000, '/radiotherapy/report', '', '', '', 1, 1, 0, 0, '1', NOW(), '1', NOW(), 0);

-- 7010: 处理不良事件
INSERT INTO `ruoyi-vue-pro`.`system_menu` (id, name, permission, type, sort, parent_id, path, icon, component, component_name, status, visible, keep_alive, always_show, creator, create_time, updater, update_time, deleted) VALUES
(7010, '处理不良事件', '', 1, 2, 7000, '/radiotherapy/process', '', '', '', 1, 1, 0, 0, '1', NOW(), '1', NOW(), 0);

-- 7020: 监控不良事件
INSERT INTO `ruoyi-vue-pro`.`system_menu` (id, name, permission, type, sort, parent_id, path, icon, component, component_name, status, visible, keep_alive, always_show, creator, create_time, updater, update_time, deleted) VALUES
(7020, '监控不良事件', '', 1, 3, 7000, '/radiotherapy/monitor', '', '', '', 1, 1, 0, 0, '1', NOW(), '1', NOW(), 0);

-- 7030: 分析不良事件
INSERT INTO `ruoyi-vue-pro`.`system_menu` (id, name, permission, type, sort, parent_id, path, icon, component, component_name, status, visible, keep_alive, always_show, creator, create_time, updater, update_time, deleted) VALUES
(7030, '分析不良事件', '', 1, 4, 7000, '/radiotherapy/analysis', '', '', '', 1, 1, 0, 0, '1', NOW(), '1', NOW(), 0);

-- ===== 三级菜单: 上报不良事件 =====
INSERT INTO `ruoyi-vue-pro`.`system_menu` (id, name, permission, type, sort, parent_id, path, icon, component, component_name, status, visible, keep_alive, always_show, creator, create_time, updater, update_time, deleted) VALUES
(7002, '上报事件', '', 2, 1, 7001, 'submit-event', 'ep:edit-pen', 'radiotherapy/submit-event/index', '', 1, 1, 0, 0, '1', NOW(), '1', NOW(), 0),
(7003, '我的报告', '', 2, 2, 7001, 'my-reports', 'ep:document', 'radiotherapy/my-reports/index', '', 1, 1, 0, 0, '1', NOW(), '1', NOW(), 0);

-- ===== 三级菜单: 处理不良事件 =====
INSERT INTO `ruoyi-vue-pro`.`system_menu` (id, name, permission, type, sort, parent_id, path, icon, component, component_name, status, visible, keep_alive, always_show, creator, create_time, updater, update_time, deleted) VALUES
(7011, '科室处理', '', 2, 1, 7010, 'dept-process', 'ep:office-building', 'radiotherapy/dept-process/index', '', 1, 1, 0, 0, '1', NOW(), '1', NOW(), 0),
(7012, '职能部门处理', '', 2, 2, 7010, 'func-process', 'ep:briefcase', 'radiotherapy/func-process/index', '', 1, 1, 0, 0, '1', NOW(), '1', NOW(), 0),
(7013, '院领导处理', '', 2, 3, 7010, 'leader-process', 'ep:user-filled', 'radiotherapy/leader-process/index', '', 1, 1, 0, 0, '1', NOW(), '1', NOW(), 0),
(7014, '质量委员会处理', '', 2, 4, 7010, 'committee-process', 'ep:avatar', 'radiotherapy/committee-process/index', '', 1, 1, 0, 0, '1', NOW(), '1', NOW(), 0),
(7015, '事件查询', '', 2, 5, 7010, 'event-query', 'ep:search', 'radiotherapy/event-query/index', '', 1, 1, 0, 0, '1', NOW(), '1', NOW(), 0),
(7016, '事件追踪', '', 2, 6, 7010, 'event-track', 'ep:connection', 'radiotherapy/event-track/index', '', 1, 1, 0, 0, '1', NOW(), '1', NOW(), 0);

-- ===== 三级菜单: 监控不良事件 =====
INSERT INTO `ruoyi-vue-pro`.`system_menu` (id, name, permission, type, sort, parent_id, path, icon, component, component_name, status, visible, keep_alive, always_show, creator, create_time, updater, update_time, deleted) VALUES
(7021, '事件监控', '', 2, 1, 7020, 'event-monitor', 'ep:monitor', 'radiotherapy/event-monitor/index', '', 1, 1, 0, 0, '1', NOW(), '1', NOW(), 0);

-- ===== 三级菜单: 分析不良事件 =====
INSERT INTO `ruoyi-vue-pro`.`system_menu` (id, name, permission, type, sort, parent_id, path, icon, component, component_name, status, visible, keep_alive, always_show, creator, create_time, updater, update_time, deleted) VALUES
(7031, '指标分析', '', 2, 1, 7030, 'indicator-analysis', 'ep:data-analysis', 'radiotherapy/indicator-analysis/index', '', 1, 1, 0, 0, '1', NOW(), '1', NOW(), 0);

-- ===== 三级菜单: 维护功能 =====
INSERT INTO `ruoyi-vue-pro`.`system_menu` (id, name, permission, type, sort, parent_id, path, icon, component, component_name, status, visible, keep_alive, always_show, creator, create_time, updater, update_time, deleted) VALUES
(7041, '报告单模板', '', 2, 1, 7040, 'template', 'ep:document', 'radiotherapy/template/index', '', 1, 1, 0, 0, '1', NOW(), '1', NOW(), 0),
(7042, '报告单项配置', '', 2, 2, 7040, 'template-item', 'ep:list', 'radiotherapy/template-item/index', '', 1, 1, 0, 0, '1', NOW(), '1', NOW(), 0),
(7043, '质量委员会', '', 2, 3, 7040, 'committee', 'ep:avatar', 'radiotherapy/committee/index', '', 1, 1, 0, 0, '1', NOW(), '1', NOW(), 0);

-- ===== 角色菜单授权 =====

-- 超级管理员(1): 全部新菜单
INSERT INTO `ruoyi-vue-pro`.`system_role_menu` (role_id, menu_id, creator, create_time, updater, update_time)
SELECT 1, id, '1', NOW(), '1', NOW() FROM `ruoyi-vue-pro`.`system_menu` WHERE id BETWEEN 7000 AND 7043 AND type IN (1,2) AND deleted=0;

-- 上报人(200): 上报事件 + 我的报告
INSERT INTO `ruoyi-vue-pro`.`system_role_menu` (role_id, menu_id, creator, create_time, updater, update_time) VALUES
(200, 7000, '1', NOW(), '1', NOW()),
(200, 7001, '1', NOW(), '1', NOW()),
(200, 7002, '1', NOW(), '1', NOW()),
(200, 7003, '1', NOW(), '1', NOW());

-- 科室负责人(201): 上报 + 科室处理
INSERT INTO `ruoyi-vue-pro`.`system_role_menu` (role_id, menu_id, creator, create_time, updater, update_time) VALUES
(201, 7000, '1', NOW(), '1', NOW()),
(201, 7001, '1', NOW(), '1', NOW()),
(201, 7002, '1', NOW(), '1', NOW()),
(201, 7003, '1', NOW(), '1', NOW()),
(201, 7010, '1', NOW(), '1', NOW()),
(201, 7011, '1', NOW(), '1', NOW());

-- 职能部门负责人(202): 上报 + 职能部门处理 + 查询 + 追踪
INSERT INTO `ruoyi-vue-pro`.`system_role_menu` (role_id, menu_id, creator, create_time, updater, update_time) VALUES
(202, 7000, '1', NOW(), '1', NOW()),
(202, 7001, '1', NOW(), '1', NOW()),
(202, 7002, '1', NOW(), '1', NOW()),
(202, 7003, '1', NOW(), '1', NOW()),
(202, 7010, '1', NOW(), '1', NOW()),
(202, 7012, '1', NOW(), '1', NOW()),
(202, 7015, '1', NOW(), '1', NOW()),
(202, 7016, '1', NOW(), '1', NOW());

-- 院领导(203): 院领导处理 + 事件查询
INSERT INTO `ruoyi-vue-pro`.`system_role_menu` (role_id, menu_id, creator, create_time, updater, update_time) VALUES
(203, 7000, '1', NOW(), '1', NOW()),
(203, 7010, '1', NOW(), '1', NOW()),
(203, 7013, '1', NOW(), '1', NOW()),
(203, 7015, '1', NOW(), '1', NOW());

-- 质量委员会成员(204): 委员会处理 + 事件查询
INSERT INTO `ruoyi-vue-pro`.`system_role_menu` (role_id, menu_id, creator, create_time, updater, update_time) VALUES
(204, 7000, '1', NOW(), '1', NOW()),
(204, 7010, '1', NOW(), '1', NOW()),
(204, 7014, '1', NOW(), '1', NOW()),
(204, 7015, '1', NOW(), '1', NOW());

-- 超级管理员也获得维护功能
INSERT INTO `ruoyi-vue-pro`.`system_role_menu` (role_id, menu_id, creator, create_time, updater, update_time) VALUES
(1, 7040, '1', NOW(), '1', NOW()),
(1, 7041, '1', NOW(), '1', NOW()),
(1, 7042, '1', NOW(), '1', NOW()),
(1, 7043, '1', NOW(), '1', NOW());

COMMIT;
