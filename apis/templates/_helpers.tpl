{{/*
Retourne le nom complet d'une ressource
*/}}
{{- define "apis.fullname" -}}
{{- printf "api-%s" .name | trunc 63 | trimSuffix "-" -}}
{{- end }}

{{- define "api.defaults" -}}
secret: ghcr-secret
db:
  port: 5432
  path: /var/lib/postgresql/data
  volume: 1Gi
hpa:
  minReplicas: 2
  maxReplicas: 6
  targetCPUUtilization: 50