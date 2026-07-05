variable "project_id" {
  description = "GCP project ID."
  type        = string
}

variable "google_audience" {
  description = "JWT audience from WIF provider (jwt_audience)."
  type        = string
}

variable "google_token_file" {
  description = "Path to JWT token file from identity_token.gcp.token_file."
  type        = string
}

variable "google_service_account_email" {
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
