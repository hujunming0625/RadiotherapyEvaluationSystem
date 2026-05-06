-- ============================================================
-- 菜单精简脚本：删除无关模块菜单
-- 保留：不良事件管理 (7000-7043) + 系统管理 (框架自带)
-- ============================================================

-- 先删除 system_role_menu 中的关联数据
DELETE FROM system_role_menu WHERE menu_id IN (
  SELECT id FROM system_menu WHERE deleted = 0 AND (
    -- BPM 工作流
    component LIKE 'bpm/%'
    OR path LIKE '/bpm%'
    OR name IN ('工作流程', '流程管理')
    -- 商城
    OR component LIKE 'mall/%'
    OR name LIKE '%商城%'
    -- CRM
    OR component LIKE 'crm/%'
    OR name LIKE '%CRM%'
    -- AI
    OR component LIKE 'ai/%'
    OR name LIKE '%AI%' OR name LIKE '%大模型%'
    -- IoT
    OR component LIKE 'iot/%'
    OR name LIKE '%IoT%' OR name LIKE '%物联网%'
    -- MES
    OR component LIKE 'mes/%'
    OR name LIKE '%MES%' OR name LIKE '%制造%'
    -- ERP
    OR component LIKE 'erp/%'
    OR name LIKE '%ERP%'
    -- 支付
    OR component LIKE 'pay/%'
    OR name LIKE '%支付%' OR name LIKE '%收银%'
    -- 公众号
    OR component LIKE 'mp/%'
    OR name LIKE '%公众号%'
    -- 会员
    OR component LIKE 'member/%'
    OR name LIKE '%会员%'
    -- 报表
    OR name LIKE '%报表%'
  )
);

-- 删除菜单本身
DELETE FROM system_menu WHERE deleted = 0 AND (
  component LIKE 'bpm/%' OR path LIKE '/bpm%'
  OR component LIKE 'mall/%' OR name LIKE '%商城%'
  OR component LIKE 'crm/%' OR name LIKE '%CRM%'
  OR component LIKE 'ai/%' OR name LIKE '%AI%' OR name LIKE '%大模型%'
  OR component LIKE 'iot/%' OR name LIKE '%IoT%' OR name LIKE '%物联网%'
  OR component LIKE 'mes/%' OR name LIKE '%MES%' OR name LIKE '%制造%'
  OR component LIKE 'erp/%' OR name LIKE '%ERP%'
  OR component LIKE 'pay/%' OR name LIKE '%支付%' OR name LIKE '%收银%'
  OR component LIKE 'mp/%' OR name LIKE '%公众号%'
  OR component LIKE 'member/%' OR name LIKE '%会员%'
  OR name LIKE '%报表%'
);

-- 清理空的顶级目录（无子菜单的目录）
-- 注意：使用软删除条件
