output "auto_inflate_enabled" {
  description = "returns a bool"
  value       = data.azurerm_eventhub_namespace.this.auto_inflate_enabled
}

output "capacity" {
  description = "returns a number"
  value       = data.azurerm_eventhub_namespace.this.capacity
}

output "default_primary_connection_string" {
  description = "returns a string"
  value       = data.azurerm_eventhub_namespace.this.default_primary_connection_string
  sensitive   = true
}

output "default_primary_key" {
  description = "returns a string"
  value       = data.azurerm_eventhub_namespace.this.default_primary_key
  sensitive   = true
}

output "default_secondary_connection_string" {
  description = "returns a string"
  value       = data.azurerm_eventhub_namespace.this.default_secondary_connection_string
  sensitive   = true
}

output "default_secondary_key" {
  description = "returns a string"
  value       = data.azurerm_eventhub_namespace.this.default_secondary_key
  sensitive   = true
}

output "id" {
  description = "returns a string"
  value       = data.azurerm_eventhub_namespace.this.id
}

output "kafka_enabled" {
  description = "returns a bool"
  value       = data.azurerm_eventhub_namespace.this.kafka_enabled
}

output "location" {
  description = "returns a string"
  value       = data.azurerm_eventhub_namespace.this.location
}

output "maximum_throughput_units" {
  description = "returns a number"
  value       = data.azurerm_eventhub_namespace.this.maximum_throughput_units
}

output "sku" {
  description = "returns a string"
  value       = data.azurerm_eventhub_namespace.this.sku
}

output "tags" {
  description = "returns a map of string"
  value       = data.azurerm_eventhub_namespace.this.tags
}

output "this" {
  value = azurerm_eventhub_namespace.this
}

