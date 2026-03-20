<div align="center">

# 🔥 Awesome AI Agent Skills

### 4 Production-Grade Skills That Make Your AI Agent 10x Better

**Compatible with ALL AI coding agents** — Claude Code, Codex CLI, Cursor, Windsurf, GitHub Copilot, CodeBuddy, OpenClaw, and any agent that supports SKILL.md

[![MIT License](https://img.shields.io/badge/License-MIT-green.svg)](LICENSE)
[![Skills Standard](https://img.shields.io/badge/SKILL.md-Standard-blue.svg)](https://openagentskills.dev/docs/specification)
[![No Dependencies](https://img.shields.io/badge/Dependencies-None-success.svg)]
[![All LLMs](https://img.shields.io/badge/Compatible-All_LLMs-orange.svg)]

---

### ⭐ If you find this useful, please give it a star! ⭐

> **One-command install. Zero configuration. Works everywhere.**
> Just say what you want, and the right skill activates automatically.

</div>

---

## 🤔 Why This Exists

I spent weeks studying the **top 50 most popular AI agent skills** on ClawHub (35K+ downloads), GitHub (340K+ stars), and SkillsMP (546K+ skills). I found a pattern:

| Problem | Existing Skills | This Solution |
|---------|----------------|---------------|
| Code review only checks 1 dimension | `code-review-skill`, `security-review` | **super-reviewer**: 7-in-1 holistic review |
| Memory skills can't deduplicate | `Self-Improving Agent`, `ByteRover` | **self-evolver-pro**: Semantic dedup + auto-compaction |
| Context gets lost in long sessions | Basic memory files | **context-master**: 3-tier context architecture |
| Git hooks require manual setup | Scattered hook scripts | **universal-hooks**: Auto-detect stack, zero config |

**Every skill here is a major upgrade** over the original popular version, fixing real user complaints from GitHub issues and community reviews.

---

## 🎯 The 4 Skills

### 1. 🔍 Super Reviewer — 7-in-1 Code Review Engine

**Replaces**: code-review-skill, security-review, lint-skill, and 6 more single-purpose skills

Most code review skills only check style or security. **Super Reviewer** performs a **senior staff engineer-level holistic review** covering 7 dimensions:

| Dimension | What It Checks |
|-----------|---------------|
| ✅ **Correctness** | Logic bugs, null handling, race conditions, edge cases |
| 🔒 **Security** | OWASP Top 10, injection attacks, auth bypasses, data exposure |
| ⚡ **Performance** | N+1 queries, memory leaks, algorithm complexity, unnecessary re-renders |
| 🎨 **Code Style** | Naming conventions, DRY, cyclomatic complexity, magic numbers |
| 🏗️ **Architecture** | SOLID principles, coupling, design patterns, separation of concerns |
| 🧪 **Testing** | Coverage gaps, missing edge cases, test quality |
| ♿ **Accessibility** | WCAG 2.1 AA, ARIA labels, keyboard navigation, screen readers |

**Supports 30+ languages** with framework-specific rules for React, Vue, Angular, Next.js, Express, Django, Spring Boot, Go, Rust, and more.

**Output**: Structured review report with severity levels (CRITICAL/WARNING/INFO), line-level annotations, and copy-paste ready fix suggestions.

```
"Review this PR" → Full 7-dimension review report
"Security audit only" → Security-focused review
"Brief review" → Only critical and warning issues
```

---

### 2. 🧠 Self Evolver Pro — Self-Improving Memory System

**Replaces**: Self-Improving Agent (15K downloads), ByteRover (16K downloads), Capability Evolver (35K downloads)

The #1 complaint about memory skills: **"They store everything but can't deduplicate, and eventually the context is full of garbage."**

**Self Evolver Pro** fixes this with:

- **Semantic Deduplication** — Not just string matching. Understands that "use const instead of var" and "don't use var keyword" are the same thing
- **Lifecycle Management** — Every knowledge entry has a state: `new → active → recurring → promoted → archived`
- **Auto-Compaction** — Old knowledge is automatically summarized, compressed, and eventually archived to prevent context bloat
- **Cross-Project Transfer** — Learn coding preferences in Project A, automatically apply them in Project B
- **Team Collaboration** — Share `.evolver/patterns/` via git, keep signals private
- **5 Signal Types** — LRN (learning), ERR (error), FEAT (feature request), PREF (preference), PATTERN (recurring solution)
- **Smart Review Cycle** — Weekly review suggests patterns to promote, merge, or archive

**How it works**: No setup. The agent learns from every interaction. Corrections become patterns. Patterns become skills. Skills become permanent knowledge.

---

### 3. 📋 Context Master — Intelligent Context Manager

**Replaces**: All manual "add this to your memory file" approaches

**The invisible killer of AI coding sessions**: Context overflow. After 50+ messages, the agent forgets your first instructions, contradicts earlier decisions, and repeats questions.

**Context Master** implements a **3-tier context architecture**:

```
┌─ TIER 1: HOT (Always Loaded) ─────────────┐
│ Current task, active files, recent decisions │
│ Budget: 30% of context window                │
├─ TIER 2: WARM (On Demand) ─────────────────┤
│ File summaries, architecture choices, errors  │
│ Budget: 40% of context window                │
├─ TIER 3: COLD (Archived) ──────────────────┤
│ Old conversations, historical decisions       │
│ Accessed via semantic search                  │
└──────────────────────────────────────────────┘
```

**Key features**:
- **Auto-triggered compaction** at 70% context usage
- **Smart file prioritization** based on dependency graph analysis
- **Decision log** that persists across sessions
- **Session handoff notes** so you never lose progress
- **Reference counting** to keep important code in context longer

```
"Summarize context"    → Compress conversation, keep decisions
"Context status"       → Show usage percentage and budget
"Context decisions"    → Show all decisions ever made
"Context handoff"      → Generate handoff note for next session
```

---

### 4. 🪝 Universal Hooks — Zero-Config Quality Gates

**Replaces**: Manual pre-commit setup, scattered CI/CD templates

**Say "setup git hooks" once, and never worry about code quality enforcement again.**

The skill **auto-detects your project stack** and installs exactly the hooks you need:

| Auto-Detected Stack | Hooks Installed |
|---------------------|----------------|
| React/Next.js | Prettier + ESLint + TypeScript + Secrets |
| Vue/Nuxt | Prettier + ESLint + TypeScript + Secrets |
| Python/Django | Ruff + mypy + pytest + pip audit |
| Go | gofmt + golint + go test + govulncheck |
| Rust | rustfmt + Clippy + cargo test + cargo audit |

**Quality gates included**:
- Code formatting enforcement (with auto-fix)
- Linting with zero warnings tolerance
- Type checking (TypeScript, Python)
- **Secrets detection** — prevents API keys in commits
- **Conventional Commits** — enforces commit message format
- **Protected branches** — blocks direct push to main/develop
- **Dependency audit** — blocks pushes with known vulnerabilities
- **AI code markers** — tracks AI-generated code for review
- **Debug code detection** — catches console.log/debugger before commit
- **Conflict markers** — catches leftover merge conflict markers
- **Large file prevention** — warns on files > 500KB

**Plus**: GitHub Actions CI template included out of the box.

---

## 🚀 Installation

### Option 1: One-Command Install (Recommended)

```bash
# macOS / Linux
bash <(curl -fsSL https://raw.githubusercontent.com/YOUR_USERNAME/awesome-ai-agent-skills/main/scripts/install.sh)

# Or clone first
git clone https://github.com/YOUR_USERNAME/awesome-ai-agent-skills.git
cd awesome-ai-agent-skills
chmod +x scripts/install.sh
./scripts/install.sh
```

```cmd
REM Windows
git clone https://github.com/YOUR_USERNAME/awesome-ai-agent-skills.git
cd awesome-ai-agent-skills
scripts\install.bat
```

### Option 2: Manual Install

Just copy the skill folder you need into your agent's skills directory:

```bash
# Claude Code
cp -r skills/super-reviewer ~/.claude/skills/

# Codex CLI
cp -r skills/super-reviewer ~/.codex/skills/

# CodeBuddy
cp -r skills/super-reviewer ~/.workbuddy/skills/

# OpenClaw / Clawdbot
cp -r skills/super-reviewer ~/.openclaw/skills/

# Any other agent
cp -r skills/super-reviewer ~/.ai-skills/
```

### Option 3: Install Individual Skills

```bash
# Just want code review?
cp -r skills/super-reviewer ~/.claude/skills/

# Just want memory management?
cp -r skills/self-evolver-pro ~/.claude/skills/

# Just want context management?
cp -r skills/context-master ~/.claude/skills/

# Just want git hooks?
cp -r skills/universal-hooks ~/.claude/skills/
```

---

## 📖 Usage

**No setup needed.** Skills activate automatically based on your commands.

### Super Reviewer

```
"Review this code"              → Full 7-dimension review
"Review this PR"                → PR-focused review with diff analysis
"Security audit on src/api/"    → Security-only deep dive
"Check performance"             → Performance-only analysis
"Brief review"                  → Critical + Warning issues only
```

### Self Evolver Pro

```
"Remember: I prefer tabs over spaces"  → Store preference
"Evolver status"                       → Show knowledge stats
"Evolver review"                       → Weekly review
"Evolver export"                       → Export all patterns
"Forget about X"                       → Remove a pattern
```

### Context Master

```
"Summarize context"              → Compress conversation
"Context status"                 → Show usage stats
"Context decisions"              → Show all decisions
"Context handoff"                → Generate handoff note
```

### Universal Hooks

```
"Setup git hooks"                → Auto-detect & install all hooks
"Setup pre-commit only"          → Install only pre-commit
"Setup CI pipeline"              → Generate GitHub Actions
"Check hooks status"             → Show active hooks
```

---

## 🔄 Compatibility Matrix

| Agent | super-reviewer | self-evolver-pro | context-master | universal-hooks |
|-------|:-:|:-:|:-:|:-:|
| **Claude Code** | ✅ | ✅ | ✅ | ✅ |
| **Codex CLI** | ✅ | ✅ | ✅ | ✅ |
| **Cursor** | ✅ | ✅ | ✅ | ✅ |
| **Windsurf** | ✅ | ✅ | ✅ | ✅ |
| **GitHub Copilot** | ✅ | ✅ | ✅ | ✅ |
| **CodeBuddy** | ✅ | ✅ | ✅ | ✅ |
| **OpenClaw / Clawdbot** | ✅ | ✅ | ✅ | ✅ |
| **Any SKILL.md agent** | ✅ | ✅ | ✅ | ✅ |

> All skills follow the **Agent Skills open standard** (SKILL.md format).
> No external dependencies. No API keys. No databases. Just Markdown files.

---

## 📊 Comparison with Popular Alternatives

### vs Self-Improving Agent (15K downloads on ClawHub)

| Feature | Self-Improving Agent | Self Evolver Pro |
|---------|---------------------|------------------|
| Experience capture | ✅ | ✅ |
| Deduplication | String match only | ✅ Semantic similarity |
| Auto-compaction | ❌ | ✅ Age-based compaction |
| Cross-project transfer | ❌ | ✅ Transferable patterns |
| Team collaboration | ❌ | ✅ Git-friendly sharing |
| State management | Basic lifecycle | ✅ Full state machine |
| Category classification | 3 types | ✅ 5 signal types |
| Review cycle | ❌ | ✅ Weekly auto-review |

### vs Code Review Skill (GitHub)

| Feature | code-review-skill | Super Reviewer |
|---------|------------------|----------------|
| Dimensions checked | 1 (style) | ✅ 7 dimensions |
| Security analysis | ❌ | ✅ OWASP Top 10 |
| Performance analysis | ❌ | ✅ N+1, leaks, complexity |
| Architecture check | ❌ | ✅ SOLID, patterns |
| Accessibility | ❌ | ✅ WCAG 2.1 AA |
| Framework-specific | Generic | ✅ 6 frameworks |
| Severity classification | ❌ | ✅ Critical/Warning/Info |
| Fix suggestions | Basic | ✅ Copy-paste ready |

---

## 🏗️ Project Structure

```
awesome-ai-agent-skills/
├── README.md                          # You are here
├── LICENSE                            # MIT License
├── .gitignore
├── scripts/
│   ├── install.sh                     # macOS/Linux installer
│   └── install.bat                    # Windows installer
├── skills/
│   ├── super-reviewer/
│   │   └── SKILL.md                   # 7-in-1 code review engine
│   ├── self-evolver-pro/
│   │   └── SKILL.md                   # Self-improving memory system
│   ├── context-master/
│   │   └── SKILL.md                   # Intelligent context manager
│   └── universal-hooks/
│       └── SKILL.md                   # Zero-config quality gates
└── assets/
    └── (demo screenshots)
```

---

## 🤝 Contributing

Contributions are welcome! Here's how:

1. **Fork** the repository
2. **Create** your skill: `mkdir skills/your-skill && touch skills/your-skill/SKILL.md`
3. **Write** your SKILL.md following the [Agent Skills Specification](https://openagentskills.dev/docs/specification)
4. **Test** with `skills-ref validate ./skills/your-skill`
5. **Submit** a Pull Request

### Skill Guidelines

- Follow the SKILL.md open standard
- Include clear trigger keywords in description
- Support multiple AI agents
- Provide both English and Chinese trigger words
- Include error handling and edge cases
- Keep SKILL.md under 500 lines (use references/ for more)

---

## 📜 License

[MIT License](LICENSE) — Use freely, modify freely, share freely.

---

## 🙏 Credits & Research

These skills were built by studying and improving upon the most popular AI agent skills in the ecosystem:

- [Self-Improving Agent](https://clawhub.ai) (15K downloads) — Improved with semantic dedup, auto-compaction, cross-project transfer
- [ByteRover](https://clawhub.ai) (16K downloads) — Improved with intelligent lifecycle management
- [Capability Evolver](https://clawhub.ai) (35K downloads) — Improved with structured signal types
- [code-review-skill](https://github.com/awesome-skills/code-review-skill) — Expanded from 1 to 7 review dimensions
- [Agent Skills Specification](https://openagentskills.dev/docs/specification) — Standard compliance

---

<div align="center">

### ⭐ Found this useful? Star it! You'll thank yourself later. ⭐

**One repo. Four skills. Every AI agent. Zero hassle.**

Made with ❤️ for the AI agent community

</div>
