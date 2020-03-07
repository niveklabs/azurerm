output "connection_strings" {
  description = "returns a list of string"
  value       = azurerm_cosmosdb_account.this.connection_strings
  sensitive   = true
}

output "endpoint" {
  description = "returns a string"
  value       = azurerm_cosmosdb_account.this.endpoint
}

output "id" {
  description = "returns a string"
  value       = azurerm_cosmosdb_account.this.id
}

output "primary_master_key" {
  description = "returns a string"
  value       = azurerm_cosmosdb_account.this.primary_master_key
  sensitive   = true
}

output "primary_readonly_master_key" {
  description = "returns a string"
  value       = azurerm_cosmosdb_account.this.primary_readonly_master_key
  sensitive   = true
}

output "read_endpoints" {
  description = "returns a list of string"
  value       = azurerm_cosmosdb_account.this.read_endpoints
}

output "secondary_master_key" {
  description = "returns a string"
  value       = azurerm_cosmosdb_account.this.secondary_master_key
  sensitive   = true
}

output "secondary_readonly_master_key" {
  description = "returns a string"
  value       = azurerm_cosmosdb_account.this.secondary_readonly_master_key
  sensitive   = true
}

output "write_endpoints" {
  description = "returns a list of string"
  value       = azurerm_cosmosdb_account.this.write_endpoints
}

output "this" {
  value = azurerm_cosmosdb_account.this
}

