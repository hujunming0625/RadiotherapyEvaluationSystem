CREATE TABLE IF NOT EXISTS `ae_event_notify` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `event_id` bigint NOT NULL COMMENT '事件ID',
  `dept_id` bigint DEFAULT NULL COMMENT '告知科室ID',
  `notify_user_id` bigint DEFAULT NULL COMMENT '告知人ID',
  `content` text COMMENT '告知内容',
  `status` tinyint NOT NULL DEFAULT 0 COMMENT '状态 0=未读 1=已读',
  `creator` varchar(64) DEFAULT '',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updater` varchar(64) DEFAULT '',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleted` bit(1) NOT NULL DEFAULT b'0',
  `tenant_id` bigint NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `idx_event_id` (`event_id`),
  KEY `idx_dept_id` (`dept_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='事件告知表';
