{{/*
Expand the name of the chart.
*/}}
{{- define "node-hello-world.name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{/*
Create a fullname using the release name and the chart name.
*/}}
{{- define "node-hello-world.fullname" -}}
{{- $name := default .Chart.Name .Values.nameOverride -}}
{{- if .Release.IsInstall -}}
{{- printf "%s-%s" .Release.Name $name | trunc 63 | trimSuffix "-" -}}
{{- else -}}
{{- printf "%s" $name | trunc 63 | trimSuffix "-" -}}
{{- end -}}
{{- end -}}