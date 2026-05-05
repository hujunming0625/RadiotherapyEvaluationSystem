# 放疗效果综合评估系统

基于 [ruoyi-vue-pro](https://github.com/YunaiV/ruoyi-vue-pro) 平台构建的放疗计划评估管理系统，用于医院放疗科对不良事件进行上报、跟踪和评估。

## 技术栈

| 层级 | 技术 | 版本 |
|------|------|------|
| 后端框架 | Spring Boot | 3.x |
| JDK | OpenJDK | 17+ |
| 数据库 | MySQL | 8.0+ |
| 缓存 | Redis | 6.0+ |
| ORM | MyBatis Plus | 3.5.x |
| 工作流 | Flowable | 7.x |
| 前端框架 | Vue 3 + Vite | 3.3 / 4.x |
| UI 组件库 | Element Plus | 2.4.x |
| 类型系统 | TypeScript | 5.x |
| 包管理 | pnpm | 8.6+ |

## 项目结构

```
code/
├── ruoyi-vue-pro-master-jdk17/   # 后端 — Spring Boot 多模块
│   ├── yudao-server/             #   主启动模块
│   ├── yudao-module-system/      #   系统功能（用户、角色、菜单、字典等）
│   ├── yudao-module-infra/       #   基础设施（代码生成、文件、定时任务等）
│   ├── yudao-module-bpm/         #   工作流程（Flowable 引擎）
│   ├── yudao-module-radiotherapy/#   放疗业务模块（核心）
│   ├── yudao-framework/          #   框架扩展（安全、缓存、ORM 等）
│   └── yudao-dependencies/       #   Maven 依赖版本管理
├── yudao-ui-admin-vue3-master/   # 前端 — Vue 3 + Element Plus
│   ├── src/                      #   源码
│   │   ├── views/                #     页面
│   │   ├── api/                  #     接口
│   │   ├── components/           #     组件
│   │   └── router/               #     路由
│   └── public/                   #   静态资源
├── sql/                          # 放疗业务 SQL 脚本
├── init_roles_depts.sql          # 业务角色 + 科室部门初始化
└── SETUP.md                      # 详细搭建指南
```

## 快速开始

> 完整搭建步骤请阅读 [SETUP.md](./SETUP.md)

### 环境要求

- JDK 17+
- Maven 3.8+
- Node.js 16+ & pnpm 8.6+
- MySQL 8.0+
- Redis 6.0+

### 1. 创建数据库

```sql
CREATE DATABASE `ruoyi-vue-pro` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
```

### 2. 导入 SQL（按顺序）

```bash
# 平台基础表
mysql -u root -p ruoyi-vue-pro < ruoyi-vue-pro-master-jdk17/sql/mysql/ruoyi-vue-pro.sql
# Quartz 定时任务表
mysql -u root -p ruoyi-vue-pro < ruoyi-vue-pro-master-jdk17/sql/mysql/quartz.sql
# 放疗业务表
mysql -u root -p ruoyi-vue-pro < sql/ae_tables.sql
# 菜单数据
mysql -u root -p ruoyi-vue-pro < sql/p1_menu_data.sql
# 菜单修复 + 角色权限
mysql -u root -p ruoyi-vue-pro < sql/p1_menu_fix.sql
# 业务角色 + 科室部门
mysql -u root -p ruoyi-vue-pro < init_roles_depts.sql
# 模拟测试数据（可选）
mysql -u root -p ruoyi-vue-pro < sql/p3_mock_data.sql
```

### 3. 启动 Redis

```bash
redis-cli ping   # 返回 PONG 即正常
```

### 4. 启动后端

```bash
cd ruoyi-vue-pro-master-jdk17
mvn clean install -DskipTests
# 运行 YudaoServerApplication，Profile 选择 local
```

后端启动端口：**48080**

### 5. 启动前端

```bash
cd yudao-ui-admin-vue3-master
pnpm install
pnpm dev
```

前端访问地址：**http://localhost:80**

### 6. 登录

- 账号：`admin`
- 密码：`admin123`

登录后左侧菜单可看到「不良事件管理」模块。

## 配置说明

| 配置文件 | 说明 |
|---------|------|
| `application.yaml` | 主配置（Spring Profile、MyBatis、缓存等） |
| `application-local.yaml` | 本地开发环境（数据库连接、Redis 地址） |
| `application-dev.yaml` | 开发环境（对接微信/钉钉等第三方服务） |
| `.env` / `.env.dev` | 前端环境变量（API 地址、功能开关） |

> 注意：含密钥/密码的配置文件已通过 `.gitignore` 排除，需要根据 `SETUP.md` 自行创建。

## 常见问题

| 问题 | 解决方案 |
|------|---------|
| Maven 依赖下载慢 | 配置阿里云镜像，见 [SETUP.md](./SETUP.md#maven-依赖下载慢) |
| 数据库连接失败 | 确认 MySQL 8 已启动，`root` 密码正确，数据库已创建 |
| Redis 连接失败 | 确认 Redis 服务已启动，监听 6379 端口 |
| 前端 pnpm install 失败 | 确认 Node.js >= 16、pnpm >= 8.6 |
| 启动后菜单不显示 | 确认所有 SQL 脚本按顺序执行完毕，重新登录 |

## 内置功能

本项目基于 ruoyi-vue-pro 平台，除放疗业务模块外，还内置：

- **系统功能**：用户管理、角色管理、菜单管理、部门管理、字典管理、操作日志、登录日志
- **基础设施**：代码生成、系统接口文档、文件服务、定时任务、配置管理、API 日志
- **工作流程**：基于 Flowable 的审批流程（仿钉钉/BPMN 双设计器）
- **放疗业务**：不良事件上报、评估、跟踪（`yudao-module-radiotherapy`）

## 开源协议

基于 [MIT License](./ruoyi-vue-pro-master-jdk17/LICENSE) 开源。
