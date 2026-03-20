<div align="center">

# 🔥 Awesome AI Agent Skills

### AIエージェントを10倍強化する、本番対応の4つのスキル

**対応AIコーディングエージェント** — Claude Code、Codex CLI、Cursor、Windsurf、GitHub Copilot、CodeBuddy、OpenClaw、およびSKILL.mdをサポートするすべてのエージェント

[![MIT License](https://img.shields.io/badge/License-MIT-green.svg)](../LICENSE)
[![SKILL.md Standard](https://img.shields.io/badge/SKILL.md-Standard-blue.svg)](https://openagentskills.dev/docs/specification)
[![依存関係なし](https://img.shields.io/badge/依存-なし-success.svg)](#)
[![全LLM対応](https://img.shields.io/badge/対応-全LLM-orange.svg)](#)

---

**Languages / 多言語:**
[English](../README.md) | [中文](README_zh-CN.md) | [日本語](README_ja.md) | [한국어](README_ko.md) | [Español](README_es.md)

---

### ⭐ 役に立ったらスターをお願いします！⭐

> **1コマンドでインストール。設定不要。どこでも動く。**

</div>

---

## 🤔 なぜこのプロジェクトを作ったか

ClawHub（35K+ダウンロード）、GitHub（340K+ Stars）、SkillsMP（54.6万スキル）の人気上位50スキルを数週間かけて調査し、共通の問題パターンを発見しました。

| 問題 | 既存スキル | このリポジトリの解決策 |
|------|-----------|-------------------|
| コードレビューが1次元のみ | `code-review-skill` | **super-reviewer**：7-in-1 総合レビュー |
| メモリスキルが重複排除できない | `Self-Improving Agent` | **self-evolver-pro**：意味的重複排除 + 自動圧縮 |
| 長い会話でコンテキストが失われる | 基本的なメモリファイル | **context-master**：3層コンテキストアーキテクチャ |
| Git Hooksに手動設定が必要 | バラバラなhookスクリプト | **universal-hooks**：スタック自動検出、ゼロ設定 |

---

## 🎯 4つのスキル

### 1. 🔍 Super Reviewer — 7-in-1 コードレビューエンジン

7つの次元でコードを総合レビューします：

| 次元 | チェック内容 |
|------|------------|
| ✅ **正確性** | ロジックバグ、null処理、競合状態、エッジケース |
| 🔒 **セキュリティ** | OWASP Top 10、インジェクション、認証バイパス |
| ⚡ **パフォーマンス** | N+1クエリ、メモリリーク、アルゴリズム複雑度 |
| 🎨 **コードスタイル** | 命名規則、DRY原則、循環的複雑度 |
| 🏗️ **アーキテクチャ** | SOLID原則、結合度、デザインパターン |
| 🧪 **テスト** | カバレッジギャップ、エッジケース不足 |
| ♿ **アクセシビリティ** | WCAG 2.1 AA、ARIAラベル、キーボードナビ |

```
"このコードをレビューして" / "Review this PR"    →  完全7次元レポート
"セキュリティのみ" / "Security audit only"         →  セキュリティ専門レビュー
"簡潔に" / "Brief review"                          →  重要・警告のみ
```

---

### 2. 🧠 Self Evolver Pro — 自己改善メモリシステム

**取り替え対象**：Self-Improving Agent（15Kダウンロード）、ByteRover（16Kダウンロード）、Capability Evolver（35Kダウンロード）

既存スキルの最大の不満：**「なんでもメモするが重複排除ができず、コンテキストがゴミだらけになる」**

改善点：
- **意味的重複排除** — "constを使え"と"varを使うな"が同じと理解
- **ライフサイクル管理** — `new → active → recurring → promoted → archived`
- **自動圧縮** — 古い知識を自動的に要約・圧縮・アーカイブ
- **プロジェクト横断転送** — プロジェクトAで学んだことをプロジェクトBに自動適用
- **チームコラボ** — `.evolver/patterns/`をgitで共有、シグナルはプライベート

---

### 3. 📋 Context Master — インテリジェントコンテキスト管理

3層コンテキストアーキテクチャで「AIの物忘れ」を解消：

```
+---[ 第1層: HOT — 常時ロード ]--------------------+
|  現在タスク、アクティブファイル、最近の決定          |
|  予算: コンテキストウィンドウの30%                   |
+---[ 第2層: WARM — オンデマンド ]------------------+
|  ファイル要約、アーキテクチャ決定、エラー履歴         |
|  予算: コンテキストウィンドウの40%                   |
+---[ 第3層: COLD — アーカイブ ]------------------+
|  古い会話要約、過去の決定                           |
|  セマンティック検索でアクセス                        |
+--------------------------------------------------+
```

---

### 4. 🪝 Universal Hooks — ゼロ設定品質ゲート

**「setup git hooks」と一言言うだけで、あとは自動。**

プロジェクトのスタックを自動検出し、最適なフックをインストール：

| 検出スタック | インストールされるフック |
|------------|----------------------|
| React / Next.js | Prettier + ESLint + TypeScript + シークレット検出 |
| Python / Django | Ruff + mypy + pytest + pip audit |
| Go | gofmt + golint + go test + govulncheck |
| Rust | rustfmt + Clippy + cargo test + cargo audit |

---

## 🚀 インストール

```bash
# macOS / Linux
bash <(curl -fsSL https://raw.githubusercontent.com/gitstq/awesome-ai-agent-skills/main/scripts/install.sh)

# Windowsの場合
git clone https://github.com/gitstq/awesome-ai-agent-skills.git
cd awesome-ai-agent-skills
scripts\install.bat
```

**手動インストール（Claude Codeの例）**:
```bash
cp -r skills/super-reviewer ~/.claude/skills/
cp -r skills/self-evolver-pro ~/.claude/skills/
cp -r skills/context-master ~/.claude/skills/
cp -r skills/universal-hooks ~/.claude/skills/
```

---

## 🔄 互換性マトリクス

| エージェント | super-reviewer | self-evolver-pro | context-master | universal-hooks |
|------------|:-:|:-:|:-:|:-:|
| Claude Code | ✅ | ✅ | ✅ | ✅ |
| Codex CLI | ✅ | ✅ | ✅ | ✅ |
| Cursor | ✅ | ✅ | ✅ | ✅ |
| Windsurf | ✅ | ✅ | ✅ | ✅ |
| GitHub Copilot | ✅ | ✅ | ✅ | ✅ |
| CodeBuddy | ✅ | ✅ | ✅ | ✅ |
| OpenClaw | ✅ | ✅ | ✅ | ✅ |

---

## 📜 ライセンス

[MIT License](../LICENSE)

---

<div align="center">

### ⭐ 役に立ったらスターをお願いします！⭐

**1つのリポジトリ。4つのスキル。全AIエージェント対応。手間ゼロ。**

</div>
