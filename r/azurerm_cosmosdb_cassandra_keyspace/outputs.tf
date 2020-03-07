output "id" {
  description = "returns a string"
  value       = azurerm_cosmosdb_cassandra_keyspace.this.id
}

output "throughput" {
  description = "returns a number"
  value       = azurerm_cosmosdb_cassandra_keyspace.this.throughput
}

output "this" {
  value = azurerm_cosmosdb_cassandra_keyspace.this
}

