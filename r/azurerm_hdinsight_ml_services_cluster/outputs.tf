output "edge_ssh_endpoint" {
  description = "returns a string"
  value       = azurerm_hdinsight_ml_services_cluster.this.edge_ssh_endpoint
}

output "https_endpoint" {
  description = "returns a string"
  value       = azurerm_hdinsight_ml_services_cluster.this.https_endpoint
}

output "id" {
  description = "returns a string"
  value       = azurerm_hdinsight_ml_services_cluster.this.id
}

output "ssh_endpoint" {
  description = "returns a string"
  value       = azurerm_hdinsight_ml_services_cluster.this.ssh_endpoint
}

output "this" {
  value = azurerm_hdinsight_ml_services_cluster.this
}

