output "data_ingestion_uri" {
  description = "returns a string"
  value       = azurerm_kusto_cluster.this.data_ingestion_uri
}

output "id" {
  description = "returns a string"
  value       = azurerm_kusto_cluster.this.id
}

output "uri" {
  description = "returns a string"
  value       = azurerm_kusto_cluster.this.uri
}

output "this" {
  value = azurerm_kusto_cluster.this
}

