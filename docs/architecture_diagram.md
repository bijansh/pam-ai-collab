# PAM Kubernetes Architecture

## Components Overview

- **OpenLDAP**: Base identity provider (users/groups)
- **Keycloak**: Central authentication & SSO, integrated with LDAP
- **Guacamole**: RDP/SSH gateway with Keycloak login
- **Vault**: Secrets engine, controlled via LDAP
- **AWX**: Automation platform, authenticates via Keycloak
- **Wazuh**: Threat monitoring, optional LDAP/SSO integration

## Networking
- All services reside in separate Kubernetes namespaces
- Ingress managed via NGINX Ingress Controller
- TLS enabled using cert-manager + Let's Encrypt

