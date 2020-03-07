output "default_ttl" {
  description = "returns a number"
  value       = azurerm_cosmosdb_sql_container.this.default_ttl
}

output "id" {
  description = "returns a string"
  value       = azurerm_cosmosdb_sql_container.this.id
}

output "throughput" {
  description = "returns a number"
  value       = azurerm_cosmosdb_sql_container.this.throughput
}

output "this" {
  value = azurerm_cosmosdb_sql_container.this
}

