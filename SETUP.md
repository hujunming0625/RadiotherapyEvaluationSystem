# 放疗效果综合评估系统 — 开发环境搭建指南

## 一、项目简介

本项目是基于 ruoyi-vue-pro 平台的医院不良事件管理系统，包含：

- **后端**：`ruoyi-vue-pro-master-jdk17/` — Spring Boot 3 + Java 17 + Maven
- **前端**：`yudao-ui-admin-vue3-master/` — Vue 3 + Vite + Element Plus
- **SQL 脚本**：`sql/` + `init_roles_depts.sql`

---

## 二、环境要求

| 软件 | 版本 | 下载地址 |
|------|------|---------|
| JDK | **17+**（推荐 17 LTS） | https://adoptium.net/ |
| Maven | 3.8+ | https://maven.apache.org/download.cgi |
| Node.js | **16+**（推荐 18 LTS） | https://nodejs.org/ |
| pnpm | 8.6+ | `npm install -g pnpm` |
| MySQL | **8.0+** | https://dev.mysql.com/downloads/ |
| Redis | 6.0+ | https://redis.io/download |
| IDE | IntelliJ IDEA | https://www.jetbrains.com/idea/ |

---

## 三、搭建步骤

### 3.1 安装基础软件

按上方表格安装 JDK、Maven、Node.js、MySQL、Redis。安装完成后验证：

```bash
java -version      # 应显示 17.x
mvn -version       # 应显示 3.8+
node -v            # 应显示 16+
pnpm -v            # 应显示 8.6+
mysql --version    # 应显示 8.0+
redis-cli ping     # 应返回 PONG
```

### 3.2 创建数据库

打开 MySQL 客户端（Navicat / DataGrip / 命令行），执行：

```sql
CREATE DATABASE `ruoyi-vue-pro` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
```

### 3.3 导入数据库（按顺序执行）

在 `ruoyi-vue-pro` 数据库中，**严格按以下顺序**执行 SQL 脚本：

| 顺序 | 文件路径 | 说明 |
|------|---------|------|
| 1 | `ruoyi-vue-pro-master-jdk17/sql/mysql/ruoyi-vue-pro.sql` | 平台基础表 + 初始数据（用户、菜单、字典等） |
| 2 | `ruoyi-vue-pro-master-jdk17/sql/mysql/quartz.sql` | Quartz 定时任务表 |
| 3 | `sql/ae_tables.sql` | 放疗业务表（8张 ae_* 表） |
| 4 | `sql/p1_menu_data.sql` | 不良事件管理菜单数据 |
| 5 | `sql/p1_menu_fix.sql` | 菜单层级修复 + 角色权限分配 |
| 6 | `init_roles_depts.sql` | 业务角色 + 科室部门 |
| 7 | `sql/p3_mock_data.sql`（可选） | 模拟测试数据 |

> 如果使用命令行导入：`mysql -u root -p ruoyi-vue-pro < 文件路径.sql`

### 3.4 启动 Redis

```bash
# Windows：运行 redis-server.exe，或确认 Redis 服务已在后台运行
redis-cli ping   # 返回 PONG 即正常
```

Redis 配置（`application-local.yaml`）：`127.0.0.1:6379`，database `0`。

### 3.5 打开后端项目

1. 用 IntelliJ IDEA 打开 `ruoyi-vue-pro-master-jdk17/` 目录
2. 等待 Maven 依赖下载完成（首次较慢，可配置阿里云镜像加速）
3. 构建项目：
   ```bash
   cd ruoyi-vue-pro-master-jdk17
   mvn clean install -DskipTests
   ```
4. 运行主类 `YudaoServerApplication`
   - 位置：`ruoyi-vue-pro-master-jdk17/yudao-server/src/main/java/cn/iocoder/yudao/server/YudaoServerApplication.java`
   - Profile 选择 `local`（默认）
   - 启动端口：**48080**

### 3.6 启动前端

```bash
cd yudao-ui-admin-vue3-master
pnpm install     # 安装依赖
pnpm dev         # 启动开发服务器
```

前端运行在 **http://localhost:80**，自动连接后端 `http://localhost:48080`。

### 3.7 登录验证

- 打开浏览器访问 http://localhost:80
- 账号：`admin` / 密码：`admin123`
- 登录后左侧菜单应显示「不良事件管理」模块

---

## 四、端口一览

| 服务 | 端口 |
|------|------|
| 后端 API | 48080 |
| 前端开发服务器 | 80 |
| MySQL | 3306 |
| Redis | 6379 |

---

## 五、常见问题

### Maven 依赖下载慢

在 Maven 的 `settings.xml`（通常在 `~/.m2/settings.xml`）中添加阿里云镜像：

```xml
<mirrors>
  <mirror>
    <id>aliyun</id>
    <mirrorOf>central</mirrorOf>
    <name>Aliyun Mirror</name>
    <url>https://maven.aliyun.com/repository/public</url>
  </mirror>
</mirrors>
```

### 数据库连接失败

- 确认 MySQL 8 服务已启动
- 确认 `root` 用户密码为 `root`（或修改 `application-local.yaml` 中的密码）
- 确认数据库 `ruoyi-vue-pro` 已创建

### Redis 连接失败

- 确认 Redis 服务已启动且监听 6379 端口
- Windows 上可运行 `redis-server.exe` 启动

### 前端 pnpm install 失败

- 确认 Node.js 版本 >= 16
- 确认 pnpm 版本 >= 8.6
- 尝试删除 `node_modules` 和 `pnpm-lock.yaml` 后重新 `pnpm install`

### 启动后菜单不显示

- 确认所有 SQL 脚本按顺序执行完毕
- 特别是第 4、5、6 步（菜单数据、菜单修复、角色部门）
- 重新登录后刷新页面

---

## 六、验证清单

- [ ] 后端启动无报错，控制台显示 `Started YudaoServerApplication`
- [ ] 访问 http://localhost:48080/doc.html 可看到 API 文档页面
- [ ] 前端启动无报错，访问 http://localhost:80 显示登录页
- [ ] 用 `admin` / `admin123` 登录成功
- [ ] 左侧菜单可见「不良事件管理」模块
- [ ] 可以新建一个不良事件并提交
