---
name: irva-sdlc-release
description: Prepare and execute a controlled software release with readiness checks, rollout, rollback, communication, and verification.
---

# SDLC Release Workflow

## Workflow
1. Confirm release scope, owners, target environment, compatibility, and included changes.
2. Verify required quality gates and review findings are resolved or explicitly accepted.
3. Inspect migrations, configuration, feature flags, secrets, dependencies, and infrastructure changes.
4. Define rollout strategy, sequencing, monitoring, success criteria, abort criteria, and rollback or forward-fix plan.
5. Prepare release notes and operator/user communication appropriate to the impact.
6. Execute deployment only when authorized and supported by available tools.
7. Run smoke tests and verify critical user journeys, health, metrics, logs, and error rates.
8. Monitor through the defined observation window.
9. Record outcome, deviations, incidents, and follow-up actions.

## Safety
Never imply a deployment occurred when only preparation was performed. Require explicit approval for production changes when not already authorized.

## Shared Engineering Rules

- Inspect before changing.
- Prefer the smallest complete solution.
- Follow repository conventions and preserve contracts unless change is required.
- Do not hide failures, weaken tests, or claim unexecuted validation.
- Keep changes within scope and report actual evidence.

## Final Response

Report outcome, evidence, decisions, risks or limitations, and any required next action.
