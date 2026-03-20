---
name: self-evolver-pro
description: |
  Self-improving AI agent evolution engine with intelligent experience management. Captures learnings, errors, and feature requests from every interaction, deduplicates them intelligently using semantic similarity, and promotes high-value patterns into reusable skills. Unlike basic memory skills, it features automatic context compaction, cross-project knowledge transfer, team collaboration patterns, and a built-in review cycle. Works across all sessions without any external service. Use when you want your AI agent to learn from mistakes, remember your preferences, accumulate project knowledge over time, or continuously improve its responses. Trigger keywords: self-improve, learn, remember, evolve, 自我改进, 记住经验, 学习模式, continuous improvement, memory management.
metadata:
  version: "2.0.0"
  author: awesome-ai-agent-skills
  license: MIT
  category: productivity
  tags:
    - self-improvement
    - memory-management
    - knowledge-base
    - learning-system
    - experience-accumulation
  compatibility:
    - claude-code
    - codex-cli
    - cursor
    - windsurf
    - github-copilot
    - codebuddy
    - openclaw
    - any-llm-agent
  quick-start: "Works automatically - no setup needed. The agent learns from every interaction."
---

# Self Evolver Pro - Intelligent Agent Evolution Engine

> Don't just use AI. Make AI learn from every mistake and get better over time.

## What Problem Does This Solve?

Every AI coding agent starts fresh each session. You correct the same mistakes, repeat the same preferences, and explain the same conventions over and over. **Self Evolver Pro** solves this by giving your agent a persistent, intelligent memory that:

1. **Captures** experiences automatically (corrections, errors, preferences)
2. **Deduplicates** intelligently using semantic similarity (not just string matching)
3. **Promotes** high-value patterns into reusable knowledge
4. **Compacts** old knowledge to prevent context bloat
5. **Transfers** learnings across projects
6. **Reviews** itself periodically to stay relevant

## How It Works

### Architecture Overview

```
User Interaction
    |
    v
[Signal Capture Layer] -- captures LRN/ERR/FEAT/PREF signals
    |
    v
[Deduplication Engine] -- semantic similarity check
    |
    v
[Knowledge Store] -- .evolver/ directory structure
    |                ├── signals/       (raw captured signals)
    |                ├── patterns/      (deduplicated, promoted patterns)
    |                ├── context/       (active context for current session)
    |                └── review/        (periodic review queue)
    |
    v
[Context Manager] -- loads relevant knowledge at session start
    |
    v
[Compaction Engine] -- prevents knowledge bloat over time
    |
    v
[Promotion Engine] -- promotes patterns to skills when ready
```

### Signal Types

| Signal | Trigger | Example | Action |
|--------|---------|---------|--------|
| **LRN** (Learning) | User corrects the agent | "Don't use var, use const/let" | Store as learning pattern |
| **ERR** (Error) | Command fails or exception | `npm run build` returns exit code 1 | Store with error context and fix |
| **FEAT** (Feature Request) | User asks for something new | "Can you also check TypeScript types?" | Queue as capability request |
| **PREF** (Preference) | User expresses a preference | "I prefer functional over OOP" | Store as project preference |
| **PATTERN** (Pattern) | Recurring successful solution | Same fix applied 3+ times | Promote to reusable pattern |

### Lifecycle State Machine

```
new → active → recurring(3+) → promoted → skill
                  ↑                            |
                  └── refreshed ← reviewed ←───┘
                        |
                        v
                     archived (after 30 days inactive)
```

### Knowledge Store Structure

The skill creates a `.evolver/` directory in the project root:

```
.evolver/
├── config.toml              # Evolution config (auto-generated)
├── signals/
│   ├── 2026-03-20.md        # Daily signal log
│   └── ...
├── patterns/
│   ├── code-style.md        # Promoted coding patterns
│   ├── error-fixes.md       # Known error solutions
│   ├── project-conventions.md # Project-specific conventions
│   └── preferences.md       # User preferences
├── context/
│   ├── ACTIVE.md            # Currently active context (auto-loaded)
│   └── project-profile.md   # Project type detection & config
└── review/
    └── queue.md             # Patterns pending review
```

## Session Lifecycle

### On Session Start

1. **Load active context** from `.evolver/context/ACTIVE.md`
2. **Check for pending review items** in `.evolver/review/queue.md`
3. **Apply project profile** to configure language/framework-specific behavior
4. **Display status**: "Evolver: 12 patterns loaded, 3 pending review"

### During Session

1. **Monitor for signals** in every agent response:
   - User corrections → LRN signal
   - Failed commands → ERR signal
   - New requests → FEAT signal
   - Style choices → PREF signal
2. **Auto-deduplicate** against existing patterns using semantic similarity
3. **Update recurrence count** for matching patterns
4. **Trigger promotion** when a pattern hits recurrence threshold (default: 3)

### On Session End

1. **Save new signals** to daily log
2. **Update pattern index** if new patterns were promoted
3. **Run compaction check** if signal count exceeds threshold
4. **Schedule review** for patterns older than 7 days

## Intelligent Deduplication

Unlike basic memory skills that use exact string matching, Self Evolver Pro uses **multi-level deduplication**:

