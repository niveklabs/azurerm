output "auto_delete_on_idle" {
  description = "returns a string"
  value       = azurerm_servicebus_topic.this.auto_delete_on_idle
}

output "default_message_ttl" {
  description = "returns a string"
  value       = azurerm_servicebus_topic.this.default_message_ttl
}

output "duplicate_detection_history_time_window" {
  description = "returns a string"
  value       = azurerm_servicebus_topic.this.duplicate_detection_history_time_window
}

output "id" {
  description = "returns a string"
  value       = azurerm_servicebus_topic.this.id
}

output "max_size_in_megabytes" {
  description = "returns a number"
  value       = azurerm_servicebus_topic.this.max_size_in_megabytes
}

output "this" {
  value = azurerm_servicebus_topic.this
}

