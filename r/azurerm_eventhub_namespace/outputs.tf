output "default_primary_connection_string" {
  description = "returns a string"
  value       = azurerm_eventhub_namespace.this.default_primary_connection_string
  sensitive   = true
}

output "default_primary_key" {
  description = "returns a string"
  value       = azurerm_eventhub_namespace.this.default_primary_key
  sensitive   = true
}

output "default_secondary_connection_string" {
  description = "returns a string"
  value       = azurerm_eventhub_namespace.this.default_secondary_connection_string
  sensitive   = true
}

output "default_secondary_key" {
  description = "returns a string"
  value       = azurerm_eventhub_namespace.this.default_secondary_key
  sensitive   = true
}

output "id" {
  description = "returns a string"
  value       = azurerm_eventhub_namespace.this.id
}

output "maximum_throughput_units" {
  description = "returns a number"
  value       = azurerm_eventhub_namespace.this.maximum_throughput_units
}

output "network_rulesets" {
  description = "returns a list of object"
  value       = azurerm_eventhub_namespace.this.network_rulesets
}

output "this" {
  value = azurerm_eventhub_namespace.this
}

