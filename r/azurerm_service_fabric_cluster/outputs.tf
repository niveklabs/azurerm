output "cluster_code_version" {
  description = "returns a string"
  value       = azurerm_service_fabric_cluster.this.cluster_code_version
}

output "cluster_endpoint" {
  description = "returns a string"
  value       = azurerm_service_fabric_cluster.this.cluster_endpoint
}

output "id" {
  description = "returns a string"
  value       = azurerm_service_fabric_cluster.this.id
}

output "this" {
  value = azurerm_service_fabric_cluster.this
}

