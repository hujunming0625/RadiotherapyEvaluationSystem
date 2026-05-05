DROP TABLE IF EXISTS infra_api_access_log;
CREATE TABLE infra_api_access_log  (
  id bigint AUTO_INCREMENT ,
  trace_id varchar(64)   NOT NULL DEFAULT '' ,
  user_id bigint NOT NULL DEFAULT 0 ,
  user_type smallint NOT NULL DEFAULT 0 ,
  application_name varchar(50)   NOT NULL ,
  request_method varchar(16)   NOT NULL DEFAULT '' ,
  request_url varchar(255)   NOT NULL DEFAULT '' ,
  request_params clob   NULL ,
  response_body clob   NULL ,
  user_ip varchar(50)   NOT NULL ,
  user_agent varchar(512)   NOT NULL ,
  operate_module varchar(50)   NULL DEFAULT NULL ,
  operate_name varchar(50)   NULL DEFAULT NULL ,
  operate_type smallint NULL DEFAULT 0 ,
  begin_time timestamp NOT NULL ,
  end_time timestamp NOT NULL ,
  duration integer NOT NULL ,
  result_code integer NOT NULL DEFAULT 0 ,
  result_msg varchar(512)   NULL DEFAULT '' ,
  creator varchar(64)   NULL DEFAULT '' ,
  create_time timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ,
  updater varchar(64)   NULL DEFAULT '' ,
  update_time timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP  ,
  deleted boolean NOT NULL DEFAULT FALSE ,
  tenant_id bigint NOT NULL DEFAULT 0 ,
  PRIMARY KEY (id)  
);

DROP TABLE IF EXISTS infra_api_error_log;
CREATE TABLE infra_api_error_log  (
  id bigint AUTO_INCREMENT ,
  trace_id varchar(64)   NOT NULL ,
  user_id bigint NOT NULL DEFAULT 0 ,
  user_type smallint NOT NULL DEFAULT 0 ,
  application_name varchar(50)   NOT NULL ,
  request_method varchar(16)   NOT NULL ,
  request_url varchar(255)   NOT NULL ,
  request_params varchar(8000)   NOT NULL ,
  user_ip varchar(50)   NOT NULL ,
  user_agent varchar(512)   NOT NULL ,
  exception_time timestamp NOT NULL ,
  exception_name varchar(128)   NOT NULL DEFAULT '' ,
  exception_message clob   NOT NULL ,
  exception_root_cause_message clob   NOT NULL ,
  exception_stack_trace clob   NOT NULL ,
  exception_class_name varchar(512)   NOT NULL ,
  exception_file_name varchar(512)   NOT NULL ,
  exception_method_name varchar(512)   NOT NULL ,
  exception_line_number integer NOT NULL ,
  process_status smallint NOT NULL ,
  process_time timestamp NULL DEFAULT NULL ,
  process_user_id integer NULL DEFAULT 0 ,
  creator varchar(64)   NULL DEFAULT '' ,
  create_time timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ,
  updater varchar(64)   NULL DEFAULT '' ,
  update_time timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP  ,
  deleted boolean NOT NULL DEFAULT FALSE ,
  tenant_id bigint NOT NULL DEFAULT 0 ,
  PRIMARY KEY (id)  
);

DROP TABLE IF EXISTS infra_codegen_column;
CREATE TABLE infra_codegen_column  (
  id bigint AUTO_INCREMENT ,
  table_id bigint NOT NULL ,
  column_name varchar(200)   NOT NULL ,
  data_type varchar(100)   NOT NULL ,
  column_comment varchar(500)   NOT NULL ,
  nullable boolean NOT NULL ,
  primary_key boolean NOT NULL ,
  ordinal_position integer NOT NULL ,
  java_type varchar(32)   NOT NULL ,
  java_field varchar(64)   NOT NULL ,
  dict_type varchar(200)   NULL DEFAULT '' ,
  example varchar(64)   NULL DEFAULT NULL ,
  create_operation boolean NOT NULL ,
  update_operation boolean NOT NULL ,
  list_operation boolean NOT NULL ,
  list_operation_condition varchar(32)   NOT NULL DEFAULT '=' ,
  list_operation_result boolean NOT NULL ,
  html_type varchar(32)   NOT NULL ,
  creator varchar(64)   NULL DEFAULT '' ,
  create_time timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ,
  updater varchar(64)   NULL DEFAULT '' ,
  update_time timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP  ,
  deleted boolean NOT NULL DEFAULT FALSE ,
  PRIMARY KEY (id)  
);

DROP TABLE IF EXISTS infra_codegen_table;
CREATE TABLE infra_codegen_table  (
  id bigint AUTO_INCREMENT ,
  data_source_config_id bigint NOT NULL ,
  scene smallint NOT NULL DEFAULT 1 ,
  table_name varchar(200)   NOT NULL DEFAULT '' ,
  table_comment varchar(500)   NOT NULL DEFAULT '' ,
  remark varchar(500)   NULL DEFAULT NULL ,
  module_name varchar(30)   NOT NULL ,
  business_name varchar(30)   NOT NULL ,
  class_name varchar(100)   NOT NULL DEFAULT '' ,
  class_comment varchar(50)   NOT NULL ,
  author varchar(50)   NOT NULL ,
  template_type smallint NOT NULL DEFAULT 1 ,
  front_type smallint NOT NULL ,
  parent_menu_id bigint NULL DEFAULT NULL ,
  master_table_id bigint NULL DEFAULT NULL ,
  sub_join_column_id bigint NULL DEFAULT NULL ,
  sub_join_many boolean NULL DEFAULT NULL ,
  tree_parent_column_id bigint NULL DEFAULT NULL ,
  tree_name_column_id bigint NULL DEFAULT NULL ,
  creator varchar(64)   NULL DEFAULT '' ,
  create_time timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ,
  updater varchar(64)   NULL DEFAULT '' ,
  update_time timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP  ,
  deleted boolean NOT NULL DEFAULT FALSE ,
  PRIMARY KEY (id) 
);

