output "id" {
  description = "returns a string"
  value       = azurerm_cosmosdb_mongo_collection.this.id
}

output "system_indexes" {
  description = "returns a list of object"
  value       = azurerm_cosmosdb_mongo_collection.this.system_indexes
}

output "throughput" {
  description = "returns a number"
  value       = azurerm_cosmosdb_mongo_collection.this.throughput
}

output "this" {
  value = azurerm_cosmosdb_mongo_collection.this
}

