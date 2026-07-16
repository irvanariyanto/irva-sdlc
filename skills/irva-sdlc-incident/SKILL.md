---
name: irva-sdlc-incident
description: Respond to software incidents by stabilizing service, preserving evidence, mitigating impact, recovering safely, and learning.
---

# SDLC Incident Workflow

## Priority Order
Safety and user impact → containment → recovery → diagnosis → permanent correction → learning.

## Workflow
1. Establish incident scope, severity, affected users, start time, current symptoms, and owners.
2. Preserve logs, traces, metrics, deploy history, and other evidence.
3. Stabilize and contain with the lowest-risk action available.
4. Communicate facts, uncertainty, impact, and next decisions without speculation.
5. Verify recovery through user-visible behavior and operational signals.
6. Build a timeline and identify root cause plus contributing conditions.
7. Implement and validate permanent corrective actions separately from emergency mitigation where appropriate.
8. Add regression tests, alerts, runbooks, or guardrails tied to the failure mode.
9. Write a blameless postmortem with impact, timeline, cause, detection, response, lessons, and owned actions.

## Prohibited
Do not erase evidence, conceal uncertainty, or introduce unrelated risky changes during active mitigation.

## Shared Engineering Rules

- Inspect before changing.
- Prefer the smallest complete solution.
- Follow repository conventions and preserve contracts unless change is required.
- Do not hide failures, weaken tests, or claim unexecuted validation.
- Keep changes within scope and report actual evidence.

## Final Response

Report outcome, evidence, decisions, risks or limitations, and any required next action.
