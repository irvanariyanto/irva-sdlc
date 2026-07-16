# Pragmatic Design Pattern Guidance

Use patterns to solve observed change pressure, not to decorate code.

- Strategy: multiple behaviors vary independently and selection is explicit.
- Adapter: an external or legacy interface must be translated behind a stable boundary.
- Factory: construction has meaningful branching, invariants, or dependency assembly.
- Repository: domain logic benefits from isolation from persistence details.
- Command: operations need encapsulation, queuing, audit, retry, or undo semantics.
- State: valid behavior depends on explicit lifecycle transitions.
- Observer/events: multiple consumers need loose coupling and eventual processing is acceptable.
- Dependency injection: volatile dependencies need substitution or lifecycle management.

Avoid a pattern when a function, module, or direct composition is clearer. Every abstraction should have a concrete responsibility, owner, and current consumer.
