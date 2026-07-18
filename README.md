# SDLC AI Skills Pack

A production-oriented collection of modular AI coding skills for Claude Code, Codex, Cursor, GitHub Copilot, Antigravity, OpenCode, and compatible agents.

The pack covers discovery, requirements, architecture, implementation, testing, review, security, delivery, release, operations, incidents, and documentation.

## Install

Run the interactive installer directly from GitHub; cloning this repository is not required:

```bash
bash <(curl -fsSL https://raw.githubusercontent.com/irvanariyanto/irva-sdlc/main/install.sh)
```

Choose a tool and then choose a project-local or global destination:

| Tool | Project-local skills | Global skills |
|---|---|---|
| Claude Code | `.claude/skills` | `~/.claude/skills` |
| Codex | `.codex/skills` | `${CODEX_HOME:-$HOME/.codex}/skills` |
| Cursor | `.cursor/skills` | `~/.cursor/skills` |
| GitHub Copilot | `.github/skills` | `~/.copilot/skills` |
| Antigravity | `.agent/skills` | `~/.gemini/antigravity/skills` |
| OpenCode | `.opencode/skills` | `~/.config/opencode/skills` |

Select **Custom location** for another compatible tool. The installer skips identical skills and asks before replacing only files whose contents differ. To update installed skills, run the same command again.

If you cloned the repository, run `./install.sh` instead. To install one skill manually, copy its complete directory into your tool's skills directory:

```bash
cp -R skills/irva-sdlc-feature .claude/skills/
```

## How To Use

Start a request with the workflow that matches the task. For example:

```text
Use $irva-sdlc-feature to add workspace invitations with email validation.

Use $irva-sdlc-bugfix to diagnose why CSV exports time out for large reports.

Use $irva-sdlc-code-review to review the current diff against the requirement.
```

In Claude Code, invoke the same workflows as slash commands:

```text
/irva-sdlc-feature Add workspace invitations with email validation.
/irva-sdlc-code-review Review the current diff against the requirement.
```

Use one workflow as the primary entry point. Add a specialist only when the task needs focused expertise, such as database design, frontend accessibility, or release planning.

### Pick A Workflow

| Workflow | Use when |
|---|---|
| `irva-sdlc-feature` | Building a new feature or meaningful enhancement |
| `irva-sdlc-bugfix` | Fixing a defect, regression, crash, or incorrect behavior |
| `irva-sdlc-refactor` | Improving internal structure without intended behavior changes |
| `irva-sdlc-code-review` | Reviewing a diff, branch, or implementation plan independently |
| `irva-sdlc-hotfix` | Applying an urgent production correction |
| `irva-sdlc-database-migration` | Changing schemas, migrating data, or performing backfills |
| `irva-sdlc-security-change` | Changing authentication, authorization, sensitive data, or trust boundaries |
| `irva-sdlc-release` | Preparing release readiness, rollout, rollback, and verification |
| `irva-sdlc-incident` | Responding to an active incident and its follow-up |
| `irva-sdlc-dependency-upgrade` | Upgrading a library, framework, runtime, or toolchain |

### Common Paths

For a feature, begin with `irva-sdlc-feature`. It covers requirement clarification, implementation, tests, review, and validation. Add `irva-backend-engineer`, `irva-frontend-engineer`, or `irva-database-engineer` only when that specialty is central to the work.

For a production issue, use `irva-sdlc-hotfix` for an urgent correction or `irva-sdlc-incident` when the service needs stabilization, investigation, and recovery.

For a release, use `irva-sdlc-release` to prepare the rollout. Add `irva-release-manager` for focused Go/No-Go coordination and `irva-site-reliability-engineer` for observability and operational readiness.

## Specialist Skills

| Skill | Primary responsibility |
|---|---|
| `irva-product-analyst` | Turn requests into testable requirements and acceptance criteria |
| `irva-solution-architect` | Define boundaries, contracts, tradeoffs, and migration strategy |
| `irva-software-engineer` | Implement production-quality changes end to end |
| `irva-backend-engineer` | APIs, domain logic, persistence, jobs, and reliability |
| `irva-frontend-engineer` | UI architecture, accessibility, state, and performance |
| `irva-database-engineer` | Schema design, migrations, query correctness, and performance |
| `irva-test-engineer` | Test strategy, regression coverage, and deterministic automation |
| `irva-engineering-reviewer` | Risk-first review of code, architecture, tests, and regressions |
| `irva-security-engineer` | Threat modeling and secure implementation review |
| `irva-devops-engineer` | CI/CD, environments, infrastructure, and deployment safety |
| `irva-release-manager` | Release readiness, rollout, rollback, and change communication |
| `irva-site-reliability-engineer` | Reliability, observability, capacity, and operational readiness |
| `irva-incident-responder` | Incident triage, mitigation, recovery, and postmortems |
| `irva-technical-writer` | Accurate developer and user documentation |

## Operating Rules

1. Inspect the repository before proposing changes.
2. Prefer the smallest complete solution.
3. Match existing architecture and conventions.
4. Do not introduce abstractions for hypothetical needs.
5. Validate claims with available checks.
6. Never hide failing quality gates.
7. Separate pre-existing failures from newly introduced failures.
8. Keep final changes within scope.

See [ORCHESTRATION.md](ORCHESTRATION.md) for task routing and [QUALITY-GATES.md](QUALITY-GATES.md) for completion criteria.
