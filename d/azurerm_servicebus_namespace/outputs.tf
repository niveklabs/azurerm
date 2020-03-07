output "capacity" {
  description = "returns a number"
  value       = data.azurerm_servicebus_namespace.this.capacity
}

output "default_primary_connection_string" {
  description = "returns a string"
  value       = data.azurerm_servicebus_namespace.this.default_primary_connection_string
  sensitive   = true
}

output "default_primary_key" {
  description = "returns a string"
  value       = data.azurerm_servicebus_namespace.this.default_primary_key
  sensitive   = true
}

output "default_secondary_connection_string" {
  description = "returns a string"
  value       = data.azurerm_servicebus_namespace.this.default_secondary_connection_string
  sensitive   = true
}

output "default_secondary_key" {
  description = "returns a string"
  value       = data.azurerm_servicebus_namespace.this.default_secondary_key
  sensitive   = true
}

output "id" {
  description = "returns a string"
  value       = data.azurerm_servicebus_namespace.this.id
}

output "location" {
  description = "returns a string"
  value       = data.azurerm_servicebus_namespace.this.location
}

output "sku" {
  description = "returns a string"
  value       = data.azurerm_servicebus_namespace.this.sku
}

output "tags" {
  description = "returns a map of string"
  value       = data.azurerm_servicebus_namespace.this.tags
}

output "zone_redundant" {
  description = "returns a bool"
  value       = data.azurerm_servicebus_namespace.this.zone_redundant
}

output "this" {
  value = azurerm_servicebus_namespace.this
}

