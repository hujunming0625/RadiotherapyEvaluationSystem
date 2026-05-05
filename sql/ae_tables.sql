-- ============================================================
-- 放疗效果综合评估系统 — ae_* 业务表 MySQL 建表脚本
-- 执行顺序：在 ruoyi-vue-pro.sql 和 quartz.sql 之后执行
-- ============================================================

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- 1. 报告模板
-- ----------------------------
DROP TABLE IF EXISTS `ae_report_template`;
CREATE TABLE `ae_report_template` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '模板名称',
  `category` varchar(20) NOT NULL COMMENT '模板分类',
  `status` tinyint NOT NULL DEFAULT 1 COMMENT '状态（1启用 0停用）',
  `description` varchar(500) DEFAULT NULL COMMENT '描述',
  `sort` int NOT NULL DEFAULT 0 COMMENT '排序',
  `creator` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updater` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `deleted` tinyint(1) NOT NULL DEFAULT 0 COMMENT '是否删除（0未删除 1已删除）',
  `tenant_id` bigint NOT NULL DEFAULT 0 COMMENT '租户编号',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='报告模板';

-- ----------------------------
-- 2. 报告模板字段项
-- ----------------------------
DROP TABLE IF EXISTS `ae_report_template_item`;
CREATE TABLE `ae_report_template_item` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `template_id` bigint NOT NULL COMMENT '模板ID',
  `label` varchar(100) NOT NULL COMMENT '字段标签',
  `field_type` varchar(20) NOT NULL COMMENT '字段类型（TEXT/TEXTAREA/SELECT/RADIO/CHECKBOX/DATETIME）',
  `required` tinyint NOT NULL DEFAULT 0 COMMENT '是否必填（0否 1是）',
  `options` longtext COMMENT '选项配置（JSON）',
  `dict_type` varchar(100) DEFAULT NULL COMMENT '字典类型',
  `placeholder` varchar(200) DEFAULT NULL COMMENT '占位提示',
  `default_value` varchar(500) DEFAULT NULL COMMENT '默认值',
  `sort` int NOT NULL DEFAULT 0 COMMENT '排序',
  `creator` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updater` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `deleted` tinyint(1) NOT NULL DEFAULT 0 COMMENT '是否删除（0未删除 1已删除）',
  `tenant_id` bigint NOT NULL DEFAULT 0 COMMENT '租户编号',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='报告模板字段项';

