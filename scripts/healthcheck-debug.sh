#!/bin/bash
# Basic probe and status test for PAM services

echo "[*] Keycloak"
kubectl -n pam-idp get pods
kubectl -n pam-idp exec deploy/keycloak -- curl -s http://localhost:8080/realms/master

echo "[*] Vault"
kubectl -n pam-sec get pods
kubectl -n pam-sec exec deploy/vault -- vault status

echo "[*] Guacamole"
kubectl -n pam-gateway get svc guacamole

echo "[*] Done."

