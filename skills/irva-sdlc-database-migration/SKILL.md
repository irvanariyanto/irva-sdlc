---
name: irva-sdlc-database-migration
description: Design and implement safe database changes with compatibility, data integrity, rollout, backfill, and recovery planning.
---

# SDLC Database Migration Workflow

## Workflow
1. Inspect current schema, data volume, constraints, indexes, queries, ORM behavior, and deployment topology.
2. Define the desired invariant and application compatibility window.
3. Prefer expand-and-contract for breaking schema transitions.
4. Evaluate locking, table rewrite, replication, transaction, storage, and query-plan risks.
5. Design backfills to be resumable, observable, idempotent, and safely batched.
6. Separate schema deployment, application deployment, backfill, enforcement, and cleanup when needed.
7. Define rollback or forward-recovery strategy; state when rollback is unsafe or impossible.
8. Test migration on representative data and verify both old and new application versions when rolling deployment is possible.
9. Add post-migration verification queries and operational monitoring.
10. Require explicit approval for destructive data loss, irreversible conversion, or production-wide locking risk.

## Completion Gate
Migration code alone is insufficient. Compatibility, rollout, verification, and recovery must be addressed.

## Shared Engineering Rules

- Inspect before changing.
- Prefer the smallest complete solution.
- Follow repository conventions and preserve contracts unless change is required.
- Do not hide failures, weaken tests, or claim unexecuted validation.
- Keep changes within scope and report actual evidence.

## Final Response

Report outcome, evidence, decisions, risks or limitations, and any required next action.
