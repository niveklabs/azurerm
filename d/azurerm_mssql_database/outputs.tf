output "collation" {
  description = "returns a string"
  value       = data.azurerm_mssql_database.this.collation
}

output "elastic_pool_id" {
  description = "returns a string"
  value       = data.azurerm_mssql_database.this.elastic_pool_id
}

output "id" {
  description = "returns a string"
  value       = data.azurerm_mssql_database.this.id
}

output "license_type" {
  description = "returns a string"
  value       = data.azurerm_mssql_database.this.license_type
}

output "max_size_gb" {
  description = "returns a number"
  value       = data.azurerm_mssql_database.this.max_size_gb
}

output "read_replica_count" {
  description = "returns a number"
  value       = data.azurerm_mssql_database.this.read_replica_count
}

output "read_scale" {
  description = "returns a bool"
  value       = data.azurerm_mssql_database.this.read_scale
}

output "sku_name" {
  description = "returns a string"
  value       = data.azurerm_mssql_database.this.sku_name
}

output "tags" {
  description = "returns a map of string"
  value       = data.azurerm_mssql_database.this.tags
}

output "zone_redundant" {
  description = "returns a bool"
  value       = data.azurerm_mssql_database.this.zone_redundant
}

output "this" {
  value = azurerm_mssql_database.this
}

