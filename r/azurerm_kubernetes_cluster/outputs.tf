output "fqdn" {
  description = "returns a string"
  value       = azurerm_kubernetes_cluster.this.fqdn
}

output "id" {
  description = "returns a string"
  value       = azurerm_kubernetes_cluster.this.id
}

output "kube_admin_config" {
  description = "returns a list of object"
  value       = azurerm_kubernetes_cluster.this.kube_admin_config
}

output "kube_admin_config_raw" {
  description = "returns a string"
  value       = azurerm_kubernetes_cluster.this.kube_admin_config_raw
  sensitive   = true
}

output "kube_config" {
  description = "returns a list of object"
  value       = azurerm_kubernetes_cluster.this.kube_config
}

output "kube_config_raw" {
  description = "returns a string"
  value       = azurerm_kubernetes_cluster.this.kube_config_raw
  sensitive   = true
}

output "kubernetes_version" {
  description = "returns a string"
  value       = azurerm_kubernetes_cluster.this.kubernetes_version
}

output "node_resource_group" {
  description = "returns a string"
  value       = azurerm_kubernetes_cluster.this.node_resource_group
}

output "private_fqdn" {
  description = "returns a string"
  value       = azurerm_kubernetes_cluster.this.private_fqdn
}

output "this" {
  value = azurerm_kubernetes_cluster.this
}