DROP TABLE IF EXISTS infra_config;
CREATE TABLE infra_config  (
  id bigint AUTO_INCREMENT ,
  category varchar(50)   NOT NULL ,
  type smallint NOT NULL ,
  name varchar(100)   NOT NULL DEFAULT '' ,
  config_key varchar(100)   NOT NULL DEFAULT '' ,
  "value" varchar(500)   NOT NULL DEFAULT '' ,
  visible boolean NOT NULL ,
  remark varchar(500)   NULL DEFAULT NULL ,
  creator varchar(64)   NULL DEFAULT '' ,
  create_time timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ,
  updater varchar(64)   NULL DEFAULT '' ,
  update_time timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP  ,
  deleted boolean NOT NULL DEFAULT FALSE ,
  PRIMARY KEY (id)  
);

DROP TABLE IF EXISTS infra_data_source_config;
CREATE TABLE infra_data_source_config  (
  id bigint AUTO_INCREMENT ,
  name varchar(100)   NOT NULL DEFAULT '' ,
  url varchar(1024)   NOT NULL ,
  username varchar(255)   NOT NULL ,
  password varchar(255)   NOT NULL DEFAULT '' ,
  creator varchar(64)   NULL DEFAULT '' ,
  create_time timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ,
  updater varchar(64)   NULL DEFAULT '' ,
  update_time timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP  ,
  deleted boolean NOT NULL DEFAULT FALSE ,
  PRIMARY KEY (id) 
);

DROP TABLE IF EXISTS infra_file;
CREATE TABLE infra_file  (
  id bigint AUTO_INCREMENT ,
  config_id bigint NULL DEFAULT NULL ,
  name varchar(256)   NULL DEFAULT NULL ,
  path varchar(512)   NOT NULL ,
  url varchar(1024)   NOT NULL ,
  type varchar(128)   NULL DEFAULT NULL ,
  size integer NOT NULL ,
  creator varchar(64)   NULL DEFAULT '' ,
  create_time timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ,
  updater varchar(64)   NULL DEFAULT '' ,
  update_time timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP  ,
  deleted boolean NOT NULL DEFAULT FALSE ,
  PRIMARY KEY (id) 
);

DROP TABLE IF EXISTS infra_file_config;
CREATE TABLE infra_file_config  (
  id bigint AUTO_INCREMENT ,
  name varchar(63)   NOT NULL ,
  storage smallint NOT NULL ,
  remark varchar(255)   NULL DEFAULT NULL ,
  master boolean NOT NULL ,
  config varchar(4096)   NOT NULL ,
  creator varchar(64)   NULL DEFAULT '' ,
  create_time timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ,
  updater varchar(64)   NULL DEFAULT '' ,
  update_time timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP  ,
  deleted boolean NOT NULL DEFAULT FALSE ,
  PRIMARY KEY (id) 
);

DROP TABLE IF EXISTS infra_file_content;
CREATE TABLE infra_file_content  (
  id bigint AUTO_INCREMENT ,
  config_id bigint NOT NULL ,
  path varchar(512)   NOT NULL ,
  content mediumblob NOT NULL ,
  creator varchar(64)   NULL DEFAULT '' ,
  create_time timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ,
  updater varchar(64)   NULL DEFAULT '' ,
  update_time timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP  ,
  deleted boolean NOT NULL DEFAULT FALSE ,
  PRIMARY KEY (id)  
);

DROP TABLE IF EXISTS infra_job;
CREATE TABLE infra_job  (
  id bigint AUTO_INCREMENT ,
  name varchar(32)   NOT NULL ,
  status smallint NOT NULL ,
  handler_name varchar(64)   NOT NULL ,
  handler_param varchar(255)   NULL DEFAULT NULL ,
  cron_expression varchar(32)   NOT NULL ,
  retry_count integer NOT NULL DEFAULT 0 ,
  retry_interval integer NOT NULL DEFAULT 0 ,
  monitor_timeout integer NOT NULL DEFAULT 0 ,
  creator varchar(64)   NULL DEFAULT '' ,
  create_time timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ,
  updater varchar(64)   NULL DEFAULT '' ,
  update_time timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP  ,
  deleted boolean NOT NULL DEFAULT FALSE ,
  PRIMARY KEY (id) 
);

DROP TABLE IF EXISTS infra_job_log;
CREATE TABLE infra_job_log  (
  id bigint AUTO_INCREMENT ,
  job_id bigint NOT NULL ,
  handler_name varchar(64)   NOT NULL ,
  handler_param varchar(255)   NULL DEFAULT NULL ,
  execute_index smallint NOT NULL DEFAULT 1 ,
  begin_time timestamp NOT NULL ,
  end_time timestamp NULL DEFAULT NULL ,
  duration integer NULL DEFAULT NULL ,
  status smallint NOT NULL ,
  result varchar(4000)   NULL DEFAULT '' ,
  creator varchar(64)   NULL DEFAULT '' ,
  create_time timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ,
  updater varchar(64)   NULL DEFAULT '' ,
  update_time timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP  ,
  deleted boolean NOT NULL DEFAULT FALSE ,
  PRIMARY KEY (id)   
);

DROP TABLE IF EXISTS system_dept;
CREATE TABLE system_dept  (
  id bigint AUTO_INCREMENT ,
  name varchar(30)   NOT NULL DEFAULT '' ,
  parent_id bigint NOT NULL DEFAULT 0 ,
  sort integer NOT NULL DEFAULT 0 ,
  leader_user_id bigint NULL DEFAULT NULL ,
  phone varchar(11)   NULL DEFAULT NULL ,
  email varchar(50)   NULL DEFAULT NULL ,
  status smallint NOT NULL ,
  creator varchar(64)   NULL DEFAULT '' ,
  create_time timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ,
  updater varchar(64)   NULL DEFAULT '' ,
  update_time timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP  ,
  deleted boolean NOT NULL DEFAULT FALSE ,
  tenant_id bigint NOT NULL DEFAULT 0 ,
  PRIMARY KEY (id) 
);

DROP TABLE IF EXISTS system_dict_data;
CREATE TABLE system_dict_data  (
  id bigint AUTO_INCREMENT ,
  sort integer NOT NULL DEFAULT 0 ,
  label varchar(100)   NOT NULL DEFAULT '' ,
  "value" varchar(100)   NOT NULL DEFAULT '' ,
  dict_type varchar(100)   NOT NULL DEFAULT '' ,
  status smallint NOT NULL DEFAULT 0 ,
  color_type varchar(100)   NULL DEFAULT '' ,
  css_class varchar(100)   NULL DEFAULT '' ,
  remark varchar(500)   NULL DEFAULT NULL ,
  creator varchar(64)   NULL DEFAULT '' ,
  create_time timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ,
  updater varchar(64)   NULL DEFAULT '' ,
  update_time timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP  ,
  deleted boolean NOT NULL DEFAULT FALSE ,
  PRIMARY KEY (id) 
);

