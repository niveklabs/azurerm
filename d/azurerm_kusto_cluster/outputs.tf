output "data_ingestion_uri" {
  description = "returns a string"
  value       = data.azurerm_kusto_cluster.this.data_ingestion_uri
}

output "id" {
  description = "returns a string"
  value       = data.azurerm_kusto_cluster.this.id
}

output "location" {
  description = "returns a string"
  value       = data.azurerm_kusto_cluster.this.location
}

output "tags" {
  description = "returns a map of string"
  value       = data.azurerm_kusto_cluster.this.tags
}

output "uri" {
  description = "returns a string"
  value       = data.azurerm_kusto_cluster.this.uri
}

output "this" {
  value = azurerm_kusto_cluster.this
}

