-- ============================================================
-- 菜单精简脚本（最终版）
-- 保留：
--   系统管理(1) -> 用户管理(100), 角色管理(101), 菜单管理(102), 部门管理(103), 字典管理(105)
--   不良事件管理(7000) -> 全部子菜单
-- 删除：其他所有菜单
-- ============================================================

START TRANSACTION;

-- ============================================================
-- PHASE 1: 删除 system_role_menu 关联数据
-- ============================================================

-- 1a. 维护功能及其子菜单
DELETE FROM system_role_menu WHERE menu_id IN (7040, 7041, 7042, 7043);

-- 1b. 基础设施及其子菜单（显式ID）
DELETE FROM system_role_menu WHERE menu_id IN (
  2, 106, 110, 114, 115, 116, 2740, 111, 112, 113
);

-- 1c. 基础设施下的按钮权限（动态查找）
DELETE FROM system_role_menu WHERE menu_id IN (
  SELECT id FROM system_menu WHERE deleted = 0
    AND parent_id IN (2, 106, 110, 114, 115, 116, 2740, 111, 112, 113)
    AND type = 3
);

-- 1d. 系统管理中要删除的子菜单
DELETE FROM system_role_menu WHERE menu_id IN (
  104, 108, 1224, 1261, 2083, 2447, 2739
);

-- 1e. 上述菜单的按钮权限（动态查找）
DELETE FROM system_role_menu WHERE menu_id IN (
  SELECT id FROM system_menu WHERE deleted = 0
    AND parent_id IN (104, 108, 1224, 1261, 2083, 2447, 2739)
    AND type = 3
);

-- 1f. 维护功能叶子菜单的按钮权限
DELETE FROM system_role_menu WHERE menu_id IN (
  SELECT id FROM system_menu WHERE deleted = 0
    AND parent_id IN (7041, 7042, 7043)
    AND type = 3
);

-- 1g. 审计日志的子菜单（操作日志、登录日志）
DELETE FROM system_role_menu WHERE menu_id IN (
  SELECT id FROM system_menu WHERE deleted = 0 AND parent_id = 108
);


-- ============================================================
-- PHASE 2: 删除 type=3 按钮权限（必须在父菜单之前删除）
-- ============================================================

DELETE FROM system_menu WHERE deleted = 0
  AND parent_id IN (7041, 7042, 7043) AND type = 3;

DELETE FROM system_menu WHERE deleted = 0
  AND parent_id IN (2, 106, 110, 114, 115, 116, 2740, 111, 112, 113)
  AND type = 3;

DELETE FROM system_menu WHERE deleted = 0
  AND parent_id IN (104, 108, 1224, 1261, 2083, 2447, 2739)
  AND type = 3;


-- ============================================================
-- PHASE 3: 删除叶子菜单和子目录
-- ============================================================

-- 审计日志的子菜单（操作日志、登录日志）
DELETE FROM system_menu WHERE deleted = 0 AND parent_id = 108;

-- 监控中心的子菜单
DELETE FROM system_menu WHERE deleted = 0 AND parent_id = 2740;

-- 维护功能的子菜单
DELETE FROM system_menu WHERE deleted = 0 AND parent_id = 7040;


-- ============================================================
-- PHASE 4: 删除中间目录节点
-- ============================================================

DELETE FROM system_menu WHERE deleted = 0 AND id IN (7040, 2740, 108);


-- ============================================================
-- PHASE 5: 删除顶级菜单和独立菜单
-- ============================================================

-- 基础设施（顶级）
DELETE FROM system_menu WHERE deleted = 0 AND id = 2;

-- 基础设施下的独立叶子菜单
DELETE FROM system_menu WHERE deleted = 0
  AND id IN (106, 110, 114, 115, 116, 111, 112, 113);

-- 系统管理中要删除的子菜单
DELETE FROM system_menu WHERE deleted = 0
  AND id IN (104, 1224, 1261, 2083, 2447, 2739);


-- ============================================================
-- PHASE 6: 清理孤立的 role_menu 记录
-- ============================================================

DELETE FROM system_role_menu
WHERE menu_id NOT IN (SELECT id FROM system_menu WHERE deleted = 0);


-- ============================================================
-- 验证：显示剩余菜单
-- ============================================================

SELECT '=== 剩余顶级菜单 ===' AS info;
SELECT id, name, type, parent_id, sort FROM system_menu
WHERE deleted = 0 AND parent_id = 0 ORDER BY sort;

SELECT '=== 系统管理子菜单 ===' AS info;
SELECT id, name, type, parent_id, sort FROM system_menu
WHERE deleted = 0 AND parent_id = 1 ORDER BY sort;

SELECT '=== 不良事件管理子菜单 ===' AS info;
SELECT id, name, type, parent_id, sort FROM system_menu
WHERE deleted = 0 AND parent_id = 7000 ORDER BY sort;

SELECT '=== 统计 ===' AS info;
SELECT COUNT(*) AS remaining_menus FROM system_menu WHERE deleted = 0;

COMMIT;
