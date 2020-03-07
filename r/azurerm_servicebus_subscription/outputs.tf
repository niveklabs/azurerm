output "auto_delete_on_idle" {
  description = "returns a string"
  value       = azurerm_servicebus_subscription.this.auto_delete_on_idle
}

output "default_message_ttl" {
  description = "returns a string"
  value       = azurerm_servicebus_subscription.this.default_message_ttl
}

output "id" {
  description = "returns a string"
  value       = azurerm_servicebus_subscription.this.id
}

output "lock_duration" {
  description = "returns a string"
  value       = azurerm_servicebus_subscription.this.lock_duration
}

output "this" {
  value = azurerm_servicebus_subscription.this
}