DROP TABLE IF EXISTS system_dict_type;
CREATE TABLE system_dict_type  (
  id bigint AUTO_INCREMENT ,
  name varchar(100)   NOT NULL DEFAULT '' ,
  type varchar(100)   NOT NULL DEFAULT '' ,
  status smallint NOT NULL DEFAULT 0 ,
  remark varchar(500)   NULL DEFAULT NULL ,
  creator varchar(64)   NULL DEFAULT '' ,
  create_time timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ,
  updater varchar(64)   NULL DEFAULT '' ,
  update_time timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP  ,
  deleted boolean NOT NULL DEFAULT FALSE ,
  deleted_time timestamp NULL DEFAULT NULL ,
  PRIMARY KEY (id) 
);

DROP TABLE IF EXISTS system_login_log;
CREATE TABLE system_login_log  (
  id bigint AUTO_INCREMENT ,
  log_type bigint NOT NULL ,
  trace_id varchar(64)   NOT NULL DEFAULT '' ,
  user_id bigint NOT NULL DEFAULT 0 ,
  user_type smallint NOT NULL DEFAULT 0 ,
  username varchar(50)   NOT NULL DEFAULT '' ,
  result smallint NOT NULL ,
  user_ip varchar(50)   NOT NULL ,
  user_agent varchar(512)   NOT NULL ,
  creator varchar(64)   NULL DEFAULT '' ,
  create_time timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ,
  updater varchar(64)   NULL DEFAULT '' ,
  update_time timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP  ,
  deleted boolean NOT NULL DEFAULT FALSE ,
  tenant_id bigint NOT NULL DEFAULT 0 ,
  PRIMARY KEY (id)   
);

DROP TABLE IF EXISTS system_mail_account;
CREATE TABLE system_mail_account  (
  id bigint AUTO_INCREMENT ,
  mail varchar(255)   NOT NULL ,
  username varchar(255)   NOT NULL ,
  password varchar(255)   NOT NULL ,
  host varchar(255)   NOT NULL ,
  port integer NOT NULL ,
  ssl_enable boolean NOT NULL DEFAULT FALSE ,
  starttls_enable boolean NOT NULL DEFAULT FALSE ,
  creator varchar(64)   NULL DEFAULT '' ,
  create_time timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ,
  updater varchar(64)   NULL DEFAULT '' ,
  update_time timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP  ,
  deleted boolean NOT NULL DEFAULT FALSE ,
  PRIMARY KEY (id) 
);

DROP TABLE IF EXISTS system_mail_log;
CREATE TABLE system_mail_log  (
  id bigint AUTO_INCREMENT ,
  user_id bigint NULL DEFAULT NULL ,
  user_type smallint NULL DEFAULT NULL ,
  to_mails varchar(1024)   NOT NULL ,
  cc_mails varchar(1024)   NULL DEFAULT NULL ,
  bcc_mails varchar(1024)   NULL DEFAULT NULL ,
  account_id bigint NOT NULL ,
  from_mail varchar(255)   NOT NULL ,
  template_id bigint NOT NULL ,
  template_code varchar(63)   NOT NULL ,
  template_nickname varchar(255)   NULL DEFAULT NULL ,
  template_title varchar(255)   NOT NULL ,
  template_content clob   NOT NULL ,
  template_params varchar(255)   NOT NULL ,
  send_status smallint NOT NULL DEFAULT 0 ,
  send_time timestamp NULL DEFAULT NULL ,
  send_message_id varchar(255)   NULL DEFAULT NULL ,
  send_exception varchar(4096)   NULL DEFAULT NULL ,
  creator varchar(64)   NULL DEFAULT '' ,
  create_time timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ,
  updater varchar(64)   NULL DEFAULT '' ,
  update_time timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP  ,
  deleted boolean NOT NULL DEFAULT FALSE ,
  PRIMARY KEY (id) 
);

DROP TABLE IF EXISTS system_mail_template;
CREATE TABLE system_mail_template  (
  id bigint AUTO_INCREMENT ,
  name varchar(63)   NOT NULL ,
  code varchar(63)   NOT NULL ,
  account_id bigint NOT NULL ,
  nickname varchar(255)   NULL DEFAULT NULL ,
  title varchar(255)   NOT NULL ,
  content varchar(10240)   NOT NULL ,
  params varchar(255)   NOT NULL ,
  status smallint NOT NULL ,
  remark varchar(255)   NULL DEFAULT NULL ,
  creator varchar(64)   NULL DEFAULT '' ,
  create_time timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ,
  updater varchar(64)   NULL DEFAULT '' ,
  update_time timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP  ,
  deleted boolean NOT NULL DEFAULT FALSE ,
  PRIMARY KEY (id) 
);

DROP TABLE IF EXISTS system_menu;
CREATE TABLE system_menu  (
  id bigint AUTO_INCREMENT ,
  name varchar(50)   NOT NULL ,
  permission varchar(100)   NOT NULL DEFAULT '' ,
  type smallint NOT NULL ,
  sort integer NOT NULL DEFAULT 0 ,
  parent_id bigint NOT NULL DEFAULT 0 ,
  path varchar(200)   NULL DEFAULT '' ,
  icon varchar(100)   NULL DEFAULT '#' ,
  component varchar(255)   NULL DEFAULT NULL ,
  component_name varchar(255)   NULL DEFAULT NULL ,
  status smallint NOT NULL DEFAULT 0 ,
  visible boolean NOT NULL DEFAULT TRUE ,
  keep_alive boolean NOT NULL DEFAULT TRUE ,
  always_show boolean NOT NULL DEFAULT TRUE ,
  creator varchar(64)   NULL DEFAULT '' ,
  create_time timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ,
  updater varchar(64)   NULL DEFAULT '' ,
  update_time timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP  ,
  deleted boolean NOT NULL DEFAULT FALSE ,
  PRIMARY KEY (id) 
);

