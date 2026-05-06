-- ============================================================
-- 菜单二次清理脚本（白名单方式）
-- 策略：只保留需要的菜单，删除其余所有
-- ============================================================

START TRANSACTION;

-- ============================================================
-- PHASE 1: 创建临时表，存放所有需要保留的菜单 ID
-- ============================================================

DROP TEMPORARY TABLE IF EXISTS tmp_keep_menus;

CREATE TEMPORARY TABLE tmp_keep_menus AS
  -- 白名单菜单本身
  SELECT id FROM system_menu WHERE deleted = 0 AND id IN (
    1, 100, 101, 102, 103, 105,
    7000, 7002, 7003, 7011, 7012, 7013, 7014, 7015, 7016, 7021, 7031
  )
  UNION
  -- 白名单菜单的 type=3 按钮子菜单
  SELECT id FROM system_menu WHERE deleted = 0 AND type = 3
    AND parent_id IN (
      1, 100, 101, 102, 103, 105,
      7000, 7002, 7003, 7011, 7012, 7013, 7014, 7015, 7016, 7021, 7031
    );

-- ============================================================
-- PHASE 2: 删除不属于保留集合的 role_menu 关联
-- ============================================================

DELETE FROM system_role_menu WHERE menu_id NOT IN (
  SELECT id FROM tmp_keep_menus
);

-- ============================================================
-- PHASE 3: 删除不属于保留集合的菜单
-- ============================================================

DELETE FROM system_menu WHERE deleted = 0 AND id NOT IN (
  SELECT id FROM tmp_keep_menus
);

-- ============================================================
-- PHASE 4: 清理临时表
-- ============================================================

DROP TEMPORARY TABLE IF EXISTS tmp_keep_menus;

-- ============================================================
-- 验证
-- ============================================================

SELECT '=== 剩余菜单总数 ===' AS info;
SELECT COUNT(*) AS total FROM system_menu WHERE deleted = 0;

SELECT '=== 顶级菜单 ===' AS info;
SELECT id, name, type, parent_id, sort FROM system_menu
WHERE deleted = 0 AND parent_id = 0 ORDER BY sort;

SELECT '=== 系统管理子菜单 ===' AS info;
SELECT id, name, type, parent_id, sort FROM system_menu
WHERE deleted = 0 AND parent_id = 1 ORDER BY sort;

SELECT '=== 不良事件管理子菜单 ===' AS info;
SELECT id, name, type, parent_id, sort FROM system_menu
WHERE deleted = 0 AND parent_id = 7000 ORDER BY sort;

SELECT '=== 不属于白名单的残留菜单 ===' AS info;
SELECT id, name, type, parent_id FROM system_menu
WHERE deleted = 0
  AND id NOT IN (
    1, 100, 101, 102, 103, 105,
    7000, 7002, 7003, 7011, 7012, 7013, 7014, 7015, 7016, 7021, 7031
  )
  AND NOT (type = 3 AND parent_id IN (
    1, 100, 101, 102, 103, 105,
    7000, 7002, 7003, 7011, 7012, 7013, 7014, 7015, 7016, 7021, 7031
  ));

COMMIT;
