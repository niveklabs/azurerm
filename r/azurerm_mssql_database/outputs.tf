output "auto_pause_delay_in_minutes" {
  description = "returns a number"
  value       = azurerm_mssql_database.this.auto_pause_delay_in_minutes
}

output "collation" {
  description = "returns a string"
  value       = azurerm_mssql_database.this.collation
}

output "create_mode" {
  description = "returns a string"
  value       = azurerm_mssql_database.this.create_mode
}

output "creation_source_database_id" {
  description = "returns a string"
  value       = azurerm_mssql_database.this.creation_source_database_id
}

output "id" {
  description = "returns a string"
  value       = azurerm_mssql_database.this.id
}

output "license_type" {
  description = "returns a string"
  value       = azurerm_mssql_database.this.license_type
}

output "max_size_gb" {
  description = "returns a number"
  value       = azurerm_mssql_database.this.max_size_gb
}

output "min_capacity" {
  description = "returns a number"
  value       = azurerm_mssql_database.this.min_capacity
}

output "read_replica_count" {
  description = "returns a number"
  value       = azurerm_mssql_database.this.read_replica_count
}

output "read_scale" {
  description = "returns a bool"
  value       = azurerm_mssql_database.this.read_scale
}

output "restore_point_in_time" {
  description = "returns a string"
  value       = azurerm_mssql_database.this.restore_point_in_time
}

output "sample_name" {
  description = "returns a string"
  value       = azurerm_mssql_database.this.sample_name
}

output "sku_name" {
  description = "returns a string"
  value       = azurerm_mssql_database.this.sku_name
}

output "zone_redundant" {
  description = "returns a bool"
  value       = azurerm_mssql_database.this.zone_redundant
}

output "this" {
  value = azurerm_mssql_database.this
}