DROP TABLE IF EXISTS system_notice;
CREATE TABLE system_notice  (
  id bigint AUTO_INCREMENT ,
  title varchar(50)   NOT NULL ,
  content clob   NOT NULL ,
  type smallint NOT NULL ,
  status smallint NOT NULL DEFAULT 0 ,
  creator varchar(64)   NULL DEFAULT '' ,
  create_time timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ,
  updater varchar(64)   NULL DEFAULT '' ,
  update_time timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP  ,
  deleted boolean NOT NULL DEFAULT FALSE ,
  tenant_id bigint NOT NULL DEFAULT 0 ,
  PRIMARY KEY (id) 
);

DROP TABLE IF EXISTS system_notify_message;
CREATE TABLE system_notify_message  (
  id bigint AUTO_INCREMENT ,
  user_id bigint NOT NULL ,
  user_type smallint NOT NULL ,
  template_id bigint NOT NULL ,
  template_code varchar(64)   NOT NULL ,
  template_nickname varchar(63)   NOT NULL ,
  template_content varchar(1024)   NOT NULL ,
  template_type integer NOT NULL ,
  template_params varchar(255)   NOT NULL ,
  read_status boolean NOT NULL ,
  read_time timestamp NULL DEFAULT NULL ,
  creator varchar(64)   NULL DEFAULT '' ,
  create_time timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ,
  updater varchar(64)   NULL DEFAULT '' ,
  update_time timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP  ,
  deleted boolean NOT NULL DEFAULT FALSE ,
  tenant_id bigint NOT NULL DEFAULT 0 ,
  PRIMARY KEY (id)  
);

DROP TABLE IF EXISTS system_notify_template;
CREATE TABLE system_notify_template  (
  id bigint AUTO_INCREMENT ,
  name varchar(63)   NOT NULL ,
  code varchar(64)   NOT NULL ,
  nickname varchar(255)   NOT NULL ,
  content varchar(1024)   NOT NULL ,
  type smallint NOT NULL ,
  params varchar(255)   NULL DEFAULT NULL ,
  status smallint NOT NULL ,
  remark varchar(255)   NULL DEFAULT NULL ,
  creator varchar(64)   NULL DEFAULT '' ,
  create_time timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ,
  updater varchar(64)   NULL DEFAULT '' ,
  update_time timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP  ,
  deleted boolean NOT NULL DEFAULT FALSE ,
  PRIMARY KEY (id) 
);

DROP TABLE IF EXISTS system_oauth2_access_token;
CREATE TABLE system_oauth2_access_token  (
  id bigint AUTO_INCREMENT ,
  user_id bigint NOT NULL ,
  user_type smallint NOT NULL ,
  user_info varchar(512)   NOT NULL ,
  access_token varchar(255)   NOT NULL ,
  refresh_token varchar(32)   NOT NULL ,
  client_id varchar(255)   NOT NULL ,
  scopes varchar(255)   NULL DEFAULT NULL ,
  expires_time timestamp NOT NULL ,
  creator varchar(64)   NULL DEFAULT '' ,
  create_time timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ,
  updater varchar(64)   NULL DEFAULT '' ,
  update_time timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP  ,
  deleted boolean NOT NULL DEFAULT FALSE ,
  tenant_id bigint NOT NULL DEFAULT 0 ,
  PRIMARY KEY (id)   
);

DROP TABLE IF EXISTS system_oauth2_approve;
CREATE TABLE system_oauth2_approve  (
  id bigint AUTO_INCREMENT ,
  user_id bigint NOT NULL ,
  user_type smallint NOT NULL ,
  client_id varchar(255)   NOT NULL ,
  scope varchar(255)   NOT NULL DEFAULT '' ,
  approved boolean NOT NULL DEFAULT FALSE ,
  expires_time timestamp NOT NULL ,
  creator varchar(64)   NULL DEFAULT '' ,
  create_time timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ,
  updater varchar(64)   NULL DEFAULT '' ,
  update_time timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP  ,
  deleted boolean NOT NULL DEFAULT FALSE ,
  tenant_id bigint NOT NULL DEFAULT 0 ,
  PRIMARY KEY (id)  
);

DROP TABLE IF EXISTS system_oauth2_client;
CREATE TABLE system_oauth2_client  (
  id bigint AUTO_INCREMENT ,
  client_id varchar(255)   NOT NULL ,
  secret varchar(255)   NOT NULL ,
  name varchar(255)   NOT NULL ,
  logo varchar(255)   NOT NULL ,
  description varchar(255)   NULL DEFAULT NULL ,
  status smallint NOT NULL ,
  access_token_validity_seconds integer NOT NULL ,
  refresh_token_validity_seconds integer NOT NULL ,
  redirect_uris varchar(255)   NOT NULL ,
  authorized_grant_types varchar(255)   NOT NULL ,
  scopes varchar(255)   NULL DEFAULT NULL ,
  auto_approve_scopes varchar(255)   NULL DEFAULT NULL ,
  authorities varchar(255)   NULL DEFAULT NULL ,
  resource_ids varchar(255)   NULL DEFAULT NULL ,
  additional_information varchar(4096)   NULL DEFAULT NULL ,
  creator varchar(64)   NULL DEFAULT '' ,
  create_time timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ,
  updater varchar(64)   NULL DEFAULT '' ,
  update_time timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP  ,
  deleted boolean NOT NULL DEFAULT FALSE ,
  PRIMARY KEY (id)  
);

DROP TABLE IF EXISTS system_oauth2_code;
CREATE TABLE system_oauth2_code  (
  id bigint AUTO_INCREMENT ,
  user_id bigint NOT NULL ,
  user_type smallint NOT NULL ,
  code varchar(32)   NOT NULL ,
  client_id varchar(255)   NOT NULL ,
  scopes varchar(255)   NULL DEFAULT '' ,
  expires_time timestamp NOT NULL ,
  redirect_uri varchar(255)   NULL DEFAULT NULL ,
  state varchar(255)   NOT NULL DEFAULT '' ,
  creator varchar(64)   NULL DEFAULT '' ,
  create_time timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ,
  updater varchar(64)   NULL DEFAULT '' ,
  update_time timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP  ,
  deleted boolean NOT NULL DEFAULT FALSE ,
  tenant_id bigint NOT NULL DEFAULT 0 ,
  PRIMARY KEY (id)  
);

