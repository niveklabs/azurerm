output "capabilities" {
  description = "returns a list of object"
  value       = data.azurerm_cosmosdb_account.this.capabilities
}

output "consistency_policy" {
  description = "returns a list of object"
  value       = data.azurerm_cosmosdb_account.this.consistency_policy
}

output "enable_automatic_failover" {
  description = "returns a bool"
  value       = data.azurerm_cosmosdb_account.this.enable_automatic_failover
}

output "enable_multiple_write_locations" {
  description = "returns a bool"
  value       = data.azurerm_cosmosdb_account.this.enable_multiple_write_locations
}

output "endpoint" {
  description = "returns a string"
  value       = data.azurerm_cosmosdb_account.this.endpoint
}

output "geo_location" {
  description = "returns a list of object"
  value       = data.azurerm_cosmosdb_account.this.geo_location
}

output "id" {
  description = "returns a string"
  value       = data.azurerm_cosmosdb_account.this.id
}

output "ip_range_filter" {
  description = "returns a string"
  value       = data.azurerm_cosmosdb_account.this.ip_range_filter
}

output "is_virtual_network_filter_enabled" {
  description = "returns a bool"
  value       = data.azurerm_cosmosdb_account.this.is_virtual_network_filter_enabled
}

output "kind" {
  description = "returns a string"
  value       = data.azurerm_cosmosdb_account.this.kind
}

output "location" {
  description = "returns a string"
  value       = data.azurerm_cosmosdb_account.this.location
}

output "offer_type" {
  description = "returns a string"
  value       = data.azurerm_cosmosdb_account.this.offer_type
}

output "primary_master_key" {
  description = "returns a string"
  value       = data.azurerm_cosmosdb_account.this.primary_master_key
  sensitive   = true
}

output "primary_readonly_master_key" {
  description = "returns a string"
  value       = data.azurerm_cosmosdb_account.this.primary_readonly_master_key
  sensitive   = true
}

output "read_endpoints" {
  description = "returns a list of string"
  value       = data.azurerm_cosmosdb_account.this.read_endpoints
}

output "secondary_master_key" {
  description = "returns a string"
  value       = data.azurerm_cosmosdb_account.this.secondary_master_key
  sensitive   = true
}

output "secondary_readonly_master_key" {
  description = "returns a string"
  value       = data.azurerm_cosmosdb_account.this.secondary_readonly_master_key
  sensitive   = true
}

output "tags" {
  description = "returns a map of string"
  value       = data.azurerm_cosmosdb_account.this.tags
}

output "virtual_network_rule" {
  description = "returns a list of object"
  value       = data.azurerm_cosmosdb_account.this.virtual_network_rule
}

output "write_endpoints" {
  description = "returns a list of string"
  value       = data.azurerm_cosmosdb_account.this.write_endpoints
}

output "this" {
  value = azurerm_cosmosdb_account.this
}