### Level 1: Exact Match
```
Existing: "Use const instead of var"
New: "Use const instead of var"
→ EXACT MATCH (skip)
```

### Level 2: Semantic Similarity
```
Existing: "Always use TypeScript strict mode"
New: "Enable strict in tsconfig.json"
→ SEMANTIC MATCH (increment recurrence count)
```

### Level 3: Pattern Category
```
Existing: "Prefer functional components over class components"
New: "Use hooks instead of lifecycle methods"
→ CATEGORY MATCH (same topic, merge with note)
```

### Level 4: New Signal
```
Existing: (nothing related)
New: "This project uses pnpm, not npm"
→ NEW SIGNAL (create entry)
```

## Context Compaction

To prevent knowledge bloat, the skill automatically compacts old knowledge:

### Compaction Rules

| Age | Action | Detail |
|-----|--------|--------|
| < 7 days | Keep as-is | Full detail preserved |
| 7-30 days | Summarize | Reduce to key points |
| 30-90 days | Compress | One-line summary + reference |
| > 90 days | Archive | Move to archive, remove from active context |

### Compaction Triggers
- Total signals exceed 500 entries
- Active context exceeds 200 lines
- Pattern count exceeds 100

### What Gets Compacted First
1. One-time errors that never recurred
2. Feature requests already implemented
3. Preferences superseded by newer ones
4. Low-recurrence patterns (< 2 occurrences)

## Cross-Project Knowledge Transfer

When starting work in a new project, the skill:

1. **Detects project type** (language, framework, build tool)
2. **Loads transferable patterns** from other projects:
   - General coding style preferences
   - Common error fixes for the language/framework
   - Tool preferences (formatter, linter, test runner)
3. **Ignores project-specific patterns** (business logic, API endpoints)

### Transferable Categories
- Language preferences (TypeScript strict, Python type hints)
- Tool preferences (pnpm over npm, prettier config)
- Code style (functional vs OOP, naming conventions)
- Common error fixes (permission issues, dependency conflicts)
- Security practices (env file handling, input validation)

## Team Collaboration

### Shared Knowledge
Team members can share `.evolver/patterns/` via version control:

```gitignore
# .gitignore - share patterns, keep signals private
.evolver/signals/
.evolver/context/ACTIVE.md
.evolver/review/
```

```gitignore
# Track these in git
!.evolver/patterns/
!.evolver/config.toml
!.evolver/context/project-profile.md
```

### Review Cycle

The skill suggests a weekly review:
1. List all new patterns from the past 7 days
2. Identify patterns ready for promotion (recurrence >= 3)
3. Flag stale patterns for archival
4. Suggest merging duplicate patterns
5. Generate a summary of team learnings

## Smart Prompts

When the skill has accumulated enough knowledge, it can suggest improvements:

```
[EVOLVER] I noticed you've corrected me 3 times about using early returns.
         Should I promote this to a project convention?

[EVOLVER] This error pattern (port 3000 already in use) has occurred 5 times.
         I've added an auto-check to .evolver/patterns/error-fixes.md.

[EVOLVER] Weekly review: 8 new patterns, 2 ready for promotion, 1 archived.
         Run "evolver review" to see details.
```

## Configuration

The skill auto-generates `.evolver/config.toml` with sensible defaults:

```toml
[general]
auto_capture = true
dedup_threshold = 0.7          # Semantic similarity threshold (0-1)
promotion_threshold = 3        # Recurrence count to promote
compaction_interval = "30d"    # How often to run compaction
review_interval = "7d"         # How often to suggest review
max_active_signals = 500       # Max signals before forced compaction
max_active_context_lines = 200 # Max lines in active context

[transfer]
enabled = true
transferable_categories = ["style", "tools", "errors", "security"]

[capture]
# What to capture automatically
watch_corrections = true       # User corrections → LRN
watch_errors = true            # Command failures → ERR
watch_preferences = true       # Style choices → PREF
watch_requests = true          # New requests → FEAT
```

## Comparison with Basic Memory Skills

| Feature | Basic Memory | Self Evolver Pro |
|---------|-------------|-----------------|
| Store information | Yes | Yes |
| Semantic deduplication | No (exact match only) | Yes (multi-level) |
| Pattern promotion | No | Yes |
| Auto-compaction | No | Yes (age-based) |
| Cross-project transfer | No | Yes |
| Team collaboration | No | Yes (git-friendly) |
| Review cycle | No | Yes (weekly) |
| Smart suggestions | No | Yes |
| State management | No (flat list) | Yes (full lifecycle) |
| Category classification | No | Yes (5 signal types) |

## Usage Examples

### Automatic (No user action needed)
The skill watches for signals silently and captures them. Just use your AI agent normally.

### Manual Commands
- `"evolver status"` - Show current knowledge stats
- `"evolver review"` - Run manual review
- `"evolver export"` - Export all patterns as markdown
- `"evolver forget <topic>"` - Remove a specific pattern
- `"evolver transfer"` - Manually trigger cross-project transfer
- `"evolver compact"` - Force compaction run

### Integration Notes
This skill works with any AI coding agent that supports the SKILL.md standard. No external services, databases, or APIs required. Everything is stored as plain markdown files in the project directory.
