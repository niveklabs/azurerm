output "event_hub_events_endpoint" {
  description = "returns a string"
  value       = azurerm_iothub.this.event_hub_events_endpoint
}

output "event_hub_events_path" {
  description = "returns a string"
  value       = azurerm_iothub.this.event_hub_events_path
}

output "event_hub_operations_endpoint" {
  description = "returns a string"
  value       = azurerm_iothub.this.event_hub_operations_endpoint
}

output "event_hub_operations_path" {
  description = "returns a string"
  value       = azurerm_iothub.this.event_hub_operations_path
}

output "event_hub_partition_count" {
  description = "returns a number"
  value       = azurerm_iothub.this.event_hub_partition_count
}

output "event_hub_retention_in_days" {
  description = "returns a number"
  value       = azurerm_iothub.this.event_hub_retention_in_days
}

output "hostname" {
  description = "returns a string"
  value       = azurerm_iothub.this.hostname
}

output "id" {
  description = "returns a string"
  value       = azurerm_iothub.this.id
}

output "shared_access_policy" {
  description = "returns a list of object"
  value       = azurerm_iothub.this.shared_access_policy
}

output "type" {
  description = "returns a string"
  value       = azurerm_iothub.this.type
}

output "this" {
  value = azurerm_iothub.this
}