DROP TABLE IF EXISTS system_oauth2_refresh_token;
CREATE TABLE system_oauth2_refresh_token  (
  id bigint AUTO_INCREMENT ,
  user_id bigint NOT NULL ,
  refresh_token varchar(32)   NOT NULL ,
  user_type smallint NOT NULL ,
  client_id varchar(255)   NOT NULL ,
  scopes varchar(255)   NULL DEFAULT NULL ,
  expires_time timestamp NOT NULL ,
  creator varchar(64)   NULL DEFAULT '' ,
  create_time timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ,
  updater varchar(64)   NULL DEFAULT '' ,
  update_time timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP  ,
  deleted boolean NOT NULL DEFAULT FALSE ,
  tenant_id bigint NOT NULL DEFAULT 0 ,
  PRIMARY KEY (id)  
);

DROP TABLE IF EXISTS system_operate_log;
CREATE TABLE system_operate_log  (
  id bigint AUTO_INCREMENT ,
  trace_id varchar(64)   NOT NULL DEFAULT '' ,
  user_id bigint NOT NULL ,
  user_type smallint NOT NULL DEFAULT 0 ,
  type varchar(50)   NOT NULL ,
  sub_type varchar(50)   NOT NULL ,
  biz_id bigint NOT NULL ,
  action varchar(2000)   NOT NULL DEFAULT '' ,
  success boolean NOT NULL DEFAULT TRUE ,
  extra varchar(2000)   NOT NULL DEFAULT '' ,
  request_method varchar(16)   NULL DEFAULT '' ,
  request_url varchar(255)   NULL DEFAULT '' ,
  user_ip varchar(50)   NULL DEFAULT NULL ,
  user_agent varchar(512)   NULL DEFAULT NULL ,
  creator varchar(64)   NULL DEFAULT '' ,
  create_time timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ,
  updater varchar(64)   NULL DEFAULT '' ,
  update_time timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP  ,
  deleted boolean NOT NULL DEFAULT FALSE ,
  tenant_id bigint NOT NULL DEFAULT 0 ,
  PRIMARY KEY (id)   
);

DROP TABLE IF EXISTS system_post;
CREATE TABLE system_post  (
  id bigint AUTO_INCREMENT ,
  code varchar(64)   NOT NULL ,
  name varchar(50)   NOT NULL ,
  sort integer NOT NULL ,
  status smallint NOT NULL ,
  remark varchar(500)   NULL DEFAULT NULL ,
  creator varchar(64)   NULL DEFAULT '' ,
  create_time timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ,
  updater varchar(64)   NULL DEFAULT '' ,
  update_time timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP  ,
  deleted boolean NOT NULL DEFAULT FALSE ,
  tenant_id bigint NOT NULL DEFAULT 0 ,
  PRIMARY KEY (id) 
);

DROP TABLE IF EXISTS system_role;
CREATE TABLE system_role  (
  id bigint AUTO_INCREMENT ,
  name varchar(30)   NOT NULL ,
  code varchar(100)   NOT NULL ,
  sort integer NOT NULL ,
  data_scope smallint NOT NULL DEFAULT 1 ,
  data_scope_dept_ids varchar(500)   NOT NULL DEFAULT '' ,
  status smallint NOT NULL ,
  type smallint NOT NULL ,
  remark varchar(500)   NULL DEFAULT NULL ,
  creator varchar(64)   NULL DEFAULT '' ,
  create_time timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ,
  updater varchar(64)   NULL DEFAULT '' ,
  update_time timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP  ,
  deleted boolean NOT NULL DEFAULT FALSE ,
  tenant_id bigint NOT NULL DEFAULT 0 ,
  PRIMARY KEY (id) 
);

DROP TABLE IF EXISTS system_role_menu;
CREATE TABLE system_role_menu  (
  id bigint AUTO_INCREMENT ,
  role_id bigint NOT NULL ,
  menu_id bigint NOT NULL ,
  creator varchar(64)   NULL DEFAULT '' ,
  create_time timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ,
  updater varchar(64)   NULL DEFAULT '' ,
  update_time timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP  ,
  deleted boolean NOT NULL DEFAULT FALSE ,
  tenant_id bigint NOT NULL DEFAULT 0 ,
  PRIMARY KEY (id)  
);

DROP TABLE IF EXISTS system_sms_channel;
CREATE TABLE system_sms_channel  (
  id bigint AUTO_INCREMENT ,
  signature varchar(12)   NOT NULL ,
  code varchar(63)   NOT NULL ,
  status smallint NOT NULL ,
  remark varchar(255)   NULL DEFAULT NULL ,
  api_key varchar(128)   NOT NULL ,
  api_secret varchar(128)   NULL DEFAULT NULL ,
  callback_url varchar(255)   NULL DEFAULT NULL ,
  creator varchar(64)   NULL DEFAULT '' ,
  create_time timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ,
  updater varchar(64)   NULL DEFAULT '' ,
  update_time timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP  ,
  deleted boolean NOT NULL DEFAULT FALSE ,
  PRIMARY KEY (id) 
);

DROP TABLE IF EXISTS system_sms_code;
CREATE TABLE system_sms_code  (
  id bigint AUTO_INCREMENT ,
  mobile varchar(11)   NOT NULL ,
  code varchar(6)   NOT NULL ,
  create_ip varchar(15)   NOT NULL ,
  scene smallint NOT NULL ,
  today_index smallint NOT NULL ,
  used smallint NOT NULL ,
  used_time timestamp NULL DEFAULT NULL ,
  used_ip varchar(255)   NULL DEFAULT NULL ,
  creator varchar(64)   NULL DEFAULT '' ,
  create_time timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ,
  updater varchar(64)   NULL DEFAULT '' ,
  update_time timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP  ,
  deleted boolean NOT NULL DEFAULT FALSE ,
  tenant_id bigint NOT NULL DEFAULT 0 ,
  PRIMARY KEY (id)   
);

