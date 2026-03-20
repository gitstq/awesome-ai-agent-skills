#!/bin/bash
# ============================================================
#  install.sh - One-click installer for all skills
#  Compatible with: Claude Code, Codex CLI, Cursor, Windsurf,
#                   CodeBuddy, OpenClaw, and any SKILL.md agent
# ============================================================

set -e

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
REPO_DIR="$(dirname "$SCRIPT_DIR")"

# Colors
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
CYAN='\033[0;36m'
NC='\033[0m' # No Color

print_header() {
    echo -e "${CYAN}"
    echo "  ╔═══════════════════════════════════════════════════════╗"
    echo "  ║                                                       ║"
    echo "  ║   🔥 Awesome AI Agent Skills - Installer              ║"
    echo "  ║                                                       ║"
    echo "  ║   4 Production-Grade Skills for Every AI Agent        ║"
    echo "  ║   Compatible with Claude, Codex, Cursor, and more     ║"
    echo "  ║                                                       ║"
    echo "  ╚═══════════════════════════════════════════════════════╝"
    echo -e "${NC}"
}

print_skill_list() {
    echo -e "${BLUE}  Available Skills:${NC}"
    echo ""
    echo "    1. 🔍 super-reviewer      - 7-in-1 Code Review Engine"
    echo "    2. 🧠 self-evolver-pro    - Self-Improving Memory System"
    echo "    3. 📋 context-master      - Intelligent Context Manager"
    echo "    4. 🪝 universal-hooks     - Zero-Config Quality Gates"
    echo ""
}

detect_agent() {
    echo -e "${YELLOW}  Detecting AI coding agent...${NC}"

    # Check for Claude Code
    if command -v claude &> /dev/null; then
        echo "    ✓ Claude Code detected"
        AGENT="claude"
        SKILL_DIR="$HOME/.claude/skills"
    # Check for Codex CLI
    elif command -v codex &> /dev/null; then
        echo "    ✓ Codex CLI detected"
        AGENT="codex"
        SKILL_DIR="$HOME/.codex/skills"
    # Check for CodeBuddy
    elif [ -d "$HOME/.workbuddy" ]; then
        echo "    ✓ CodeBuddy detected"
        AGENT="codebuddy"
        SKILL_DIR="$HOME/.workbuddy/skills"
    # Check for OpenClaw
    elif command -v openclaw &> /dev/null; then
        echo "    ✓ OpenClaw detected"
        AGENT="openclaw"
        SKILL_DIR="$HOME/.openclaw/skills"
    else
        echo "    ⚠ No specific agent detected"
        echo "    Using default location: ~/.ai-skills/"
        AGENT="generic"
        SKILL_DIR="$HOME/.ai-skills"
    fi

    echo ""
}

install_skill() {
    local skill_name=$1
    local skill_desc=$2
    local source="$REPO_DIR/skills/$skill_name"

    if [ ! -d "$source" ]; then
        echo -e "${RED}    ✗ Skill '$skill_name' not found at $source${NC}"
        return 1
    fi

    local target="$SKILL_DIR/$skill_name"
    mkdir -p "$target"

    # Copy all files including subdirectories
    cp -r "$source"/* "$target/" 2>/dev/null || cp -r "$source/." "$target/" 2>/dev/null

    echo -e "${GREEN}    ✓ $skill_desc${NC}"
    echo "      → $target"
}

install_all() {
    echo -e "${BLUE}  Installing all skills...${NC}"
    echo ""

    install_skill "super-reviewer"   "super-reviewer  - 7-in-1 Code Review Engine"
    install_skill "self-evolver-pro" "self-evolver-pro - Self-Improving Memory System"
    install_skill "context-master"   "context-master   - Intelligent Context Manager"
    install_skill "universal-hooks"  "universal-hooks  - Zero-Config Quality Gates"

    echo ""
}

install_single() {
    local choice=$1

    case $choice in
        1) install_skill "super-reviewer"  "super-reviewer  - 7-in-1 Code Review Engine" ;;
        2) install_skill "self-evolver-pro" "self-evolver-pro - Self-Improving Memory System" ;;
        3) install_skill "context-master"  "context-master   - Intelligent Context Manager" ;;
        4) install_skill "universal-hooks" "universal-hooks  - Zero-Config Quality Gates" ;;
        *) echo -e "${RED}    Invalid choice${NC}"; exit 1 ;;
    esac
    echo ""
}

print_success() {
    echo -e "${GREEN}"
    echo "  ╔═══════════════════════════════════════════════════════╗"
    echo "  ║                                                       ║"
    echo "  ║   ✅ Installation Complete!                           ║"
    echo "  ║                                                       ║"
    echo "  ╚═══════════════════════════════════════════════════════╝"
    echo -e "${NC}"
    echo "  Skills installed to: $SKILL_DIR"
    echo ""
    echo "  To use a skill, simply say in your AI agent:"
    echo ""
    echo "    • \"Review this code\"           → activates super-reviewer"
    echo "    • \"Remember my preferences\"     → activates self-evolver-pro"
    echo "    • \"Summarize context\"          → activates context-master"
    echo "    • \"Setup git hooks\"            → activates universal-hooks"
    echo ""
    echo -e "  ${CYAN}Happy coding! 🚀${NC}"
}

# ====== Main ======

print_header
print_skill_list
detect_agent

echo -e "${YELLOW}  Choose installation mode:${NC}"
echo ""
echo "    [a] Install ALL skills (recommended)"
echo "    [1-4] Install specific skill"
echo "    [q] Quit"
echo ""
read -p "  Your choice: " choice

case $choice in
    a|A|"")
        install_all
        print_success
        ;;
    1|2|3|4)
        install_single $choice
        print_success
        ;;
    q|Q)
        echo "  Bye! 👋"
        exit 0
        ;;
    *)
        echo -e "${RED}  Invalid choice. Exiting.${NC}"
        exit 1
        ;;
esac
