output "id" {
  description = "returns a string"
  value       = data.azurerm_mssql_elasticpool.this.id
}

output "location" {
  description = "returns a string"
  value       = data.azurerm_mssql_elasticpool.this.location
}

output "max_size_bytes" {
  description = "returns a number"
  value       = data.azurerm_mssql_elasticpool.this.max_size_bytes
}

output "max_size_gb" {
  description = "returns a number"
  value       = data.azurerm_mssql_elasticpool.this.max_size_gb
}

output "per_db_max_capacity" {
  description = "returns a number"
  value       = data.azurerm_mssql_elasticpool.this.per_db_max_capacity
}

output "per_db_min_capacity" {
  description = "returns a number"
  value       = data.azurerm_mssql_elasticpool.this.per_db_min_capacity
}

output "tags" {
  description = "returns a map of string"
  value       = data.azurerm_mssql_elasticpool.this.tags
}

output "zone_redundant" {
  description = "returns a bool"
  value       = data.azurerm_mssql_elasticpool.this.zone_redundant
}

output "this" {
  value = azurerm_mssql_elasticpool.this
}

