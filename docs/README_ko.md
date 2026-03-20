<div align="center">

# 🔥 Awesome AI Agent Skills

### AI 에이전트를 10배 강화하는 프로덕션급 스킬 4개

**모든 AI 코딩 에이전트 지원** — Claude Code, Codex CLI, Cursor, Windsurf, GitHub Copilot, CodeBuddy, OpenClaw 및 SKILL.md를 지원하는 모든 에이전트

[![MIT License](https://img.shields.io/badge/License-MIT-green.svg)](../LICENSE)
[![SKILL.md Standard](https://img.shields.io/badge/SKILL.md-Standard-blue.svg)](https://openagentskills.dev/docs/specification)
[![외부 의존성 없음](https://img.shields.io/badge/Dependencies-없음-success.svg)](#)
[![모든 LLM 지원](https://img.shields.io/badge/Compatible-All_LLMs-orange.svg)](#)

---

**Languages / 다국어:**
[English](../README.md) | [中文](README_zh-CN.md) | [日本語](README_ja.md) | [한국어](README_ko.md) | [Español](README_es.md)

---

### ⭐ 도움이 됐다면 스타를 눌러주세요! ⭐

> **한 줄 명령으로 설치. 설정 불필요. 어디서든 작동.**

</div>

---

## 🤔 왜 만들었나요?

ClawHub(35K+ 다운로드), GitHub(340K+ Stars), SkillsMP(54만 6천 스킬)에서 가장 인기 있는 50개의 AI Agent Skill을 수 주 동안 분석한 결과 공통된 문제점을 발견했습니다.

| 문제 | 기존 스킬 | 이 프로젝트의 해결책 |
|------|---------|------------------|
| 코드 리뷰가 1차원만 검사 | `code-review-skill` | **super-reviewer**: 7-in-1 종합 리뷰 |
| 메모리 스킬이 중복 제거 불가 | `Self-Improving Agent` | **self-evolver-pro**: 의미론적 중복 제거 + 자동 압축 |
| 긴 대화에서 컨텍스트 소실 | 기본 메모리 파일 | **context-master**: 3계층 컨텍스트 아키텍처 |
| Git Hooks 수동 설정 필요 | 흩어진 hook 스크립트 | **universal-hooks**: 스택 자동 감지, 설정 불필요 |

---

## 🎯 4개의 스킬 소개

### 1. 🔍 Super Reviewer — 7-in-1 코드 리뷰 엔진

7가지 차원에서 시니어 엔지니어 수준의 코드 리뷰를 수행합니다:

| 차원 | 검사 내용 |
|------|---------|
| ✅ **정확성** | 로직 버그, null 처리, 경쟁 조건, 엣지 케이스 |
| 🔒 **보안** | OWASP Top 10, 인젝션 공격, 인증 우회, 데이터 노출 |
| ⚡ **성능** | N+1 쿼리, 메모리 누수, 알고리즘 복잡도 |
| 🎨 **코드 스타일** | 명명 규칙, DRY, 순환 복잡도 |
| 🏗️ **아키텍처** | SOLID 원칙, 결합도, 디자인 패턴 |
| 🧪 **테스트** | 커버리지 갭, 엣지 케이스 누락 |
| ♿ **접근성** | WCAG 2.1 AA, ARIA 레이블, 키보드 내비게이션 |

```
"코드 리뷰해줘" / "Review this PR"         →  완전한 7차원 리포트
"보안만 검사해" / "Security audit only"     →  보안 전용 리뷰
"간략히 리뷰해" / "Brief review"            →  중요 및 경고만
```

---

### 2. 🧠 Self Evolver Pro — 자기 개선 메모리 시스템

기존 메모리 스킬의 가장 큰 불만: **"모든 걸 저장하지만 중복 제거가 안 돼서 나중엔 컨텍스트가 쓰레기로 가득 찬다."**

개선 사항:
- **의미론적 중복 제거** — "const를 써라"와 "var를 쓰지 마라"가 같은 의미임을 이해
- **생명주기 관리** — `new → active → recurring → promoted → archived`
- **자동 압축** — 오래된 지식을 자동 요약·압축·아카이브
- **프로젝트 간 전이** — 프로젝트 A에서 배운 선호도를 프로젝트 B에 자동 적용
- **팀 협업** — `.evolver/patterns/`를 git으로 공유, 시그널은 비공개 유지

---

### 3. 📋 Context Master — 지능형 컨텍스트 관리

3계층 컨텍스트 아키텍처로 "AI의 건망증"을 해결:

```
+---[ 1계층: HOT — 항상 로드 ]-------------------+
|  현재 작업, 활성 파일, 최근 결정사항              |
|  예산: 컨텍스트 창의 30%                        |
+---[ 2계층: WARM — 온디맨드 ]-------------------+
|  파일 요약, 아키텍처 결정, 오류 이력              |
|  예산: 컨텍스트 창의 40%                        |
+---[ 3계층: COLD — 아카이브 ]------------------+
|  오래된 대화 요약, 과거 결정사항                  |
|  시맨틱 검색으로 접근                            |
+------------------------------------------------+
```

---

### 4. 🪝 Universal Hooks — 제로 설정 품질 게이트

**"setup git hooks"라고 한 번만 말하면 끝.**

프로젝트 스택을 자동 감지하고 필요한 훅을 설치합니다:

| 감지된 스택 | 설치되는 훅 |
|-----------|-----------|
| React / Next.js | Prettier + ESLint + TypeScript + 시크릿 감지 |
| Python / Django | Ruff + mypy + pytest + pip audit |
| Go | gofmt + golint + go test + govulncheck |
| Rust | rustfmt + Clippy + cargo test + cargo audit |

---

## 🚀 설치

```bash
# macOS / Linux
bash <(curl -fsSL https://raw.githubusercontent.com/gitstq/awesome-ai-agent-skills/main/scripts/install.sh)

# Windows
git clone https://github.com/gitstq/awesome-ai-agent-skills.git
cd awesome-ai-agent-skills
scripts\install.bat
```

---

## 🔄 호환성 매트릭스

| 에이전트 | super-reviewer | self-evolver-pro | context-master | universal-hooks |
|---------|:-:|:-:|:-:|:-:|
| Claude Code | ✅ | ✅ | ✅ | ✅ |
| Codex CLI | ✅ | ✅ | ✅ | ✅ |
| Cursor | ✅ | ✅ | ✅ | ✅ |
| Windsurf | ✅ | ✅ | ✅ | ✅ |
| GitHub Copilot | ✅ | ✅ | ✅ | ✅ |
| CodeBuddy | ✅ | ✅ | ✅ | ✅ |
| OpenClaw | ✅ | ✅ | ✅ | ✅ |

---

## 📜 라이선스

[MIT License](../LICENSE)

---

<div align="center">

### ⭐ 유용하다면 스타를 눌러주세요! 나중에 고마워할 거예요. ⭐

**하나의 저장소. 4개의 스킬. 모든 AI 에이전트. 번거로움 없이.**

</div>
