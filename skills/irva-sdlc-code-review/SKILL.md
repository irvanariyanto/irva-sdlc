---
name: irva-sdlc-code-review
description: Perform an independent, risk-first review of requirements, code changes, tests, contracts, and regressions.
---

# SDLC Code Review Workflow

## Default Mode
Read-only. Do not modify files unless explicitly asked to fix findings.

## Workflow
1. Read the requirement, acceptance criteria, repository instructions, and relevant architecture.
2. Inspect the complete diff, not only individual files.
3. Trace affected call sites, data flow, public contracts, migrations, and operational behavior.
4. Verify tests exercise the changed behavior and meaningful failure paths.
5. Look first for correctness, data loss, security, authorization, concurrency, compatibility, and rollback risks.
6. Report only actionable findings. Avoid subjective style comments without material impact.
7. Classify each finding as critical, high, medium, or low.
8. For each finding provide location, failure scenario, impact, and smallest reasonable correction.
9. End with one verdict: `approved`, `approved_with_notes`, or `changes_requested`.

## Review Standard
Do not approve based on intent. Approve based on observable implementation and evidence.

## Shared Engineering Rules

- Inspect before changing.
- Prefer the smallest complete solution.
- Follow repository conventions and preserve contracts unless change is required.
- Do not hide failures, weaken tests, or claim unexecuted validation.
- Keep changes within scope and report actual evidence.

## Final Response

Report outcome, evidence, decisions, risks or limitations, and any required next action.
