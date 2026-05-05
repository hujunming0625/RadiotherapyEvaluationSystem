-- 摊平菜单结构：删除中间分组目录，所有页面直挂顶级目录下
START TRANSACTION;

-- 1. 删除旧角色授权
DELETE FROM `ruoyi-vue-pro`.`system_role_menu` WHERE menu_id BETWEEN 7000 AND 7043;

-- 2. 删除中间分组目录
DELETE FROM `ruoyi-vue-pro`.`system_menu` WHERE id IN (7001, 7010, 7020, 7030);

-- 3. 将所有叶子菜单的 parent_id 改为 7000
UPDATE `ruoyi-vue-pro`.`system_menu` SET parent_id=7000 WHERE id IN (7002, 7003, 7011, 7012, 7013, 7014, 7015, 7016, 7021, 7031);

-- 4. 更新三级菜单的 path 确保正确（去冗余前缀）
UPDATE `ruoyi-vue-pro`.`system_menu` SET path='submit-event' WHERE id=7002;
UPDATE `ruoyi-vue-pro`.`system_menu` SET path='my-reports' WHERE id=7003;
UPDATE `ruoyi-vue-pro`.`system_menu` SET path='dept-process' WHERE id=7011;
UPDATE `ruoyi-vue-pro`.`system_menu` SET path='func-process' WHERE id=7012;
UPDATE `ruoyi-vue-pro`.`system_menu` SET path='leader-process' WHERE id=7013;
UPDATE `ruoyi-vue-pro`.`system_menu` SET path='committee-process' WHERE id=7014;
UPDATE `ruoyi-vue-pro`.`system_menu` SET path='event-query' WHERE id=7015;
UPDATE `ruoyi-vue-pro`.`system_menu` SET path='event-track' WHERE id=7016;
UPDATE `ruoyi-vue-pro`.`system_menu` SET path='event-monitor' WHERE id=7021;
UPDATE `ruoyi-vue-pro`.`system_menu` SET path='indicator-analysis' WHERE id=7031;

-- 5. 更新 sort 排序
UPDATE `ruoyi-vue-pro`.`system_menu` SET sort=1 WHERE id=7002;
UPDATE `ruoyi-vue-pro`.`system_menu` SET sort=2 WHERE id=7003;
UPDATE `ruoyi-vue-pro`.`system_menu` SET sort=3 WHERE id=7011;
UPDATE `ruoyi-vue-pro`.`system_menu` SET sort=4 WHERE id=7012;
UPDATE `ruoyi-vue-pro`.`system_menu` SET sort=5 WHERE id=7013;
UPDATE `ruoyi-vue-pro`.`system_menu` SET sort=6 WHERE id=7014;
UPDATE `ruoyi-vue-pro`.`system_menu` SET sort=7 WHERE id=7015;
UPDATE `ruoyi-vue-pro`.`system_menu` SET sort=8 WHERE id=7016;
UPDATE `ruoyi-vue-pro`.`system_menu` SET sort=9 WHERE id=7021;
UPDATE `ruoyi-vue-pro`.`system_menu` SET sort=10 WHERE id=7031;

-- 6. 维护功能(7040)确保 path 正确，子菜单也在维护功能下
UPDATE `ruoyi-vue-pro`.`system_menu` SET path='/radiotherapy' WHERE id=7040;
UPDATE `ruoyi-vue-pro`.`system_menu` SET parent_id=7040, sort=1, path='template' WHERE id=7041;
UPDATE `ruoyi-vue-pro`.`system_menu` SET parent_id=7040, sort=2, path='template-item' WHERE id=7042;
UPDATE `ruoyi-vue-pro`.`system_menu` SET parent_id=7040, sort=3, path='committee' WHERE id=7043;

-- 7. 重新授权角色菜单

-- 超级管理员(1): 全部
INSERT INTO `ruoyi-vue-pro`.`system_role_menu` (role_id, menu_id, creator, create_time, updater, update_time)
SELECT 1, id, '1', NOW(), '1', NOW() FROM `ruoyi-vue-pro`.`system_menu` WHERE id IN (7000, 7002, 7003, 7011, 7012, 7013, 7014, 7015, 7016, 7021, 7031, 7040, 7041, 7042, 7043) AND deleted=0;

-- 上报人(200): 上报事件 + 我的报告
INSERT INTO `ruoyi-vue-pro`.`system_role_menu` (role_id, menu_id, creator, create_time, updater, update_time) VALUES
(200, 7000, '1', NOW(), '1', NOW()),
(200, 7002, '1', NOW(), '1', NOW()),
(200, 7003, '1', NOW(), '1', NOW());

-- 科室负责人(201): 上报 + 科室处理
INSERT INTO `ruoyi-vue-pro`.`system_role_menu` (role_id, menu_id, creator, create_time, updater, update_time) VALUES
(201, 7000, '1', NOW(), '1', NOW()),
(201, 7002, '1', NOW(), '1', NOW()),
(201, 7003, '1', NOW(), '1', NOW()),
(201, 7011, '1', NOW(), '1', NOW());

-- 职能部门负责人(202): 上报 + 职能部门处理 + 查询 + 追踪
INSERT INTO `ruoyi-vue-pro`.`system_role_menu` (role_id, menu_id, creator, create_time, updater, update_time) VALUES
(202, 7000, '1', NOW(), '1', NOW()),
(202, 7002, '1', NOW(), '1', NOW()),
(202, 7003, '1', NOW(), '1', NOW()),
(202, 7012, '1', NOW(), '1', NOW()),
(202, 7015, '1', NOW(), '1', NOW()),
(202, 7016, '1', NOW(), '1', NOW());

-- 院领导(203): 院领导处理 + 查询
INSERT INTO `ruoyi-vue-pro`.`system_role_menu` (role_id, menu_id, creator, create_time, updater, update_time) VALUES
(203, 7000, '1', NOW(), '1', NOW()),
(203, 7013, '1', NOW(), '1', NOW()),
(203, 7015, '1', NOW(), '1', NOW());

-- 质量委员会成员(204): 委员会处理 + 查询
INSERT INTO `ruoyi-vue-pro`.`system_role_menu` (role_id, menu_id, creator, create_time, updater, update_time) VALUES
(204, 7000, '1', NOW(), '1', NOW()),
(204, 7014, '1', NOW(), '1', NOW()),
(204, 7015, '1', NOW(), '1', NOW());

COMMIT;
