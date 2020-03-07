output "auto_delete_on_idle" {
  description = "returns a string"
  value       = azurerm_servicebus_queue.this.auto_delete_on_idle
}

output "default_message_ttl" {
  description = "returns a string"
  value       = azurerm_servicebus_queue.this.default_message_ttl
}

output "duplicate_detection_history_time_window" {
  description = "returns a string"
  value       = azurerm_servicebus_queue.this.duplicate_detection_history_time_window
}

output "id" {
  description = "returns a string"
  value       = azurerm_servicebus_queue.this.id
}

output "lock_duration" {
  description = "returns a string"
  value       = azurerm_servicebus_queue.this.lock_duration
}

output "max_size_in_megabytes" {
  description = "returns a number"
  value       = azurerm_servicebus_queue.this.max_size_in_megabytes
}

output "this" {
  value = azurerm_servicebus_queue.this
}

