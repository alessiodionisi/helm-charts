{{- define "hetzner-cluster.clusterName" -}}
{{- .Release.Name | trunc 63 | trimSuffix "-" }}
{{- end }}

{{- define "hetzner-cluster.controlPlaneName" -}}
{{- printf "%s-control-plane" .Release.Name | trunc 63 | trimSuffix "-" }}
{{- end }}
