<div align="center">

# 🔥 Awesome AI Agent Skills

### 4 个生产级 Skill，让你的 AI 编程助手直接进化 10 倍

**兼容所有 AI 编程助手** — Claude Code、Codex CLI、Cursor、Windsurf、GitHub Copilot、CodeBuddy、OpenClaw，以及任何支持 SKILL.md 标准的 Agent

[![MIT License](https://img.shields.io/badge/License-MIT-green.svg)](../LICENSE)
[![SKILL.md Standard](https://img.shields.io/badge/SKILL.md-Standard-blue.svg)](https://openagentskills.dev/docs/specification)
[![无外部依赖](https://img.shields.io/badge/依赖-零-success.svg)](#)
[![全模型兼容](https://img.shields.io/badge/兼容-所有大模型-orange.svg)](#)

---

**Languages / 多语言:**
[English](../README.md) | [中文](README_zh-CN.md) | [日本語](README_ja.md) | [한국어](README_ko.md) | [Español](README_es.md)

---

### ⭐ 如果对你有帮助，请点个 Star！⭐

> **一条命令安装，零配置，到处可用。**
> 只需说出你想做的事，对应的 Skill 自动激活。

</div>

---

## 🤔 为什么要做这个？

我花了几周时间研究了 ClawHub（35K+ 下载量）、GitHub（340K+ Stars）、SkillsMP（54.6 万个 Skill）上最热门的 50 个 AI Agent Skills，发现了一个规律：

| 现有问题 | 代表性 Skill | 本项目解决方案 |
|---------|------------|--------------|
| 代码审查只检查 1 个维度 | `code-review-skill`、`security-review` | **super-reviewer**：7 合 1 全面审查 |
| 记忆类 Skill 无法去重 | `Self-Improving Agent`、`ByteRover` | **self-evolver-pro**：语义去重 + 自动压缩 |
| 长对话容易上下文失忆 | 基础记忆文件 | **context-master**：3 层上下文架构 |
| Git Hooks 需要手动配置 | 零散的 hook 脚本 | **universal-hooks**：自动检测技术栈，零配置 |

**每一个 Skill 都是对原版热门 Skill 的重大升级**，针对 GitHub Issues 和社区反馈里真实的用户吐槽进行了改进。

---

## 🎯 4 个 Skill 介绍

### 1. 🔍 Super Reviewer — 7 合 1 代码审查引擎

**取代**：code-review-skill、security-review、lint-skill 等 6 个以上单一用途的审查 Skill

大多数代码审查 Skill 只检查代码风格或安全性。**Super Reviewer** 执行一次类似**资深工程师**的全面评审，覆盖 7 个维度：

| 维度 | 检查内容 |
|------|---------|
| ✅ **正确性** | 逻辑 Bug、空值处理、竞态条件、边界情况 |
| 🔒 **安全性** | OWASP Top 10、注入攻击、身份验证绕过、数据泄露 |
| ⚡ **性能** | N+1 查询、内存泄漏、算法复杂度、不必要的重渲染 |
| 🎨 **代码风格** | 命名规范、DRY 原则、圈复杂度、魔法数字 |
| 🏗️ **架构** | SOLID 原则、耦合度、设计模式、关注点分离 |
| 🧪 **测试** | 覆盖率缺口、缺少边界测试、测试质量 |
| ♿ **无障碍** | WCAG 2.1 AA、ARIA 标签、键盘导航、屏幕阅读器 |

**支持 30+ 种语言**，并针对 React、Vue、Angular、Next.js、Express、Django、Spring Boot、Go、Rust 等框架提供专项规则。

```
"审查这段代码" / "Review this PR"    →  完整 7 维度报告
"只检查安全" / "Security audit only"  →  仅安全维度
"简要审查" / "Brief review"           →  仅关键和警告问题
```

---

### 2. 🧠 Self Evolver Pro — 智能自我进化记忆系统

**取代**：Self-Improving Agent（15K 下载）、ByteRover（16K 下载）、Capability Evolver（35K 下载）

记忆类 Skill 的头号吐槽：**"什么都存，但不会去重，时间长了上下文全是垃圾。"**

**Self Evolver Pro** 通过以下方式解决：

- **语义去重** — 不只是字符串匹配。能理解"用 const 代替 var"和"不要用 var 关键字"是同一件事
- **生命周期管理** — 每条知识都有状态：`new → active → recurring → promoted → archived`
- **自动压缩** — 旧知识自动摘要、压缩，最终归档，防止上下文膨胀
- **跨项目迁移** — 在项目 A 学到的编码偏好，自动应用到项目 B
- **团队协作** — 通过 git 共享 `.evolver/patterns/`，私有信号不入库
- **5 种信号类型** — LRN（学习）、ERR（错误）、FEAT（功能请求）、PREF（偏好）、PATTERN（复现模式）
- **智能复盘周期** — 每周自动建议哪些模式应该晋升、合并或归档

```
"记住：我偏好 tab 而不是空格"     →  存储偏好
"自我进化状态" / "Evolver status"   →  查看知识库统计
"自我进化复盘" / "Evolver review"   →  执行周复盘
```

---

### 3. 📋 Context Master — 智能上下文管理系统

**取代**：所有手动"把这个加到记忆文件"的方式

**AI 编程会话的隐形杀手**：上下文溢出。对话超过 50 条消息后，Agent 会忘记早期指令、做出矛盾的决策、重复问同样的问题。

**Context Master** 实现了 **3 层上下文架构**：

```
+---[ 第 1 层：HOT — 始终加载 ]---------------------------+
|  当前任务、活跃文件、最近决策                              |
|  预算：30% 上下文窗口                                     |
+---[ 第 2 层：WARM — 按需加载 ]-------------------------+
|  文件摘要、架构决策、历史错误                              |
|  预算：40% 上下文窗口                                     |
+---[ 第 3 层：COLD — 归档 ]-----------------------------+
|  旧对话摘要、历史决策                                     |
|  通过语义搜索访问                                         |
+---------------------------------------------------------+
```

**核心特性**：
- 上下文使用率达 70% 时**自动触发压缩**
- 基于依赖图分析的**智能文件优先级**
- 跨会话持久化的**决策日志**
- **会话交接备忘录**，再也不会丢失进度
- **引用计数**，让重要代码在上下文中停留更久

```
"总结上下文" / "Summarize context"   →  压缩对话，保留决策
"上下文状态" / "Context status"      →  查看使用率和预算
"查看决策" / "Context decisions"     →  查看所有已做决策
"生成交接" / "Context handoff"       →  生成下次会话的交接备忘录
```

---

### 4. 🪝 Universal Hooks — 零配置代码质量门禁

**取代**：手动 pre-commit 配置、零散的 CI/CD 模板

**说一次"setup git hooks"，从此代码质量自动守护。**

Skill **自动检测你的项目技术栈**，并安装恰好你需要的 hooks：

| 自动检测到的技术栈 | 安装的 Hooks |
|------------------|-------------|
| React / Next.js | Prettier + ESLint + TypeScript 检查 + 密钥扫描 |
| Vue / Nuxt | Prettier + ESLint + TypeScript 检查 + 密钥扫描 |
| Python / Django | Ruff + mypy + pytest + pip audit |
| Go | gofmt + golint + go test + govulncheck |
| Rust | rustfmt + Clippy + cargo test + cargo audit |

**包含的质量门禁**：
- 代码格式化强制（支持自动修复）
- Lint 零 Warning 容忍
- 类型检查（TypeScript、Python）
- **密钥检测** — 防止 API Key 进入提交
- **Conventional Commits** — 强制提交信息格式
- **保护分支** — 阻止直接推送到 main/develop
- **依赖审计** — 阻止含已知漏洞的推送
- **AI 代码标注** — 追踪 AI 生成代码，等待人工审查
- **调试代码检测** — 提交前捕获 console.log / debugger
- **冲突标记检测** — 捕获未解决的 merge 冲突标记
- **大文件拦截** — 文件超过 500 KB 时发出警告

**附赠**：开箱即用的 GitHub Actions CI 模板。

---

## 🚀 安装

### 方式一：一键安装（推荐）

```bash
# macOS / Linux
bash <(curl -fsSL https://raw.githubusercontent.com/gitstq/awesome-ai-agent-skills/main/scripts/install.sh)

# 或先克隆仓库
git clone https://github.com/gitstq/awesome-ai-agent-skills.git
cd awesome-ai-agent-skills
chmod +x scripts/install.sh
./scripts/install.sh
```

```cmd
REM Windows
git clone https://github.com/gitstq/awesome-ai-agent-skills.git
cd awesome-ai-agent-skills
scripts\install.bat
```

### 方式二：手动复制

把你需要的 Skill 文件夹复制到 Agent 的 Skills 目录：

```bash
# Claude Code
cp -r skills/super-reviewer ~/.claude/skills/

# Codex CLI
cp -r skills/super-reviewer ~/.codex/skills/

# CodeBuddy
cp -r skills/super-reviewer ~/.workbuddy/skills/

# OpenClaw / Clawdbot
cp -r skills/super-reviewer ~/.openclaw/skills/
```

---

## 🔄 兼容性一览

| Agent | super-reviewer | self-evolver-pro | context-master | universal-hooks |
|-------|:-:|:-:|:-:|:-:|
| **Claude Code** | ✅ | ✅ | ✅ | ✅ |
| **Codex CLI** | ✅ | ✅ | ✅ | ✅ |
| **Cursor** | ✅ | ✅ | ✅ | ✅ |
| **Windsurf** | ✅ | ✅ | ✅ | ✅ |
| **GitHub Copilot** | ✅ | ✅ | ✅ | ✅ |
| **CodeBuddy** | ✅ | ✅ | ✅ | ✅ |
| **OpenClaw / Clawdbot** | ✅ | ✅ | ✅ | ✅ |
| **任何 SKILL.md Agent** | ✅ | ✅ | ✅ | ✅ |

> 所有 Skill 遵循 **Agent Skills 开放标准**（SKILL.md 格式）。  
> 无外部依赖，无需 API Key，无数据库，全部都是 Markdown 文件。

---

## 📊 与热门替代品对比

### vs Self-Improving Agent（ClawHub 15K 下载）

| 功能 | Self-Improving Agent | Self Evolver Pro |
|------|---------------------|------------------|
| 经验捕获 | ✅ | ✅ |
| 去重方式 | 仅字符串匹配 | ✅ 语义相似度 |
| 自动压缩 | ❌ | ✅ 基于年龄的压缩 |
| 跨项目迁移 | ❌ | ✅ 可迁移模式 |
| 团队协作 | ❌ | ✅ Git 友好共享 |
| 状态管理 | 基础生命周期 | ✅ 完整状态机 |
| 信号分类 | 3 种 | ✅ 5 种信号类型 |
| 复盘周期 | ❌ | ✅ 每周自动复盘 |

### vs 普通 Code Review Skill

| 功能 | 普通 code-review-skill | Super Reviewer |
|------|----------------------|----------------|
| 审查维度 | 1 个（仅风格） | ✅ 7 个维度 |
| 安全分析 | ❌ | ✅ OWASP Top 10 |
| 性能分析 | ❌ | ✅ N+1、泄漏、复杂度 |
| 架构检查 | ❌ | ✅ SOLID、设计模式 |
| 无障碍检查 | ❌ | ✅ WCAG 2.1 AA |
| 框架专项规则 | 通用 | ✅ 6+ 框架 |
| 严重级别分类 | ❌ | ✅ Critical / Warning / Info |
| 修复建议 | 基础 | ✅ 可直接粘贴使用 |

---

## 🤝 贡献指南

欢迎贡献！

1. **Fork** 本仓库
2. **创建** 你的 Skill：`mkdir skills/your-skill && touch skills/your-skill/SKILL.md`
3. **编写** SKILL.md，参考 [Agent Skills 规范](https://openagentskills.dev/docs/specification)
4. **验证** `skills-ref validate ./skills/your-skill`
5. **提交** Pull Request

---

## 📜 开源协议

[MIT License](../LICENSE) — 自由使用，自由修改，自由分享。

---

<div align="center">

### ⭐ 觉得有用就点个 Star 吧，以后你会感谢自己的。⭐

**一个仓库，四个 Skill，所有 AI Agent，零麻烦。**

用 ❤️ 为 AI Agent 社区打造

</div>