DROP TABLE IF EXISTS system_sms_log;
CREATE TABLE system_sms_log  (
  id bigint AUTO_INCREMENT ,
  channel_id bigint NOT NULL ,
  channel_code varchar(63)   NOT NULL ,
  template_id bigint NOT NULL ,
  template_code varchar(63)   NOT NULL ,
  template_type smallint NOT NULL ,
  template_content varchar(255)   NOT NULL ,
  template_params varchar(255)   NOT NULL ,
  api_template_id varchar(63)   NOT NULL ,
  mobile varchar(11)   NOT NULL ,
  user_id bigint NULL DEFAULT NULL ,
  user_type smallint NULL DEFAULT NULL ,
  send_status smallint NOT NULL DEFAULT 0 ,
  send_time timestamp NULL DEFAULT NULL ,
  api_send_code varchar(63)   NULL DEFAULT NULL ,
  api_send_msg varchar(255)   NULL DEFAULT NULL ,
  api_request_id varchar(255)   NULL DEFAULT NULL ,
  api_serial_no varchar(255)   NULL DEFAULT NULL ,
  receive_status smallint NOT NULL DEFAULT 0 ,
  receive_time timestamp NULL DEFAULT NULL ,
  api_receive_code varchar(63)   NULL DEFAULT NULL ,
  api_receive_msg varchar(255)   NULL DEFAULT NULL ,
  creator varchar(64)   NULL DEFAULT '' ,
  create_time timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ,
  updater varchar(64)   NULL DEFAULT '' ,
  update_time timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP  ,
  deleted boolean NOT NULL DEFAULT FALSE ,
  PRIMARY KEY (id) 
);

DROP TABLE IF EXISTS system_sms_template;
CREATE TABLE system_sms_template  (
  id bigint AUTO_INCREMENT ,
  type smallint NOT NULL ,
  status smallint NOT NULL ,
  code varchar(63)   NOT NULL ,
  name varchar(63)   NOT NULL ,
  content varchar(255)   NOT NULL ,
  params varchar(255)   NOT NULL ,
  remark varchar(255)   NULL DEFAULT NULL ,
  api_template_id varchar(63)   NOT NULL ,
  channel_id bigint NOT NULL ,
  channel_code varchar(63)   NOT NULL ,
  creator varchar(64)   NULL DEFAULT '' ,
  create_time timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ,
  updater varchar(64)   NULL DEFAULT '' ,
  update_time timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP  ,
  deleted boolean NOT NULL DEFAULT FALSE ,
  PRIMARY KEY (id) 
);

DROP TABLE IF EXISTS system_social_client;
CREATE TABLE system_social_client  (
  id bigint AUTO_INCREMENT ,
  name varchar(255)   NOT NULL ,
  social_type smallint NOT NULL ,
  user_type smallint NOT NULL ,
  client_id varchar(255)   NOT NULL ,
  client_secret varchar(255)   NOT NULL ,
  agent_id varchar(255)   NULL DEFAULT NULL ,
  public_key varchar(2048)   NULL DEFAULT NULL ,
  status smallint NOT NULL ,
  creator varchar(64)   NULL DEFAULT '' ,
  create_time timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ,
  updater varchar(64)   NULL DEFAULT '' ,
  update_time timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP  ,
  deleted boolean NOT NULL DEFAULT FALSE ,
  tenant_id bigint NOT NULL DEFAULT 0 ,
  PRIMARY KEY (id) 
);

DROP TABLE IF EXISTS system_social_user;
CREATE TABLE system_social_user  (
  id bigint UNSIGNED NOT NULL AUTO_INCREMENT ,
  type smallint NOT NULL ,
  openid varchar(32)   NOT NULL ,
  token varchar(256)   NULL DEFAULT NULL ,
  raw_token_info varchar(1024)   NOT NULL ,
  nickname varchar(32)   NOT NULL ,
  avatar varchar(255)   NULL DEFAULT NULL ,
  raw_user_info varchar(1024)   NOT NULL ,
  code varchar(256)   NOT NULL ,
  state varchar(256)   NULL DEFAULT NULL ,
  creator varchar(64)   NULL DEFAULT '' ,
  create_time timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ,
  updater varchar(64)   NULL DEFAULT '' ,
  update_time timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP  ,
  deleted boolean NOT NULL DEFAULT FALSE ,
  tenant_id bigint NOT NULL DEFAULT 0 ,
  PRIMARY KEY (id)   
);

DROP TABLE IF EXISTS system_social_user_bind;
CREATE TABLE system_social_user_bind  (
  id bigint UNSIGNED NOT NULL AUTO_INCREMENT ,
  user_id bigint NOT NULL ,
  user_type smallint NOT NULL ,
  social_type smallint NOT NULL ,
  social_user_id bigint NOT NULL ,
  creator varchar(64)   NULL DEFAULT '' ,
  create_time timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ,
  updater varchar(64)   NULL DEFAULT '' ,
  update_time timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP  ,
  deleted boolean NOT NULL DEFAULT FALSE ,
  tenant_id bigint NOT NULL DEFAULT 0 ,
  PRIMARY KEY (id)  
);

DROP TABLE IF EXISTS system_tenant;
CREATE TABLE system_tenant  (
  id bigint AUTO_INCREMENT ,
  name varchar(30)   NOT NULL ,
  contact_user_id bigint NULL DEFAULT NULL ,
  contact_name varchar(30)   NOT NULL ,
  contact_mobile varchar(500)   NULL DEFAULT NULL ,
  status smallint NOT NULL DEFAULT 0 ,
  websites varchar(1024)   NULL DEFAULT '' ,
  package_id bigint NOT NULL ,
  expire_time timestamp NOT NULL ,
  account_count integer NOT NULL ,
  creator varchar(64)   NOT NULL DEFAULT '' ,
  create_time timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ,
  updater varchar(64)   NULL DEFAULT '' ,
  update_time timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP  ,
  deleted boolean NOT NULL DEFAULT FALSE ,
  PRIMARY KEY (id) 
);

DROP TABLE IF EXISTS system_tenant_package;
CREATE TABLE system_tenant_package  (
  id bigint AUTO_INCREMENT ,
  name varchar(30)   NOT NULL ,
  status smallint NOT NULL DEFAULT 0 ,
  remark varchar(256)   NULL DEFAULT '' ,
  menu_ids varchar(4096)   NOT NULL ,
  creator varchar(64)   NOT NULL DEFAULT '' ,
  create_time timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ,
  updater varchar(64)   NULL DEFAULT '' ,
  update_time timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP  ,
  deleted boolean NOT NULL DEFAULT FALSE ,
  PRIMARY KEY (id) 
);

