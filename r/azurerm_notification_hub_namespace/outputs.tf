output "id" {
  description = "returns a string"
  value       = azurerm_notification_hub_namespace.this.id
}

output "servicebus_endpoint" {
  description = "returns a string"
  value       = azurerm_notification_hub_namespace.this.servicebus_endpoint
}

output "this" {
  value = azurerm_notification_hub_namespace.this
}

