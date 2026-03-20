@echo off
REM ============================================================
REM  install.bat - Windows installer for Awesome AI Agent Skills
REM  Compatible with: Claude Code, Codex CLI, Cursor, Windsurf,
REM                   CodeBuddy, OpenClaw, and any SKILL.md agent
REM ============================================================

setlocal enabledelayedexpansion

echo.
echo  ============================================================
echo.
echo   Awesome AI Agent Skills - Windows Installer
echo.
echo   4 Production-Grade Skills for Every AI Agent
echo   Compatible with Claude, Codex, Cursor, and more
echo.
echo  ============================================================
echo.

REM Available Skills
echo  Available Skills:
echo.
echo    1. super-reviewer      - 7-in-1 Code Review Engine
echo    2. self-evolver-pro    - Self-Improving Memory System
echo    3. context-master      - Intelligent Context Manager
echo    4. universal-hooks     - Zero-Config Quality Gates
echo.

REM Detect agent
echo  Detecting AI coding agent...

if exist "%USERPROFILE%\.claude" (
    echo    Claude Code detected
    set "SKILL_DIR=%USERPROFILE%\.claude\skills"
) else if exist "%USERPROFILE%\.codex" (
    echo    Codex CLI detected
    set "SKILL_DIR=%USERPROFILE%\.codex\skills"
) else if exist "%USERPROFILE%\.workbuddy" (
    echo    CodeBuddy detected
    set "SKILL_DIR=%USERPROFILE%\.workbuddy\skills"
) else (
    echo    No specific agent detected
    set "SKILL_DIR=%USERPROFILE%\.ai-skills"
)

echo.
echo  Choose installation mode:
echo.
echo    [a] Install ALL skills (recommended)
echo    [1-4] Install specific skill
echo    [q] Quit
echo.

set /p choice="  Your choice: "

if /i "%choice%"=="a" goto install_all
if /i "%choice%"=="1" goto install_1
if /i "%choice%"=="2" goto install_2
if /i "%choice%"=="3" goto install_3
if /i "%choice%"=="4" goto install_4
if /i "%choice%"=="q" goto quit

echo  Invalid choice. Exiting.
goto :eof

:install_all
echo.
echo  Installing all skills...
call :install super-reviewer
call :install self-evolver-pro
call :install context-master
call :install universal-hooks
goto done

:install_1
echo.
call :install super-reviewer
goto done

:install_2
echo.
call :install self-evolver-pro
goto done

:install_3
echo.
call :install context-master
goto done

:install_4
echo.
call :install universal-hooks
goto done

:install
set "SKILL_NAME=%~1"
set "SOURCE=%~dp0..\skills\%SKILL_NAME%"
set "TARGET=%SKILL_DIR%\%SKILL_NAME%"

if not exist "%SOURCE%" (
    echo    ERROR: Skill '%SKILL_NAME%' not found at %SOURCE%
    exit /b 1
)

if not exist "%TARGET%" mkdir "%TARGET%"
xcopy /E /I /Y /Q "%SOURCE%\*" "%TARGET%\" >nul 2>&1
echo    [OK] %SKILL_NAME% installed to %TARGET%
exit /b 0

:done
echo.
echo  ============================================================
echo   Installation Complete!
echo  ============================================================
echo.
echo  Skills installed to: %SKILL_DIR%
echo.
echo  Usage in your AI agent:
echo    "Review this code"           - super-reviewer
echo    "Remember my preferences"     - self-evolver-pro
echo    "Summarize context"          - context-master
echo    "Setup git hooks"            - universal-hooks
echo.
goto :eof

:quit
echo  Bye!
goto :eof