DROP TABLE IF EXISTS system_user_post;
CREATE TABLE system_user_post  (
  id bigint AUTO_INCREMENT ,
  user_id bigint NOT NULL DEFAULT 0 ,
  post_id bigint NOT NULL DEFAULT 0 ,
  creator varchar(64)   NULL DEFAULT '' ,
  create_time timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ,
  updater varchar(64)   NULL DEFAULT '' ,
  update_time timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP  ,
  deleted boolean NOT NULL DEFAULT FALSE ,
  tenant_id bigint NOT NULL DEFAULT 0 ,
  PRIMARY KEY (id) 
);

DROP TABLE IF EXISTS system_user_role;
CREATE TABLE system_user_role  (
  id bigint AUTO_INCREMENT ,
  user_id bigint NOT NULL ,
  role_id bigint NOT NULL ,
  creator varchar(64)   NULL DEFAULT '' ,
  create_time timestamp NULL DEFAULT CURRENT_TIMESTAMP ,
  updater varchar(64)   NULL DEFAULT '' ,
  update_time timestamp NULL DEFAULT CURRENT_TIMESTAMP  ,
  deleted boolean NULL DEFAULT FALSE ,
  tenant_id bigint NOT NULL DEFAULT 0 ,
  PRIMARY KEY (id)  
);

DROP TABLE IF EXISTS system_users;
CREATE TABLE system_users  (
  id bigint AUTO_INCREMENT ,
  username varchar(30)   NOT NULL ,
  password varchar(100)   NOT NULL DEFAULT '' ,
  nickname varchar(30)   NOT NULL ,
  remark varchar(500)   NULL DEFAULT NULL ,
  dept_id bigint NULL DEFAULT NULL ,
  post_ids varchar(255)   NULL DEFAULT NULL ,
  email varchar(50)   NULL DEFAULT '' ,
  mobile varchar(11)   NULL DEFAULT '' ,
  sex smallint NULL DEFAULT 0 ,
  avatar varchar(512)   NULL DEFAULT '' ,
  status smallint NOT NULL DEFAULT 0 ,
  login_ip varchar(50)   NULL DEFAULT '' ,
  login_date timestamp NULL DEFAULT NULL ,
  creator varchar(64)   NULL DEFAULT '' ,
  create_time timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ,
  updater varchar(64)   NULL DEFAULT '' ,
  update_time timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP  ,
  deleted boolean NOT NULL DEFAULT FALSE ,
  tenant_id bigint NOT NULL DEFAULT 0 ,
  PRIMARY KEY (id)     
);

DROP TABLE IF EXISTS yudao_demo01_contact;
CREATE TABLE yudao_demo01_contact  (
  id bigint AUTO_INCREMENT ,
  name varchar(100)   NOT NULL DEFAULT '' ,
  sex smallint(1) NOT NULL ,
  birthday timestamp NOT NULL ,
  description varchar(255)   NOT NULL ,
  avatar varchar(512)   NULL DEFAULT NULL ,
  creator varchar(64)   NULL DEFAULT '' ,
  create_time timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ,
  updater varchar(64)   NULL DEFAULT '' ,
  update_time timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP  ,
  deleted boolean NOT NULL DEFAULT FALSE ,
  tenant_id bigint NOT NULL DEFAULT 0 ,
  PRIMARY KEY (id) 
);

DROP TABLE IF EXISTS yudao_demo02_category;
CREATE TABLE yudao_demo02_category  (
  id bigint AUTO_INCREMENT ,
  name varchar(100)   NOT NULL DEFAULT '' ,
  parent_id bigint NOT NULL ,
  creator varchar(64)   NULL DEFAULT '' ,
  create_time timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ,
  updater varchar(64)   NULL DEFAULT '' ,
  update_time timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP  ,
  deleted boolean NOT NULL DEFAULT FALSE ,
  tenant_id bigint NOT NULL DEFAULT 0 ,
  PRIMARY KEY (id) 
);

DROP TABLE IF EXISTS yudao_demo03_course;
CREATE TABLE yudao_demo03_course  (
  id bigint AUTO_INCREMENT ,
  student_id bigint NOT NULL ,
  name varchar(100)   NOT NULL DEFAULT '' ,
  score smallint NOT NULL ,
  creator varchar(64)   NULL DEFAULT '' ,
  create_time timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ,
  updater varchar(64)   NULL DEFAULT '' ,
  update_time timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP  ,
  deleted boolean NOT NULL DEFAULT FALSE ,
  tenant_id bigint NOT NULL DEFAULT 0 ,
  PRIMARY KEY (id) 
);

DROP TABLE IF EXISTS yudao_demo03_grade;
CREATE TABLE yudao_demo03_grade  (
  id bigint AUTO_INCREMENT ,
  student_id bigint NOT NULL ,
  name varchar(100)   NOT NULL DEFAULT '' ,
  teacher varchar(255)   NOT NULL ,
  creator varchar(64)   NULL DEFAULT '' ,
  create_time timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ,
  updater varchar(64)   NULL DEFAULT '' ,
  update_time timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP  ,
  deleted boolean NOT NULL DEFAULT FALSE ,
  tenant_id bigint NOT NULL DEFAULT 0 ,
  PRIMARY KEY (id) 
);

DROP TABLE IF EXISTS yudao_demo03_student;
CREATE TABLE yudao_demo03_student  (
  id bigint AUTO_INCREMENT ,
  name varchar(100)   NOT NULL DEFAULT '' ,
  sex smallint NOT NULL ,
  birthday timestamp NOT NULL ,
  description varchar(255)   NOT NULL ,
  creator varchar(64)   NULL DEFAULT '' ,
  create_time timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ,
  updater varchar(64)   NULL DEFAULT '' ,
  update_time timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP  ,
  deleted boolean NOT NULL DEFAULT FALSE ,
  tenant_id bigint NOT NULL DEFAULT 0 ,
  PRIMARY KEY (id) 
);
DROP TABLE IF EXISTS ae_report_template;
CREATE TABLE ae_report_template (
  id bigint AUTO_INCREMENT,
  name varchar(100) NOT NULL ,
  category varchar(20) NOT NULL ,
  status smallint NOT NULL DEFAULT 1 ,
  description varchar(500) DEFAULT NULL ,
  sort integer NOT NULL DEFAULT 0 ,
  creator varchar(64) DEFAULT '' ,
  create_time timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ,
  updater varchar(64) DEFAULT '' ,
  update_time timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP  ,
  deleted boolean NOT NULL DEFAULT FALSE ,
  tenant_id bigint NOT NULL DEFAULT 0 ,
  PRIMARY KEY (id)
);

