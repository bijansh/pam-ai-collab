# ADR-001: Use Keycloak as Central SSO

## Status: Accepted
## Context:
Multiple services (Guacamole, AWX) require centralized auth.

## Decision:
Deploy Keycloak with OpenLDAP backend, enable OIDC.

## Alternatives:
- Use Authentik → less community maturity
- Custom OAuth → more maintenance overhead

## Consequences:
- Better SSO integration
- Slight learning curve on Keycloak policies

