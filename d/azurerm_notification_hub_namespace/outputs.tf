output "enabled" {
  description = "returns a bool"
  value       = data.azurerm_notification_hub_namespace.this.enabled
}

output "id" {
  description = "returns a string"
  value       = data.azurerm_notification_hub_namespace.this.id
}

output "location" {
  description = "returns a string"
  value       = data.azurerm_notification_hub_namespace.this.location
}

output "namespace_type" {
  description = "returns a string"
  value       = data.azurerm_notification_hub_namespace.this.namespace_type
}

output "servicebus_endpoint" {
  description = "returns a string"
  value       = data.azurerm_notification_hub_namespace.this.servicebus_endpoint
}

output "sku" {
  description = "returns a list of object"
  value       = data.azurerm_notification_hub_namespace.this.sku
}

output "this" {
  value = azurerm_notification_hub_namespace.this
}

