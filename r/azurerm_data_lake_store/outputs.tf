output "encryption_type" {
  description = "returns a string"
  value       = azurerm_data_lake_store.this.encryption_type
}

output "endpoint" {
  description = "returns a string"
  value       = azurerm_data_lake_store.this.endpoint
}

output "id" {
  description = "returns a string"
  value       = azurerm_data_lake_store.this.id
}

output "this" {
  value = azurerm_data_lake_store.this
}

