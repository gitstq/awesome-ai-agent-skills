---
name: context-master
description: |
  Intelligent context management system for AI coding agents. Solves the critical problem of context window overflow by implementing a tiered context architecture with smart prioritization, automatic summarization, and dynamic loading. Features include: automatic context budget calculation based on model capacity, smart file prioritization using dependency graph analysis, conversation summarization with key decision preservation, and a rolling context window that keeps the most relevant information always available. Use when working on large codebases, long conversations, or when the AI agent starts "forgetting" earlier context. Trigger keywords: context management, context overflow, 智能上下文, 上下文管理, conversation summary, long conversation, large codebase, context window.
metadata:
  version: "2.0.0"
  author: awesome-ai-agent-skills
  license: MIT
  category: productivity
  tags:
    - context-management
    - memory-optimization
    - conversation-summarization
    - codebase-analysis
    - context-window
  compatibility:
    - claude-code
    - codex-cli
    - cursor
    - windsurf
    - github-copilot
    - codebuddy
    - openclaw
    - any-llm-agent
  quick-start: "Activates automatically when context gets long. Say 'summarize context' to force a summary."
---

# Context Master - Intelligent Context Management System

> Stop losing context in long coding sessions. Let Context Master manage your AI's memory intelligently.

## The Problem

Every AI coding agent has a context window limit. When conversations get long or codebases are large:
- The agent "forgets" earlier instructions
- Important decisions get lost in the noise
- Repetitive information wastes precious context
- The agent starts giving contradictory answers

**Context Master** solves this with a smart, tiered context management system.

## Core Architecture

### Three-Tier Context Model

```
┌─────────────────────────────────────────────┐
│  TIER 1: HOT CONTEXT (Always Loaded)         │
│  - Current task description                  │
│  - Active file contents                      │
│  - Recent decisions (last 10)                │
│  - User preferences                          │
│  Budget: 30% of context window               │
├─────────────────────────────────────────────┤
│  TIER 2: WARM CONTEXT (Loaded on Demand)     │
│  - Related file summaries                    │
│  - Architecture decisions                    │
│  - Error history & fixes                     │
│  Budget: 40% of context window               │
├─────────────────────────────────────────────┤
│  TIER 3: COLD CONTEXT (Archived)             │
│  - Old conversation summaries                │
│  - Historical decisions                      │
│  - Resolved issues                           │
│  Accessed via semantic search                │
│  Budget: 30% of context window               │
└─────────────────────────────────────────────┘
```

## Smart Features

### 1. Automatic Context Budget

The skill calculates optimal context allocation based on:
- **Model context window size** (128K, 200K, 1M, etc.)
- **Current usage level** (percentage consumed)
- **Task complexity** (number of files involved)
- **Conversation length** (number of turns)

When context reaches 70% capacity, it automatically:
1. Summarizes the oldest conversation turns
2. Archives resolved decisions
3. Compresses redundant information
4. Promotes critical info to Tier 1

### 2. Smart File Prioritization

When working with large codebases, not all files are equally important. Context Master uses a **dependency graph** to prioritize:

```
Priority Score = f(dependency_depth, change_frequency, relevance_to_task, test_coverage_inverse)
```

Files are ranked:
- **P0 (Must Include)**: Currently editing, directly imported by editing files
- **P1 (Should Include)**: Types/interfaces, utilities used by editing files
- **P2 (Nice to Have)**: Related tests, configuration files
- **P3 (Skip)**: Unrelated modules, documentation, generated files

### 3. Conversation Summarization

When summarizing conversations, Context Master preserves:

| What to Keep | What to Summarize | What to Discard |
|-------------|-------------------|-----------------|
| Final decisions | Discussion process | Greetings/pleasantries |
| Code changes made | Alternative approaches | Error output (keep summary) |
| Architecture choices | Reasoning chains | Repetitive confirmations |
| User preferences | Trade-off analysis | "OK", "thanks" responses |
| Open questions | Constraints discovered | Duplicate information |
| Error patterns | Debugging journey | Failed attempts summary |

### 4. Decision Log

