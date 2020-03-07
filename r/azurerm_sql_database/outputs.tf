output "collation" {
  description = "returns a string"
  value       = azurerm_sql_database.this.collation
}

output "creation_date" {
  description = "returns a string"
  value       = azurerm_sql_database.this.creation_date
}

output "default_secondary_location" {
  description = "returns a string"
  value       = azurerm_sql_database.this.default_secondary_location
}

output "edition" {
  description = "returns a string"
  value       = azurerm_sql_database.this.edition
}

output "elastic_pool_name" {
  description = "returns a string"
  value       = azurerm_sql_database.this.elastic_pool_name
}

output "encryption" {
  description = "returns a string"
  value       = azurerm_sql_database.this.encryption
}

output "id" {
  description = "returns a string"
  value       = azurerm_sql_database.this.id
}

output "max_size_bytes" {
  description = "returns a string"
  value       = azurerm_sql_database.this.max_size_bytes
}

output "requested_service_objective_id" {
  description = "returns a string"
  value       = azurerm_sql_database.this.requested_service_objective_id
}

output "requested_service_objective_name" {
  description = "returns a string"
  value       = azurerm_sql_database.this.requested_service_objective_name
}

output "restore_point_in_time" {
  description = "returns a string"
  value       = azurerm_sql_database.this.restore_point_in_time
}

output "source_database_deletion_date" {
  description = "returns a string"
  value       = azurerm_sql_database.this.source_database_deletion_date
}

output "source_database_id" {
  description = "returns a string"
  value       = azurerm_sql_database.this.source_database_id
}

output "this" {
  value = azurerm_sql_database.this
}

