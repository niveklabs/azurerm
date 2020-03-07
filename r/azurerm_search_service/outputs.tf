output "id" {
  description = "returns a string"
  value       = azurerm_search_service.this.id
}

output "partition_count" {
  description = "returns a number"
  value       = azurerm_search_service.this.partition_count
}

output "primary_key" {
  description = "returns a string"
  value       = azurerm_search_service.this.primary_key
}

output "query_keys" {
  description = "returns a list of object"
  value       = azurerm_search_service.this.query_keys
}

output "replica_count" {
  description = "returns a number"
  value       = azurerm_search_service.this.replica_count
}

output "secondary_key" {
  description = "returns a string"
  value       = azurerm_search_service.this.secondary_key
}

output "this" {
  value = azurerm_search_service.this
}

