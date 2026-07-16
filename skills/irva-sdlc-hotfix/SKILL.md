---
name: irva-sdlc-hotfix
description: Handle an urgent production defect with containment, minimal risk, regression protection, rollback planning, and follow-up.
---

# SDLC Hotfix Workflow

## Priority
Restore safe service before pursuing elegance.

## Workflow
1. Assess severity, user impact, blast radius, and whether immediate containment is available.
2. Preserve useful evidence before destructive actions.
3. Choose the safest mitigation: disable, roll back, isolate, rate-limit, or minimally patch.
4. Identify the root cause sufficiently to avoid worsening the incident.
5. Implement the smallest production-safe correction.
6. Add a targeted regression test or operational verification.
7. Define rollout, monitoring, abort criteria, and rollback steps.
8. Run critical-path validation; record checks that could not safely run.
9. Review for data integrity, security, compatibility, and secondary failure modes.
10. Document follow-up remediation separately from the emergency patch.

## Prohibited
No broad refactor, dependency overhaul, schema redesign, or unrelated cleanup in the hotfix unless required to restore service safely.

## Shared Engineering Rules

- Inspect before changing.
- Prefer the smallest complete solution.
- Follow repository conventions and preserve contracts unless change is required.
- Do not hide failures, weaken tests, or claim unexecuted validation.
- Keep changes within scope and report actual evidence.

## Final Response

Report outcome, evidence, decisions, risks or limitations, and any required next action.
