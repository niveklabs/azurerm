output "id" {
  description = "returns a string"
  value       = azurerm_notification_hub_authorization_rule.this.id
}

output "primary_access_key" {
  description = "returns a string"
  value       = azurerm_notification_hub_authorization_rule.this.primary_access_key
}

output "secondary_access_key" {
  description = "returns a string"
  value       = azurerm_notification_hub_authorization_rule.this.secondary_access_key
}

output "this" {
  value = azurerm_notification_hub_authorization_rule.this
}

