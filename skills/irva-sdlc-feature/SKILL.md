---
name: irva-sdlc-feature
description: Implement a production-ready feature through requirements, design, implementation, testing, independent review, and validation.
---

# SDLC Feature Workflow

## Purpose
Use this workflow for new capabilities, meaningful enhancements, or cross-module behavior changes.

## Workflow
1. **Understand the request** — extract desired behavior, acceptance criteria, constraints, compatibility requirements, risks, and explicit non-goals.
2. **Inspect the repository** — read relevant instructions, architecture, entry points, similar implementations, contracts, tests, configuration, and documentation.
3. **Classify scope and risk** — small, standard, or high-risk. Treat authentication, authorization, payments, sensitive data, migrations, public contracts, concurrency, and production delivery as elevated risk.
4. **Design only what is needed** — define boundaries, data flow, contracts, error behavior, migration needs, rollout, and rollback. Avoid speculative architecture.
5. **Implement the smallest complete solution** — follow existing conventions, preserve compatibility, handle failures and boundaries, and keep changes focused.
6. **Apply specialist guidance when relevant** — backend, frontend, database, security, DevOps, or documentation. Do not invoke specialists that add no value.
7. **Test changed behavior** — expected path, important edge cases, failure paths, regression scenarios, and integration contracts.
8. **Review independently** — inspect the full diff and affected call sites for correctness, regressions, security, compatibility, missing tests, and unnecessary complexity. Resolve blocking findings.
9. **Validate** — run repository-defined format, lint, typecheck, tests, build, schema, migration, and domain-specific checks as applicable.
10. **Report evidence** — implemented behavior, key files, exact checks and outcomes, important decisions, limitations, and remaining issues.

## Stop Conditions
Stop and request explicit approval only for destructive, irreversible, production-impacting, or materially ambiguous decisions that cannot be safely inferred.

## Completion Gate
Do not declare completion while requirement-related failures, unresolved critical/high review findings, or unreported validation gaps remain.

## Shared Engineering Rules

- Inspect before changing.
- Prefer the smallest complete solution.
- Follow repository conventions and preserve contracts unless change is required.
- Do not hide failures, weaken tests, or claim unexecuted validation.
- Keep changes within scope and report actual evidence.

## Final Response

Report outcome, evidence, decisions, risks or limitations, and any required next action.