DROP TABLE IF EXISTS ae_report_template_item;
CREATE TABLE ae_report_template_item (
  id bigint AUTO_INCREMENT,
  template_id bigint NOT NULL ,
  label varchar(100) NOT NULL ,
  field_type varchar(20) NOT NULL ,
  required smallint NOT NULL DEFAULT 0 ,
  options clob ,
  dict_type varchar(100) DEFAULT NULL ,
  placeholder varchar(200) DEFAULT NULL ,
  default_value varchar(500) DEFAULT NULL ,
  sort integer NOT NULL DEFAULT 0 ,
  creator varchar(64) DEFAULT '' ,
  create_time timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ,
  updater varchar(64) DEFAULT '' ,
  update_time timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP  ,
  deleted boolean NOT NULL DEFAULT FALSE ,
  tenant_id bigint NOT NULL DEFAULT 0 ,
  PRIMARY KEY (id)
);

DROP TABLE IF EXISTS ae_adverse_event;
CREATE TABLE ae_adverse_event (
  id bigint AUTO_INCREMENT,
  event_no varchar(30) NOT NULL ,
  template_id bigint NOT NULL ,
  category varchar(20) NOT NULL ,
  level smallint NOT NULL ,
  status smallint NOT NULL DEFAULT '10' ,
  reporter_id bigint NOT NULL ,
  reporter_type smallint NOT NULL DEFAULT 1 ,
  report_time timestamp NOT NULL ,
  dept_id bigint NOT NULL ,
  description clob ,
  form_data clob ,
  current_handler_id bigint DEFAULT NULL ,
  current_dept_id bigint DEFAULT NULL ,
  report_mode smallint NOT NULL DEFAULT 1 ,
  creator varchar(64) DEFAULT '' ,
  create_time timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ,
  updater varchar(64) DEFAULT '' ,
  update_time timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP  ,
  deleted boolean NOT NULL DEFAULT FALSE ,
  tenant_id bigint NOT NULL DEFAULT 0 ,
  PRIMARY KEY (id),
  UNIQUE KEY uk_event_no (event_no)
);

DROP TABLE IF EXISTS ae_event_flow;
CREATE TABLE ae_event_flow (
  id bigint AUTO_INCREMENT,
  event_id bigint NOT NULL ,
  from_status smallint NOT NULL ,
  to_status smallint NOT NULL ,
  handler_id bigint NOT NULL ,
  action varchar(20) NOT NULL ,
  opinion clob ,
  cause varchar(50) DEFAULT NULL ,
  damage_level smallint DEFAULT NULL ,
  need_track smallint DEFAULT NULL ,
  transfer_dept_id bigint DEFAULT NULL ,
  handle_time timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ,
  creator varchar(64) DEFAULT '' ,
  create_time timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ,
  updater varchar(64) DEFAULT '' ,
  update_time timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP  ,
  deleted boolean NOT NULL DEFAULT FALSE ,
  tenant_id bigint NOT NULL DEFAULT 0 ,
  PRIMARY KEY (id)
);

DROP TABLE IF EXISTS ae_event_track;
CREATE TABLE ae_event_track (
  id bigint AUTO_INCREMENT,
  event_id bigint NOT NULL ,
  track_time timestamp NOT NULL ,
  remind_time timestamp DEFAULT NULL ,
  content clob ,
  tracker_id bigint NOT NULL ,
  status smallint NOT NULL DEFAULT 1 ,
  creator varchar(64) DEFAULT '' ,
  create_time timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ,
  updater varchar(64) DEFAULT '' ,
  update_time timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP  ,
  deleted boolean NOT NULL DEFAULT FALSE ,
  tenant_id bigint NOT NULL DEFAULT 0 ,
  PRIMARY KEY (id)
);

DROP TABLE IF EXISTS ae_committee;
CREATE TABLE ae_committee (
  id bigint AUTO_INCREMENT,
  name varchar(100) NOT NULL ,
  status smallint NOT NULL DEFAULT 1 ,
  description varchar(500) DEFAULT NULL ,
  creator varchar(64) DEFAULT '' ,
  create_time timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ,
  updater varchar(64) DEFAULT '' ,
  update_time timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP  ,
  deleted boolean NOT NULL DEFAULT FALSE ,
  tenant_id bigint NOT NULL DEFAULT 0 ,
  PRIMARY KEY (id)
);

DROP TABLE IF EXISTS ae_committee_member;
CREATE TABLE ae_committee_member (
  id bigint AUTO_INCREMENT,
  committee_id bigint NOT NULL ,
  user_id bigint NOT NULL ,
  role_type smallint NOT NULL ,
  creator varchar(64) DEFAULT '' ,
  create_time timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ,
  updater varchar(64) DEFAULT '' ,
  update_time timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP  ,
  deleted boolean NOT NULL DEFAULT FALSE ,
  tenant_id bigint NOT NULL DEFAULT 0 ,
  PRIMARY KEY (id)
);

DROP TABLE IF EXISTS ae_committee_vote;
CREATE TABLE ae_committee_vote (
  id bigint AUTO_INCREMENT,
  event_id bigint NOT NULL ,
  committee_id bigint NOT NULL ,
  user_id bigint NOT NULL ,
  vote smallint NOT NULL ,
  opinion clob ,
  vote_time timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ,
  creator varchar(64) DEFAULT '' ,
  create_time timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ,
  updater varchar(64) DEFAULT '' ,
  update_time timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP  ,
  deleted boolean NOT NULL DEFAULT FALSE ,
  tenant_id bigint NOT NULL DEFAULT 0 ,
  PRIMARY KEY (id)
);
