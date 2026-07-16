# Skill Orchestration

## Default routing

- Ambiguous product request: `irva-product-analyst`
- Cross-cutting technical design: `irva-solution-architect`
- General feature or bug: `irva-software-engineer`
- Backend-heavy implementation: `irva-software-engineer` + `irva-backend-engineer`
- Frontend-heavy implementation: `irva-software-engineer` + `irva-frontend-engineer`
- Data model or migration: `irva-database-engineer`
- Test-focused task: `irva-test-engineer`
- Pre-merge audit: `irva-engineering-reviewer`
- Sensitive data, auth, payments, permissions, or exposed surfaces: `irva-security-engineer`
- Pipeline, deployment, environments, IaC: `irva-devops-engineer`
- Production release: `irva-release-manager`
- Reliability and production readiness: `irva-site-reliability-engineer`
- Active production problem: `irva-incident-responder`
- Documentation work: `irva-technical-writer`

## Recommended lifecycle

### Small change

```text
irva-software-engineer -> irva-engineering-reviewer
```

### Normal feature

```text
irva-product-analyst -> irva-software-engineer -> irva-test-engineer -> irva-engineering-reviewer
```

### High-risk feature

```text
irva-product-analyst -> irva-solution-architect -> specialists -> irva-test-engineer
-> irva-engineering-reviewer -> irva-security-engineer -> irva-release-manager
```

### Production incident

```text
irva-incident-responder -> irva-software-engineer -> irva-test-engineer
-> irva-engineering-reviewer -> irva-release-manager -> irva-technical-writer
```

## Conflict resolution

When recommendations conflict, prioritize:

1. Safety and security
2. Correctness and data integrity
3. Explicit requirements and acceptance criteria
4. Compatibility and operational continuity
5. Existing repository conventions
6. Maintainability and simplicity
7. Performance and extensibility
8. Elegance
