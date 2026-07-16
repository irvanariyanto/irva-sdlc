---
name: irva-sdlc-security-change
description: Implement security-sensitive changes using trust-boundary analysis, abuse cases, secure defaults, negative tests, and review.
---

# SDLC Security Change Workflow

## Use For
Authentication, authorization, session handling, secrets, payments, uploads, tenant isolation, sensitive data, cryptography, public APIs, or trust-boundary changes.

## Workflow
1. Identify protected assets, actors, entry points, trust boundaries, and attacker capabilities.
2. Define security invariants and abuse cases before implementation.
3. Inspect existing identity, authorization, validation, logging, storage, and error-handling conventions.
4. Apply least privilege, deny-by-default behavior, explicit authorization, secure defaults, and minimal data exposure.
5. Validate untrusted input at boundaries; avoid injection, path traversal, unsafe redirects, insecure deserialization, and secret leakage.
6. Add negative tests for unauthorized, malformed, replayed, cross-tenant, and boundary conditions as relevant.
7. Review logs, telemetry, errors, fixtures, and documentation for sensitive information.
8. Run dependency and security checks available in the repository.
9. Perform an independent security-focused review and resolve blocking findings.
10. Report residual risk and assumptions explicitly.

## Completion Gate
A successful happy path is not sufficient; abuse resistance and authorization correctness require evidence.

## Shared Engineering Rules

- Inspect before changing.
- Prefer the smallest complete solution.
- Follow repository conventions and preserve contracts unless change is required.
- Do not hide failures, weaken tests, or claim unexecuted validation.
- Keep changes within scope and report actual evidence.

## Final Response

Report outcome, evidence, decisions, risks or limitations, and any required next action.
