SET NAMES utf8mb4;

INSERT INTO `ruoyi-vue-pro`.system_role (id, name, code, sort, data_scope, status, type, remark, tenant_id) VALUES
(200, '上报人', 'ROLE_REPORTER', 10, 1, 0, 2, '不良事件上报人员', 0),
(201, '科室负责人', 'ROLE_DEPT_LEADER', 11, 1, 0, 2, '科室负责人，处理本科室事件', 0),
(202, '职能部门负责人', 'ROLE_FUNC_LEADER', 12, 1, 0, 2, '职能部门负责人，处理分配事件', 0),
(203, '院领导', 'ROLE_HOSPITAL_LEADER', 13, 1, 0, 2, '院领导，审核I/II级事件', 0),
(204, '质量委员会成员', 'ROLE_COMMITTEE', 14, 1, 0, 2, '质量委员会成员，参与投票', 0);

INSERT INTO `ruoyi-vue-pro`.system_role_menu (role_id, menu_id, tenant_id) VALUES
(200, 5986, 0), (201, 5986, 0), (202, 5986, 0), (203, 5986, 0), (204, 5986, 0);

INSERT INTO `ruoyi-vue-pro`.system_dept (id, name, parent_id, sort, status, tenant_id) VALUES
(200, '肿瘤放疗科', 0, 1, 0, 0),
(201, '肿瘤内科', 0, 2, 0, 0),
(202, '肿瘤外科', 0, 3, 0, 0),
(203, '护理部', 0, 4, 0, 0),
(204, '药剂科', 0, 5, 0, 0),
(205, '医务处', 0, 6, 0, 0),
(206, '质管办', 0, 7, 0, 0),
(207, '院感管理科', 0, 8, 0, 0),
(208, '设备科', 0, 9, 0, 0),
(209, '后勤保障科', 0, 10, 0, 0);
