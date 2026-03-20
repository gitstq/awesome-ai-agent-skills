<div align="center">

# ğŸ”¥ Awesome AI Agent Skills

### 4 Production-Grade Skills That Make Your AI Agent 10x Better

**Compatible with ALL AI coding agents** â€?Claude Code, Codex CLI, Cursor, Windsurf, GitHub Copilot, CodeBuddy, OpenClaw, and any agent that supports SKILL.md

[![MIT License](https://img.shields.io/badge/License-MIT-green.svg)](LICENSE)
[![Skills Standard](https://img.shields.io/badge/SKILL.md-Standard-blue.svg)](https://openagentskills.dev/docs/specification)
[![No Dependencies](https://img.shields.io/badge/Dependencies-None-success.svg)]
[![All LLMs](https://img.shields.io/badge/Compatible-All_LLMs-orange.svg)]

---

### â­?If you find this useful, please give it a star! â­?

> **One-command install. Zero configuration. Works everywhere.**
> Just say what you want, and the right skill activates automatically.

</div>

---

## ğŸ¤” Why This Exists

I spent weeks studying the **top 50 most popular AI agent skills** on ClawHub (35K+ downloads), GitHub (340K+ stars), and SkillsMP (546K+ skills). I found a pattern:

| Problem | Existing Skills | This Solution |
|---------|----------------|---------------|
| Code review only checks 1 dimension | `code-review-skill`, `security-review` | **super-reviewer**: 7-in-1 holistic review |
| Memory skills can't deduplicate | `Self-Improving Agent`, `ByteRover` | **self-evolver-pro**: Semantic dedup + auto-compaction |
| Context gets lost in long sessions | Basic memory files | **context-master**: 3-tier context architecture |
| Git hooks require manual setup | Scattered hook scripts | **universal-hooks**: Auto-detect stack, zero config |

**Every skill here is a major upgrade** over the original popular version, fixing real user complaints from GitHub issues and community reviews.

---

## ğŸ¯ The 4 Skills

### 1. ğŸ” Super Reviewer â€?7-in-1 Code Review Engine

**Replaces**: code-review-skill, security-review, lint-skill, and 6 more single-purpose skills

Most code review skills only check style or security. **Super Reviewer** performs a **senior staff engineer-level holistic review** covering 7 dimensions:

| Dimension | What It Checks |
|-----------|---------------|
| âœ?**Correctness** | Logic bugs, null handling, race conditions, edge cases |
| ğŸ”’ **Security** | OWASP Top 10, injection attacks, auth bypasses, data exposure |
| âš?**Performance** | N+1 queries, memory leaks, algorithm complexity, unnecessary re-renders |
| ğŸ¨ **Code Style** | Naming conventions, DRY, cyclomatic complexity, magic numbers |
| ğŸ—ï¸?**Architecture** | SOLID principles, coupling, design patterns, separation of concerns |
| ğŸ§ª **Testing** | Coverage gaps, missing edge cases, test quality |
| â™?**Accessibility** | WCAG 2.1 AA, ARIA labels, keyboard navigation, screen readers |

**Supports 30+ languages** with framework-specific rules for React, Vue, Angular, Next.js, Express, Django, Spring Boot, Go, Rust, and more.

**Output**: Structured review report with severity levels (CRITICAL/WARNING/INFO), line-level annotations, and copy-paste ready fix suggestions.

```
"Review this PR" â†?Full 7-dimension review report
"Security audit only" â†?Security-focused review
"Brief review" â†?Only critical and warning issues
```

---

### 2. ğŸ§  Self Evolver Pro â€?Self-Improving Memory System

**Replaces**: Self-Improving Agent (15K downloads), ByteRover (16K downloads), Capability Evolver (35K downloads)

The #1 complaint about memory skills: **"They store everything but can't deduplicate, and eventually the context is full of garbage."**

**Self Evolver Pro** fixes this with:

- **Semantic Deduplication** â€?Not just string matching. Understands that "use const instead of var" and "don't use var keyword" are the same thing
- **Lifecycle Management** â€?Every knowledge entry has a state: `new â†?active â†?recurring â†?promoted â†?archived`
- **Auto-Compaction** â€?Old knowledge is automatically summarized, compressed, and eventually archived to prevent context bloat
- **Cross-Project Transfer** â€?Learn coding preferences in Project A, automatically apply them in Project B
- **Team Collaboration** â€?Share `.evolver/patterns/` via git, keep signals private
- **5 Signal Types** â€?LRN (learning), ERR (error), FEAT (feature request), PREF (preference), PATTERN (recurring solution)
- **Smart Review Cycle** â€?Weekly review suggests patterns to promote, merge, or archive

**How it works**: No setup. The agent learns from every interaction. Corrections become patterns. Patterns become skills. Skills become permanent knowledge.

---

### 3. ğŸ“‹ Context Master â€?Intelligent Context Manager

**Replaces**: All manual "add this to your memory file" approaches

**The invisible killer of AI coding sessions**: Context overflow. After 50+ messages, the agent forgets your first instructions, contradicts earlier decisions, and repeats questions.

**Context Master** implements a **3-tier context architecture**:

```
â”Œâ”€ TIER 1: HOT (Always Loaded) â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”?
â”?Current task, active files, recent decisions â”?
â”?Budget: 30% of context window                â”?
â”œâ”€ TIER 2: WARM (On Demand) â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”?
â”?File summaries, architecture choices, errors  â”?
â”?Budget: 40% of context window                â”?
â”œâ”€ TIER 3: COLD (Archived) â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”?
â”?Old conversations, historical decisions       â”?
â”?Accessed via semantic search                  â”?
â””â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”?
```

**Key features**:
- **Auto-triggered compaction** at 70% context usage
- **Smart file prioritization** based on dependency graph analysis
- **Decision log** that persists across sessions
- **Session handoff notes** so you never lose progress
- **Reference counting** to keep important code in context longer

```
"Summarize context"    â†?Compress conversation, keep decisions
"Context status"       â†?Show usage percentage and budget
"Context decisions"    â†?Show all decisions ever made
"Context handoff"      â†?Generate handoff note for next session
```

---

### 4. ğŸª Universal Hooks â€?Zero-Config Quality Gates

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
- **Secrets detection** â€?prevents API keys in commits
- **Conventional Commits** â€?enforces commit message format
- **Protected branches** â€?blocks direct push to main/develop
- **Dependency audit** â€?blocks pushes with known vulnerabilities
- **AI code markers** â€?tracks AI-generated code for review
- **Debug code detection** â€?catches console.log/debugger before commit
- **Conflict markers** â€?catches leftover merge conflict markers
- **Large file prevention** â€?warns on files > 500KB

**Plus**: GitHub Actions CI template included out of the box.

---

## ğŸš€ Installation

### Option 1: One-Command Install (Recommended)

```bash
# macOS / Linux
bash <(curl -fsSL https://raw.githubusercontent.com/gitstq/awesome-ai-agent-skills/main/scripts/install.sh)

# Or clone first
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

## ğŸ“– Usage

**No setup needed.** Skills activate automatically based on your commands.

### Super Reviewer

```
"Review this code"              â†?Full 7-dimension review
"Review this PR"                â†?PR-focused review with diff analysis
"Security audit on src/api/"    â†?Security-only deep dive
"Check performance"             â†?Performance-only analysis
"Brief review"                  â†?Critical + Warning issues only
```

### Self Evolver Pro

```
"Remember: I prefer tabs over spaces"  â†?Store preference
"Evolver status"                       â†?Show knowledge stats
"Evolver review"                       â†?Weekly review
"Evolver export"                       â†?Export all patterns
"Forget about X"                       â†?Remove a pattern
```

### Context Master

```
"Summarize context"              â†?Compress conversation
"Context status"                 â†?Show usage stats
"Context decisions"              â†?Show all decisions
"Context handoff"                â†?Generate handoff note
```

### Universal Hooks

```
"Setup git hooks"                â†?Auto-detect & install all hooks
"Setup pre-commit only"          â†?Install only pre-commit
"Setup CI pipeline"              â†?Generate GitHub Actions
"Check hooks status"             â†?Show active hooks
```

---

## ğŸ”„ Compatibility Matrix

| Agent | super-reviewer | self-evolver-pro | context-master | universal-hooks |
|-------|:-:|:-:|:-:|:-:|
| **Claude Code** | âœ?| âœ?| âœ?| âœ?|
| **Codex CLI** | âœ?| âœ?| âœ?| âœ?|
| **Cursor** | âœ?| âœ?| âœ?| âœ?|
| **Windsurf** | âœ?| âœ?| âœ?| âœ?|
| **GitHub Copilot** | âœ?| âœ?| âœ?| âœ?|
| **CodeBuddy** | âœ?| âœ?| âœ?| âœ?|
| **OpenClaw / Clawdbot** | âœ?| âœ?| âœ?| âœ?|
| **Any SKILL.md agent** | âœ?| âœ?| âœ?| âœ?|

> All skills follow the **Agent Skills open standard** (SKILL.md format).
> No external dependencies. No API keys. No databases. Just Markdown files.

---

## ğŸ“Š Comparison with Popular Alternatives

### vs Self-Improving Agent (15K downloads on ClawHub)

| Feature | Self-Improving Agent | Self Evolver Pro |
|---------|---------------------|------------------|
| Experience capture | âœ?| âœ?|
| Deduplication | String match only | âœ?Semantic similarity |
| Auto-compaction | â?| âœ?Age-based compaction |
| Cross-project transfer | â?| âœ?Transferable patterns |
| Team collaboration | â?| âœ?Git-friendly sharing |
| State management | Basic lifecycle | âœ?Full state machine |
| Category classification | 3 types | âœ?5 signal types |
| Review cycle | â?| âœ?Weekly auto-review |

### vs Code Review Skill (GitHub)

| Feature | code-review-skill | Super Reviewer |
|---------|------------------|----------------|
| Dimensions checked | 1 (style) | âœ?7 dimensions |
| Security analysis | â?| âœ?OWASP Top 10 |
| Performance analysis | â?| âœ?N+1, leaks, complexity |
| Architecture check | â?| âœ?SOLID, patterns |
| Accessibility | â?| âœ?WCAG 2.1 AA |
| Framework-specific | Generic | âœ?6 frameworks |
| Severity classification | â?| âœ?Critical/Warning/Info |
| Fix suggestions | Basic | âœ?Copy-paste ready |

---

## ğŸ—ï¸?Project Structure

```
awesome-ai-agent-skills/
â”œâ”€â”€ README.md                          # You are here
â”œâ”€â”€ LICENSE                            # MIT License
â”œâ”€â”€ .gitignore
â”œâ”€â”€ scripts/
â”?  â”œâ”€â”€ install.sh                     # macOS/Linux installer
â”?  â””â”€â”€ install.bat                    # Windows installer
â”œâ”€â”€ skills/
â”?  â”œâ”€â”€ super-reviewer/
â”?  â”?  â””â”€â”€ SKILL.md                   # 7-in-1 code review engine
â”?  â”œâ”€â”€ self-evolver-pro/
â”?  â”?  â””â”€â”€ SKILL.md                   # Self-improving memory system
â”?  â”œâ”€â”€ context-master/
â”?  â”?  â””â”€â”€ SKILL.md                   # Intelligent context manager
â”?  â””â”€â”€ universal-hooks/
â”?      â””â”€â”€ SKILL.md                   # Zero-config quality gates
â””â”€â”€ assets/
    â””â”€â”€ (demo screenshots)
```

---

## ğŸ¤ Contributing

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

## ğŸ“œ License

[MIT License](LICENSE) â€?Use freely, modify freely, share freely.

---

## ğŸ™ Credits & Research

These skills were built by studying and improving upon the most popular AI agent skills in the ecosystem:

- [Self-Improving Agent](https://clawhub.ai) (15K downloads) â€?Improved with semantic dedup, auto-compaction, cross-project transfer
- [ByteRover](https://clawhub.ai) (16K downloads) â€?Improved with intelligent lifecycle management
- [Capability Evolver](https://clawhub.ai) (35K downloads) â€?Improved with structured signal types
- [code-review-skill](https://github.com/awesome-skills/code-review-skill) â€?Expanded from 1 to 7 review dimensions
- [Agent Skills Specification](https://openagentskills.dev/docs/specification) â€?Standard compliance

---

<div align="center">

### â­?Found this useful? Star it! You'll thank yourself later. â­?

**One repo. Four skills. Every AI agent. Zero hassle.**

Made with â¤ï¸ for the AI agent community

</div>
