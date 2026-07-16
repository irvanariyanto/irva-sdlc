---
name: irva-sdlc-refactor
description: Improve internal code structure while preserving observable behavior and proving safety with tests and validation.
---

# SDLC Refactor Workflow

## Purpose
Use this workflow when the primary goal is maintainability, clarity, modularity, dependency reduction, or structural improvement without intentional behavior change.

## Workflow
1. **Define the problem** — identify concrete maintenance pain, duplication, coupling, complexity, or unsafe structure.
2. **Set boundaries** — define observable behavior that must remain unchanged and explicit non-goals.
3. **Inspect consumers and contracts** — public APIs, side effects, persistence, events, tests, and operational assumptions.
4. **Establish a safety baseline** — run existing tests and add characterization tests where behavior is insufficiently protected.
5. **Choose the smallest structural improvement** — do not add layers, interfaces, or patterns without measurable simplification.
6. **Refactor incrementally** — keep changes reviewable and preserve behavior at every step.
7. **Validate equivalence** — targeted tests, full relevant checks, build, and contract verification.
8. **Review the result** — confirm complexity, coupling, or duplication genuinely improved and no speculative abstraction was introduced.
9. **Report** — what improved, what stayed unchanged, and evidence supporting safety.

## Completion Gate
The refactor must preserve intended behavior, pass relevant checks, and produce a clear maintenance benefit.

## Shared Engineering Rules

- Inspect before changing.
- Prefer the smallest complete solution.
- Follow repository conventions and preserve contracts unless change is required.
- Do not hide failures, weaken tests, or claim unexecuted validation.
- Keep changes within scope and report actual evidence.

## Final Response

Report outcome, evidence, decisions, risks or limitations, and any required next action.
