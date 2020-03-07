output "id" {
  description = "returns a string"
  value       = azurerm_cosmosdb_mongo_collection.this.id
}

output "throughput" {
  description = "returns a number"
  value       = azurerm_cosmosdb_mongo_collection.this.throughput
}

output "this" {
  value = azurerm_cosmosdb_mongo_collection.this
}

