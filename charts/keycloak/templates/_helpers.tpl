{{- define "keycloak.name" -}}
keycloak
{{- end }}

{{- define "keycloak.fullname" -}}
{{ .Release.Name }}-keycloak
{{- end }}
