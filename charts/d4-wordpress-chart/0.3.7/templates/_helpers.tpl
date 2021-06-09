{{- define "d4-wordpress-chart.name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "d4-wordpress-chart.fullname" -}}
{{- printf "wordpress-%s" .Release.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "d4-wordpress-chart.chart" -}}
{{- printf "%s-%s" .Chart.Name .Chart.Version | replace "+" "_" | trunc 63 | trimSuffix "-" -}}
{{- end -}}
