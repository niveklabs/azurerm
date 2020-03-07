output "addon_profile" {
  description = "returns a list of object"
  value       = data.azurerm_kubernetes_cluster.this.addon_profile
}

output "agent_pool_profile" {
  description = "returns a list of object"
  value       = data.azurerm_kubernetes_cluster.this.agent_pool_profile
}

output "api_server_authorized_ip_ranges" {
  description = "returns a set of string"
  value       = data.azurerm_kubernetes_cluster.this.api_server_authorized_ip_ranges
}

output "dns_prefix" {
  description = "returns a string"
  value       = data.azurerm_kubernetes_cluster.this.dns_prefix
}

output "fqdn" {
  description = "returns a string"
  value       = data.azurerm_kubernetes_cluster.this.fqdn
}

output "id" {
  description = "returns a string"
  value       = data.azurerm_kubernetes_cluster.this.id
}

output "kube_admin_config" {
  description = "returns a list of object"
  value       = data.azurerm_kubernetes_cluster.this.kube_admin_config
}

output "kube_admin_config_raw" {
  description = "returns a string"
  value       = data.azurerm_kubernetes_cluster.this.kube_admin_config_raw
  sensitive   = true
}

output "kube_config" {
  description = "returns a list of object"
  value       = data.azurerm_kubernetes_cluster.this.kube_config
}

output "kube_config_raw" {
  description = "returns a string"
  value       = data.azurerm_kubernetes_cluster.this.kube_config_raw
  sensitive   = true
}

output "kubernetes_version" {
  description = "returns a string"
  value       = data.azurerm_kubernetes_cluster.this.kubernetes_version
}

output "linux_profile" {
  description = "returns a list of object"
  value       = data.azurerm_kubernetes_cluster.this.linux_profile
}

output "location" {
  description = "returns a string"
  value       = data.azurerm_kubernetes_cluster.this.location
}

output "network_profile" {
  description = "returns a list of object"
  value       = data.azurerm_kubernetes_cluster.this.network_profile
}

output "node_resource_group" {
  description = "returns a string"
  value       = data.azurerm_kubernetes_cluster.this.node_resource_group
}

output "private_fqdn" {
  description = "returns a string"
  value       = data.azurerm_kubernetes_cluster.this.private_fqdn
}

output "private_link_enabled" {
  description = "returns a bool"
  value       = data.azurerm_kubernetes_cluster.this.private_link_enabled
}

output "role_based_access_control" {
  description = "returns a list of object"
  value       = data.azurerm_kubernetes_cluster.this.role_based_access_control
}

output "service_principal" {
  description = "returns a list of object"
  value       = data.azurerm_kubernetes_cluster.this.service_principal
}

output "tags" {
  description = "returns a map of string"
  value       = data.azurerm_kubernetes_cluster.this.tags
}

output "windows_profile" {
  description = "returns a list of object"
  value       = data.azurerm_kubernetes_cluster.this.windows_profile
}

output "this" {
  value = azurerm_kubernetes_cluster.this
}

