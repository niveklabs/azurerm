output "default_primary_connection_string" {
  description = "returns a string"
  value       = azurerm_servicebus_namespace.this.default_primary_connection_string
  sensitive   = true
}

output "default_primary_key" {
  description = "returns a string"
  value       = azurerm_servicebus_namespace.this.default_primary_key
  sensitive   = true
}

output "default_secondary_connection_string" {
  description = "returns a string"
  value       = azurerm_servicebus_namespace.this.default_secondary_connection_string
  sensitive   = true
}

output "default_secondary_key" {
  description = "returns a string"
  value       = azurerm_servicebus_namespace.this.default_secondary_key
  sensitive   = true
}

output "id" {
  description = "returns a string"
  value       = azurerm_servicebus_namespace.this.id
}

output "this" {
  value = azurerm_servicebus_namespace.this
}

