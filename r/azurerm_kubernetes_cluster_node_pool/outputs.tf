output "id" {
  description = "returns a string"
  value       = azurerm_kubernetes_cluster_node_pool.this.id
}

output "max_pods" {
  description = "returns a number"
  value       = azurerm_kubernetes_cluster_node_pool.this.max_pods
}

output "node_count" {
  description = "returns a number"
  value       = azurerm_kubernetes_cluster_node_pool.this.node_count
}

output "os_disk_size_gb" {
  description = "returns a number"
  value       = azurerm_kubernetes_cluster_node_pool.this.os_disk_size_gb
}

output "this" {
  value = azurerm_kubernetes_cluster_node_pool.this
}

