# Example: Feature Workflow

Request: Add idempotent payment webhook processing and an admin status view.

1. `irva-product-analyst`: define webhook states, duplicate behavior, permissions, and acceptance criteria.
2. `irva-solution-architect`: design event identity, transaction boundary, state transitions, and rollout.
3. `irva-backend-engineer`: implement verification, idempotency, persistence, and retry-safe processing.
4. `irva-frontend-engineer`: implement accessible status UI with loading, empty, and error states.
5. `irva-database-engineer`: review constraints, indexes, and online migration safety.
6. `irva-test-engineer`: cover duplicate delivery, invalid signatures, partial failures, and UI states.
7. `irva-engineering-reviewer`: audit requirement coverage and regression risks.
8. `irva-security-engineer`: review signature validation, authorization, secrets, and logging.
9. `irva-release-manager`: coordinate migration, deployment, monitoring, and rollback.
