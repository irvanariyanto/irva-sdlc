---
name: irva-sdlc-bugfix
description: Diagnose and fix a software defect using root-cause analysis, regression testing, minimal changes, review, and validation.
---

# SDLC Bugfix Workflow

## Purpose
Use this workflow for defects, regressions, incorrect behavior, crashes, flaky behavior, or unexpected output.

## Workflow
1. **Characterize the failure** — capture expected versus actual behavior, environment, inputs, frequency, impact, and known reproduction steps.
2. **Inspect evidence** — relevant code paths, recent changes, logs, tests, configuration, contracts, and similar incidents.
3. **Reproduce when possible** — prefer a deterministic failing test or minimal reproduction. If reproduction is unavailable, state the evidence used.
4. **Find the root cause** — distinguish root cause from symptoms and contributing factors. Trace affected callers and data flow.
5. **Add a regression test** — make the defect observable before or alongside the fix when practical.
6. **Implement the smallest safe fix** — avoid broad refactors and unrelated cleanup. Preserve behavior outside the defect scope.
7. **Run targeted validation first** — failing test, affected module, then broader relevant checks.
8. **Review regression risk** — neighboring paths, error handling, concurrency, compatibility, and missing edge cases.
9. **Report** — root cause, fix, tests, exact validation, and unresolved uncertainty.

## Completion Gate
A bugfix is incomplete without credible evidence that the reported failure is addressed and important regressions were checked.

## Shared Engineering Rules

- Inspect before changing.
- Prefer the smallest complete solution.
- Follow repository conventions and preserve contracts unless change is required.
- Do not hide failures, weaken tests, or claim unexecuted validation.
- Keep changes within scope and report actual evidence.

## Final Response

Report outcome, evidence, decisions, risks or limitations, and any required next action.
