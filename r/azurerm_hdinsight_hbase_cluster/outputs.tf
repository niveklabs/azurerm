output "https_endpoint" {
  description = "returns a string"
  value       = azurerm_hdinsight_hbase_cluster.this.https_endpoint
}

output "id" {
  description = "returns a string"
  value       = azurerm_hdinsight_hbase_cluster.this.id
}

output "ssh_endpoint" {
  description = "returns a string"
  value       = azurerm_hdinsight_hbase_cluster.this.ssh_endpoint
}

output "this" {
  value = azurerm_hdinsight_hbase_cluster.this
}

