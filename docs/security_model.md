# Security Model – PAM Stack

## Core Principles
- Secure by default (no public service without auth)
- Zero trust between services (inter-service auth via tokens or policies)
- No hardcoded secrets (Vault or Kubernetes Secrets only)

## Components Security
- **Keycloak**:
  - Admin access restricted via RBAC
  - External traffic via HTTPS only
- **Vault**:
  - Unseal keys split across operators (Shamir's Secret Sharing)
  - Audit log enabled
- **AWX**:
  - No job runs allowed for unauthenticated users
  - Secrets stored only via environment isolation

