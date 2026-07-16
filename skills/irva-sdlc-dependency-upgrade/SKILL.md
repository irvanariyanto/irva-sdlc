---
name: irva-sdlc-dependency-upgrade
description: Upgrade software dependencies safely by assessing compatibility, migration requirements, transitive impact, and validation.
---

# SDLC Dependency Upgrade Workflow

## Workflow
1. Identify why the upgrade is needed: security, compatibility, maintenance, feature, or support window.
2. Inspect current usage, lockfile, transitive dependencies, build tooling, runtime constraints, and deployment environments.
3. Read authoritative release notes, migration guides, and deprecations for affected versions.
4. Classify risk: patch, minor, major, runtime/toolchain, or ecosystem-wide.
5. Upgrade the smallest coherent set of packages; avoid unrelated lockfile churn.
6. Adapt source, configuration, generated artifacts, and CI only as required.
7. Run targeted tests, typecheck, lint, build, integration tests, and representative runtime checks.
8. Inspect bundle size, performance, peer dependencies, licenses, and security findings when relevant.
9. Review compatibility and rollback strategy.
10. Document notable behavior changes and required developer actions.

## Completion Gate
The version number changing is not evidence of success. Application behavior and supported environments must be validated.

## Shared Engineering Rules

- Inspect before changing.
- Prefer the smallest complete solution.
- Follow repository conventions and preserve contracts unless change is required.
- Do not hide failures, weaken tests, or claim unexecuted validation.
- Keep changes within scope and report actual evidence.

## Final Response

Report outcome, evidence, decisions, risks or limitations, and any required next action.
