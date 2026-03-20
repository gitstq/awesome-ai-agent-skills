<div align="center">

# 🔥 Awesome AI Agent Skills

### 4 Skills de Nivel Producción que Hacen tu Agente de IA 10 Veces Mejor

**Compatible con TODOS los agentes de IA** — Claude Code, Codex CLI, Cursor, Windsurf, GitHub Copilot, CodeBuddy, OpenClaw y cualquier agente que soporte SKILL.md

[![MIT License](https://img.shields.io/badge/License-MIT-green.svg)](../LICENSE)
[![SKILL.md Standard](https://img.shields.io/badge/SKILL.md-Standard-blue.svg)](https://openagentskills.dev/docs/specification)
[![Sin Dependencias](https://img.shields.io/badge/Dependencias-Ninguna-success.svg)](#)
[![Todos los LLMs](https://img.shields.io/badge/Compatible-Todos_LLMs-orange.svg)](#)

---

**Languages / Idiomas:**
[English](../README.md) | [中文](README_zh-CN.md) | [日本語](README_ja.md) | [한국어](README_ko.md) | [Español](README_es.md)

---

### ⭐ Si te resulta útil, ¡dale una estrella! ⭐

> **Instalación con un comando. Cero configuración. Funciona en todas partes.**

</div>

---

## 🤔 Por qué existe esto

Pasé semanas estudiando los **50 skills de AI Agent más populares** en ClawHub (35K+ descargas), GitHub (340K+ stars) y SkillsMP (546K+ skills). Encontré un patrón:

| Problema | Skills existentes | Solución en este repo |
|---------|------------------|-----------------------|
| La revisión de código solo comprueba 1 dimensión | `code-review-skill` | **super-reviewer**: Revisión holística 7-en-1 |
| Los skills de memoria no pueden deduplicar | `Self-Improving Agent` | **self-evolver-pro**: Dedup semántico + compactación auto |
| El contexto se pierde en sesiones largas | Archivos de memoria básicos | **context-master**: Arquitectura de contexto de 3 niveles |
| Los Git Hooks requieren configuración manual | Scripts de hooks dispersos | **universal-hooks**: Detección automática del stack, cero config |

---

## 🎯 Los 4 Skills

### 1. 🔍 Super Reviewer — Motor de Revisión de Código 7-en-1

Realiza una **revisión holística a nivel de senior staff engineer** en 7 dimensiones:

| Dimensión | Qué verifica |
|-----------|-------------|
| ✅ **Corrección** | Bugs de lógica, manejo de null, condiciones de carrera |
| 🔒 **Seguridad** | OWASP Top 10, inyección, bypass de auth, exposición de datos |
| ⚡ **Rendimiento** | Consultas N+1, fugas de memoria, complejidad algorítmica |
| 🎨 **Estilo de Código** | Convenciones de nombres, DRY, complejidad ciclomática |
| 🏗️ **Arquitectura** | Principios SOLID, acoplamiento, patrones de diseño |
| 🧪 **Testing** | Brechas de cobertura, casos edge faltantes |
| ♿ **Accesibilidad** | WCAG 2.1 AA, etiquetas ARIA, navegación por teclado |

```
"Revisa este código" / "Review this PR"          →  Informe completo de 7 dimensiones
"Solo seguridad" / "Security audit only"           →  Revisión centrada en seguridad
"Revisión breve" / "Brief review"                  →  Solo críticos y advertencias
```

---

### 2. 🧠 Self Evolver Pro — Sistema de Memoria Auto-Mejorable

La queja #1 sobre los skills de memoria: **"Almacenan todo pero no pueden deduplicar, y con el tiempo el contexto está lleno de basura."**

Mejoras:
- **Deduplicación semántica** — Entiende que "usa const en vez de var" y "no uses var" son lo mismo
- **Gestión del ciclo de vida** — `new → active → recurring → promoted → archived`
- **Compactación automática** — El conocimiento antiguo se resume, comprime y archiva automáticamente
- **Transferencia entre proyectos** — Aprende en el Proyecto A, aplica automáticamente en el Proyecto B
- **Colaboración en equipo** — Comparte `.evolver/patterns/` via git, mantén señales privadas

---

### 3. 📋 Context Master — Gestor de Contexto Inteligente

Arquitectura de contexto de 3 niveles para resolver "la amnesia del AI":

```
+---[ NIVEL 1: HOT — Siempre cargado ]------------------+
|  Tarea actual, archivos activos, decisiones recientes  |
|  Presupuesto: 30% de la ventana de contexto            |
+---[ NIVEL 2: WARM — Bajo demanda ]--------------------+
|  Resúmenes de archivos, decisiones de arquitectura     |
|  Presupuesto: 40% de la ventana de contexto            |
+---[ NIVEL 3: COLD — Archivado ]----------------------+
|  Resúmenes de conversaciones antiguas                  |
|  Acceso via búsqueda semántica                         |
+------------------------------------------------------+
```

---

### 4. 🪝 Universal Hooks — Compuertas de Calidad Sin Configuración

**Di "setup git hooks" una vez y olvídate de la calidad del código para siempre.**

El skill **detecta automáticamente tu stack** e instala exactamente los hooks que necesitas:

| Stack Detectado | Hooks Instalados |
|----------------|----------------|
| React / Next.js | Prettier + ESLint + TypeScript + Detección de secretos |
| Python / Django | Ruff + mypy + pytest + pip audit |
| Go | gofmt + golint + go test + govulncheck |
| Rust | rustfmt + Clippy + cargo test + cargo audit |

---

## 🚀 Instalación

```bash
# macOS / Linux
bash <(curl -fsSL https://raw.githubusercontent.com/gitstq/awesome-ai-agent-skills/main/scripts/install.sh)

# Windows
git clone https://github.com/gitstq/awesome-ai-agent-skills.git
cd awesome-ai-agent-skills
scripts\install.bat
```

---

## 🔄 Matriz de Compatibilidad

| Agente | super-reviewer | self-evolver-pro | context-master | universal-hooks |
|--------|:-:|:-:|:-:|:-:|
| Claude Code | ✅ | ✅ | ✅ | ✅ |
| Codex CLI | ✅ | ✅ | ✅ | ✅ |
| Cursor | ✅ | ✅ | ✅ | ✅ |
| Windsurf | ✅ | ✅ | ✅ | ✅ |
| GitHub Copilot | ✅ | ✅ | ✅ | ✅ |
| CodeBuddy | ✅ | ✅ | ✅ | ✅ |
| OpenClaw | ✅ | ✅ | ✅ | ✅ |

---

## 📜 Licencia

[MIT License](../LICENSE)

---

<div align="center">

### ⭐ ¿Te ha resultado útil? ¡Dale una estrella! Te lo agradecerás luego. ⭐

**Un repositorio. Cuatro skills. Todos los agentes de IA. Sin complicaciones.**

</div>
