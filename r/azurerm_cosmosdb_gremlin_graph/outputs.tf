output "id" {
  description = "returns a string"
  value       = azurerm_cosmosdb_gremlin_graph.this.id
}

output "throughput" {
  description = "returns a number"
  value       = azurerm_cosmosdb_gremlin_graph.this.throughput
}

output "this" {
  value = azurerm_cosmosdb_gremlin_graph.this
}

