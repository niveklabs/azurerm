output "creation_date" {
  description = "returns a string"
  value       = azurerm_sql_elasticpool.this.creation_date
}

output "db_dtu_max" {
  description = "returns a number"
  value       = azurerm_sql_elasticpool.this.db_dtu_max
}

output "db_dtu_min" {
  description = "returns a number"
  value       = azurerm_sql_elasticpool.this.db_dtu_min
}

output "id" {
  description = "returns a string"
  value       = azurerm_sql_elasticpool.this.id
}

output "pool_size" {
  description = "returns a number"
  value       = azurerm_sql_elasticpool.this.pool_size
}

output "this" {
  value = azurerm_sql_elasticpool.this
}

