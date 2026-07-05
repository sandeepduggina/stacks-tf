output "network_id" {
  description = "VPC network ID."
  value       = component.vpc.network_id
  type        = string
}

output "network_name" {
  description = "VPC network name."
  value       = component.vpc.network_name
  type        = string
}

output "network_self_link" {
  description = "VPC network self link."
  value       = component.vpc.network_self_link
  type        = string
}
