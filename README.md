# SDLC AI Skills Pack

A production-oriented collection of modular AI coding skills for Codex, Claude Code, Cursor, and similar coding agents.

The pack covers the complete software development lifecycle: discovery, requirements, architecture, implementation, testing, review, security, delivery, release, operations, incidents, and documentation.

## Recommended usage

Use `irva-sdlc-feature` as the default workflow for feature work and `irva-software-engineer` for focused implementation tasks. Add a specialist when the task is domain-heavy. Use `irva-engineering-reviewer` after implementation and before merge.

Typical workflow:

```text
irva-product-analyst
  -> irva-solution-architect
  -> irva-software-engineer (+ backend/frontend/database specialist)
  -> irva-test-engineer
  -> irva-engineering-reviewer
  -> irva-security-engineer
  -> irva-devops-engineer
  -> irva-release-manager
  -> irva-site-reliability-engineer
```

Not every task needs every skill. Select the smallest set that covers the risk and scope.


## Workflow skills

These are the entry points you normally invoke directly from Codex or Claude Code. They orchestrate the relevant specialist guidance inside one executable skill workflow.

| Workflow | Use when |
|---|---|
| `irva-sdlc-feature` | New feature or meaningful enhancement |
| `irva-sdlc-bugfix` | Defect, regression, crash, or incorrect behavior |
| `irva-sdlc-refactor` | Internal structural improvement without intended behavior change |
| `irva-sdlc-code-review` | Independent review of a change or branch |
| `irva-sdlc-hotfix` | Urgent production correction |
| `irva-sdlc-database-migration` | Schema, data migration, or backfill |
| `irva-sdlc-security-change` | Authentication, authorization, sensitive data, or trust-boundary change |
| `irva-sdlc-release` | Release readiness, rollout, rollback, and verification |
| `irva-sdlc-incident` | Active incident response and post-incident learning |
| `irva-sdlc-dependency-upgrade` | Library, framework, runtime, or toolchain upgrade |

### Invocation examples

```text
Codex: Use $irva-sdlc-feature to implement <requirement>.
Claude: /irva-sdlc-feature Implement <requirement>.

Codex: Use $irva-sdlc-bugfix to fix <bug>.
Claude: /irva-sdlc-code-review Review the current diff against the requirement.
```

Use workflow skills as the normal entry point. Specialist skills remain available for focused tasks or additional domain guidance. No YAML runner is required.

## Specialist skills

| Skill | Primary responsibility |
|---|---|
| `irva-product-analyst` | Turn requests into testable requirements and acceptance criteria |
| `irva-solution-architect` | Define boundaries, contracts, tradeoffs, and migration strategy |
| `irva-software-engineer` | Implement production-quality changes end to end |
| `irva-backend-engineer` | APIs, domain logic, persistence, jobs, reliability |
| `irva-frontend-engineer` | UI architecture, accessibility, state, performance |
| `irva-database-engineer` | Schema design, migrations, query correctness and performance |
| `irva-test-engineer` | Test strategy, regression coverage, deterministic automation |
| `irva-engineering-reviewer` | Risk-first review of code, architecture, tests, and regressions |
| `irva-security-engineer` | Threat modeling and secure implementation review |
| `irva-devops-engineer` | CI/CD, environments, infrastructure, deployment safety |
| `irva-release-manager` | Release readiness, rollout, rollback, and change communication |
| `irva-site-reliability-engineer` | Reliability, observability, capacity, and operational readiness |
| `irva-incident-responder` | Incident triage, mitigation, recovery, and postmortems |
| `irva-technical-writer` | Maintain useful, accurate developer and user documentation |

## Installation

Run the interactive installer directly from GitHub; cloning this repository is not required:

```bash
bash <(curl -fsSL https://raw.githubusercontent.com/irvanariyanto/irva-sdlc/main/install.sh)
```

The menu supports Claude Code, Codex, Cursor, GitHub Copilot, Antigravity, OpenCode, and a custom directory. Each named tool offers a project-local or global installation target. Existing skills with an identical `SKILL.md` are skipped automatically; you are asked before replacing only files whose contents differ.

To run it after cloning, use `./install.sh`.

To install an individual skill manually, copy its directory into the location recognized by your coding tool. Examples:

```bash
# Claude Code / generic skill layout
cp -R skills/irva-software-engineer .claude/skills/

# Codex / generic repository instructions
cp skills/irva-software-engineer/SKILL.md .agent/irva-software-engineer.md
```

For tools that do not support cross-skill references, each `SKILL.md` is intentionally self-contained enough to work independently.

## Operating rules

1. Inspect the repository before proposing changes.
2. Prefer the smallest complete solution.
3. Match existing architecture and conventions.
4. Do not introduce abstractions for hypothetical needs.
5. Validate all claims with available checks.
6. Never hide failing quality gates.
7. Separate pre-existing failures from newly introduced failures.
8. Keep final changes within scope.

See `ORCHESTRATION.md` for task routing and `QUALITY-GATES.md` for completion criteria.
