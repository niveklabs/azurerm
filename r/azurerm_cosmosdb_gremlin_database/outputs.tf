output "id" {
  description = "returns a string"
  value       = azurerm_cosmosdb_gremlin_database.this.id
}

output "throughput" {
  description = "returns a number"
  value       = azurerm_cosmosdb_gremlin_database.this.throughput
}

output "this" {
  value = azurerm_cosmosdb_gremlin_database.this
}

