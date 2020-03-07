output "collation" {
  description = "returns a string"
  value       = data.azurerm_sql_database.this.collation
}

output "default_secondary_location" {
  description = "returns a string"
  value       = data.azurerm_sql_database.this.default_secondary_location
}

output "edition" {
  description = "returns a string"
  value       = data.azurerm_sql_database.this.edition
}

output "elastic_pool_name" {
  description = "returns a string"
  value       = data.azurerm_sql_database.this.elastic_pool_name
}

output "failover_group_id" {
  description = "returns a string"
  value       = data.azurerm_sql_database.this.failover_group_id
}

output "id" {
  description = "returns a string"
  value       = data.azurerm_sql_database.this.id
}

output "location" {
  description = "returns a string"
  value       = data.azurerm_sql_database.this.location
}

output "read_scale" {
  description = "returns a bool"
  value       = data.azurerm_sql_database.this.read_scale
}

output "this" {
  value = azurerm_sql_database.this
}