Every important decision is captured in a structured format:

```markdown
## Decision Log

### [DEC-001] Use Zustand instead of Redux (Session 3)
- **Date**: 2026-03-20
- **Context**: Choosing state management for new React project
- **Decision**: Use Zustand for state management
- **Reasoning**: Smaller bundle size, simpler API, sufficient for our scale
- **Alternatives Considered**: Redux Toolkit, Jotai, Context API
- **Impact**: Affects all components, store setup pattern
- **Reversible**: Yes (medium effort)
```

### 5. Rolling Context Window

Instead of a simple FIFO queue, Context Master uses a **smart rolling window**:

1. **Anchor points**: Critical decisions and current task are always kept
2. **Recency bias**: More recent information has higher priority
3. **Reference counting**: Files/code mentioned multiple times stay longer
4. **Semantic relevance**: Information related to current task is promoted

## Session Management

### Session Start Protocol

When a new session begins:

1. **Load project context** from `.context/` directory
2. **Read decision log** to understand past choices
3. **Detect project state** (what was being worked on)
4. **Calculate context budget** based on model and task
5. **Display summary**: "Context Master: 47 files indexed, 23 decisions loaded, budget: 128K tokens"

### During Session

- **Monitor context usage** every 5 turns
- **Auto-summarize** when reaching 70% threshold
- **Track references** to maintain importance scores
- **Capture decisions** when agent makes a choice

### Session End Protocol

1. **Save current state** to `.context/session-latest.md`
2. **Update decision log** with any new decisions
3. **Archive old summaries** that are no longer relevant
4. **Generate handoff note** for next session

### Cross-Session Handoff

```markdown
## Session Handoff Note
**From**: Session #12 (2026-03-20 14:30)
**To**: Next session

### Current Task
Implementing user authentication flow with JWT tokens

### Progress
- [x] Login API endpoint
- [x] JWT token generation
- [ ] Token refresh mechanism
- [ ] Protected route middleware

### Key Decisions
- Using bcrypt for password hashing (DEC-015)
- JWT expires in 24h (DEC-016)
- Refresh tokens stored in httpOnly cookies (DEC-017)

### Open Questions
- Should we implement rate limiting on login?

### Files Modified
- src/api/auth.ts (added login endpoint)
- src/middleware/auth.ts (JWT verification)
- src/utils/jwt.ts (new file - token helpers)

### Next Steps
1. Implement refresh token rotation
2. Add rate limiting to login endpoint
3. Write integration tests for auth flow
```

## Context Store Structure

```
.context/
├── config.toml              # Context management config
├── decisions/
│   ├── DEC-001.md           # Individual decisions
│   └── ...
├── summaries/
│   ├── session-001.md       # Session summaries
│   └── ...
├── files/
│   ├── index.json           # File dependency graph
│   └── priorities.json      # Current file priorities
├── handoff.md               # Latest handoff note
└── stats.json               # Usage statistics
```

## Smart Commands

| Command | Description |
|---------|-------------|
| `"context status"` | Show current context usage and budget |
| `"context summarize"` | Force a conversation summary |
| `"context decisions"` | Show all decisions made |
| `"context handoff"` | Generate handoff note for next session |
| `"context priority <file>"` | Manually set file priority |
| `"context search <query>" | Search archived context |
| `"context compact"` | Force context compaction |
| `"context budget <size>"` | Set context window size |

## Anti-Patterns Prevented

1. **Context Amnesia**: Agent forgets instructions from earlier in the conversation
2. **Decision Drift**: Agent makes contradictory choices across sessions
3. **Noise Accumulation**: Low-value information fills up the context window
4. **Repetition**: Agent asks the same questions it already received answers to
5. **Context Shock**: Too much new context loaded at once overwhelms the agent

## Integration Notes

This skill works with any AI coding agent that supports the SKILL.md standard:
- Claude Code, Codex CLI, Cursor, Windsurf, GitHub Copilot
- CodeBuddy, OpenClaw, and any compatible agent
- No external dependencies required - all logic is embedded in this skill
- Context store uses plain markdown files for maximum compatibility
