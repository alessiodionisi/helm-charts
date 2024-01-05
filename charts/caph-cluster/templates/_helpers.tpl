{{- define "hetzner-cluster.name" -}}
{{- .Release.Name | trunc 63 | trimSuffix "-" }}
{{- end }}

{{- define "hetzner-cluster.controlPlaneName" -}}
{{- printf "%s-control-plane" .Release.Name | trunc 63 | trimSuffix "-" }}
{{- end }}

{{- define "hetzner-cluster.chart" -}}
{{- printf "%s-%s" .Chart.Name .Chart.Version | replace "+" "_" | trunc 63 | trimSuffix "-" }}
{{- end }}

{{- define "hetzner-cluster.labels" -}}
helm.sh/chart: {{ include "hetzner-cluster.chart" . | quote }}
{{ include "hetzner-cluster.selectorLabels" . }}
{{- end }}

{{- define "hetzner-cluster.selectorLabels" -}}
cluster.x-k8s.io/cluster-name: {{ include "hetzner-cluster.name" . | quote }}
{{- end }}