-- ----------------------------
-- 3. 不良事件主表
-- ----------------------------
DROP TABLE IF EXISTS `ae_adverse_event`;
CREATE TABLE `ae_adverse_event` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `event_no` varchar(30) NOT NULL COMMENT '事件编号',
  `template_id` bigint NOT NULL COMMENT '报告模板ID',
  `category` varchar(20) NOT NULL COMMENT '事件分类',
  `level` tinyint NOT NULL COMMENT '事件等级',
  `status` tinyint NOT NULL DEFAULT 10 COMMENT '事件状态',
  `reporter_id` bigint NOT NULL COMMENT '上报人ID',
  `reporter_type` tinyint NOT NULL DEFAULT 1 COMMENT '上报人类型',
  `report_time` datetime NOT NULL COMMENT '上报时间',
  `dept_id` bigint NOT NULL COMMENT '上报科室ID',
  `description` longtext COMMENT '事件描述',
  `form_data` longtext COMMENT '表单数据（JSON）',
  `current_handler_id` bigint DEFAULT NULL COMMENT '当前处理人ID',
  `current_dept_id` bigint DEFAULT NULL COMMENT '当前处理科室ID',
  `report_mode` tinyint NOT NULL DEFAULT 1 COMMENT '上报方式',
  `creator` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updater` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `deleted` tinyint(1) NOT NULL DEFAULT 0 COMMENT '是否删除（0未删除 1已删除）',
  `tenant_id` bigint NOT NULL DEFAULT 0 COMMENT '租户编号',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_event_no` (`event_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='不良事件';

-- ----------------------------
-- 4. 事件处理流程
-- ----------------------------
DROP TABLE IF EXISTS `ae_event_flow`;
CREATE TABLE `ae_event_flow` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `event_id` bigint NOT NULL COMMENT '事件ID',
  `from_status` tinyint NOT NULL COMMENT '原状态',
  `to_status` tinyint NOT NULL COMMENT '目标状态',
  `handler_id` bigint NOT NULL COMMENT '处理人ID',
  `action` varchar(20) NOT NULL COMMENT '处理动作',
  `opinion` longtext COMMENT '处理意见',
  `cause` varchar(50) DEFAULT NULL COMMENT '事件原因',
  `damage_level` tinyint DEFAULT NULL COMMENT '损害等级',
  `need_track` tinyint DEFAULT NULL COMMENT '是否需要追踪',
  `transfer_dept_id` bigint DEFAULT NULL COMMENT '转交科室ID',
  `handle_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '处理时间',
  `creator` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updater` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `deleted` tinyint(1) NOT NULL DEFAULT 0 COMMENT '是否删除（0未删除 1已删除）',
  `tenant_id` bigint NOT NULL DEFAULT 0 COMMENT '租户编号',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='事件处理流程';

-- ----------------------------
-- 5. 事件追踪
-- ----------------------------
DROP TABLE IF EXISTS `ae_event_track`;
CREATE TABLE `ae_event_track` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `event_id` bigint NOT NULL COMMENT '事件ID',
  `track_time` datetime NOT NULL COMMENT '追踪时间',
  `remind_time` datetime DEFAULT NULL COMMENT '提醒时间',
  `content` longtext COMMENT '追踪内容',
  `tracker_id` bigint NOT NULL COMMENT '追踪人ID',
  `status` tinyint NOT NULL DEFAULT 1 COMMENT '状态',
  `creator` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updater` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `deleted` tinyint(1) NOT NULL DEFAULT 0 COMMENT '是否删除（0未删除 1已删除）',
  `tenant_id` bigint NOT NULL DEFAULT 0 COMMENT '租户编号',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='事件追踪';

-- ----------------------------
-- 6. 质管委员会
-- ----------------------------
DROP TABLE IF EXISTS `ae_committee`;
CREATE TABLE `ae_committee` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '委员会名称',
  `status` tinyint NOT NULL DEFAULT 1 COMMENT '状态（1启用 0停用）',
  `description` varchar(500) DEFAULT NULL COMMENT '描述',
  `creator` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updater` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `deleted` tinyint(1) NOT NULL DEFAULT 0 COMMENT '是否删除（0未删除 1已删除）',
  `tenant_id` bigint NOT NULL DEFAULT 0 COMMENT '租户编号',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='质管委员会';

-- ----------------------------
-- 7. 委员会成员
-- ----------------------------
DROP TABLE IF EXISTS `ae_committee_member`;
CREATE TABLE `ae_committee_member` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `committee_id` bigint NOT NULL COMMENT '委员会ID',
  `user_id` bigint NOT NULL COMMENT '用户ID',
  `role_type` tinyint NOT NULL COMMENT '角色类型',
  `creator` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updater` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `deleted` tinyint(1) NOT NULL DEFAULT 0 COMMENT '是否删除（0未删除 1已删除）',
  `tenant_id` bigint NOT NULL DEFAULT 0 COMMENT '租户编号',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='委员会成员';

-- ----------------------------
-- 8. 委员会投票
-- ----------------------------
DROP TABLE IF EXISTS `ae_committee_vote`;
CREATE TABLE `ae_committee_vote` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `event_id` bigint NOT NULL COMMENT '事件ID',
  `committee_id` bigint NOT NULL COMMENT '委员会ID',
  `user_id` bigint NOT NULL COMMENT '投票人ID',
  `vote` tinyint NOT NULL COMMENT '投票结果',
  `opinion` longtext COMMENT '投票意见',
  `vote_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '投票时间',
  `creator` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updater` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `deleted` tinyint(1) NOT NULL DEFAULT 0 COMMENT '是否删除（0未删除 1已删除）',
  `tenant_id` bigint NOT NULL DEFAULT 0 COMMENT '租户编号',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='委员会投票';

SET FOREIGN_KEY_CHECKS = 1;
