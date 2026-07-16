# SDLC Quality Gates

A task is complete only when the applicable gates pass or an explicit limitation is reported.

## Requirement gate

- Behavior and non-goals are understood.
- Acceptance criteria are testable.
- Compatibility expectations are known.
- Error and edge-case behavior are defined.

## Design gate

- Existing architecture was inspected.
- The design uses clear boundaries and ownership.
- Tradeoffs and migration needs are documented.
- Complexity is proportional to the problem.

## Implementation gate

- The required behavior is complete.
- Naming, structure, and error handling are clear.
- No unrelated changes, debug code, or placeholders remain.
- Security and privacy expectations are respected.

## Verification gate

Run the repository's applicable commands:

```text
format
lint
typecheck
unit tests
integration tests
end-to-end tests
build
schema and migration validation
security scans
```

Do not claim a check passed unless it was run successfully.

## Review gate

- Requirement coverage was checked against the diff.
- Regression, failure, and compatibility risks were examined.
- Tests cover observable behavior and important failure paths.
- Findings are prioritized by impact and confidence.

## Release gate

- Deployment and rollback are defined.
- Configuration and migrations are safe.
- Observability supports validation after release.
- User-facing and operator-facing changes are communicated.

## Operational gate

- Alerts are actionable.
- Logs and metrics avoid sensitive data.
- Capacity, timeout, retry, and failure behavior are understood.
- Runbooks exist for meaningful operational risks.
