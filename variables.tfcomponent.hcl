variable "project_id" {
  description = "GCP project ID."
  type        = string
}

variable "identity_token" {
  description = "JWT from identity_token.gcp.jwt (injected per deployment run)."
  type        = string
  ephemeral   = true
}

variable "audience" {
  description = "WIF provider audience (jwt_audience output from identity-tokens setup)."
  type        = string
}

variable "service_account_email" {
  description = "GCP service account email for Stacks impersonation."
  type        = string
}

variable "region" {
  description = "GCP region for the provider."
  type        = string
  default     = "us-central1"
}

variable "network_name" {
  description = "VPC network name for this deployment."
  type        = string
}

variable "routing_mode" {
  description = "VPC routing mode: REGIONAL or GLOBAL."
  type        = string
  default     = "REGIONAL"
}
