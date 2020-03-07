output "id" {
  description = "returns a string"
  value       = azurerm_relay_namespace.this.id
}

output "metric_id" {
  description = "returns a string"
  value       = azurerm_relay_namespace.this.metric_id
}

output "primary_connection_string" {
  description = "returns a string"
  value       = azurerm_relay_namespace.this.primary_connection_string
  sensitive   = true
}

output "primary_key" {
  description = "returns a string"
  value       = azurerm_relay_namespace.this.primary_key
  sensitive   = true
}

output "secondary_connection_string" {
  description = "returns a string"
  value       = azurerm_relay_namespace.this.secondary_connection_string
  sensitive   = true
}

output "secondary_key" {
  description = "returns a string"
  value       = azurerm_relay_namespace.this.secondary_key
  sensitive   = true
}

output "this" {
  value = azurerm_relay_namespace.this
}

