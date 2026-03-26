---
name: symcli-skill
description: "Execute SymCLI to solve math equations, optimize tensor graphs, or analyze C# code for vulnerabilities. Turn your coding agent into an AI mathematician. / 执行 SymCLI 来解决数学方程、优化张量图或分析 C# 代码的漏洞。将您的编码助手变成 AI 数学家。"
author: Wowo51
---

# SymCLI Skill (数学/分析技能)

SymCLI is a pure C# symbolic computation framework designed to act as an exact mathematical engine and code analyzer.

## Triggers / 触发器
- Solve equations, differential, algebraic / 解方程, 微分, 代数
- Tensor optimization, graph fusion / 张量优化, 图融合
- C# math analysis, security audit / C# 数学分析, 安全审计
- Precise math computation / 精确数学计算

## Primary Workflows

1. **Solving ProblemScript (.ps):** Create a .ps file with equations/rules and use SymCLI to compute the exact answer.
2. **Analyzing C# Code:** Scan C# files for mathematical correctness hazards (CSMATH...) and security-oriented patterns (CSSEC...).

## Usage Guidelines

- **OS Compatibility:** Use symcli.bat on Windows or symcli.sh on Unix-like systems.
- **ProblemScript:** Wrap configuration in <Options>...</Options>. Include constraints like x^2 + 2*x + 1 = 0 or rules like Rule(a + a, 2 * a).
- **C# Analysis:** Provide a specific .cs file or a directory to analyze.

### Agent Workflow
1. Interpret the user's mathematical/coding task.
2. Formulate the required input (e.g., write a .ps file).
3. Execute the appropriate symcli wrapper.
4. Read the output file and interpret the exact symbolic results back to the user.

## Examples

### Solving an algebraic equation using ProblemScript
1. Agent writes problem.ps with content:
   ```xml
   <Options>
     Target: x
     RulePacks: Algebraic
   </Options>
   x^2 - 4 = 0
   ```
2. Agent executes: `symcli.bat problem.ps result.txt`
3. Agent reads result.txt to find x = 2, x = -2.

### Analyzing C# code for math vulnerabilities
1. Agent executes: `symcli.bat analyze csharp-math src/MathCore/Calculator.cs report.json --json`
2. Agent reads report.json to review any CSMATH or CSSEC findings.
