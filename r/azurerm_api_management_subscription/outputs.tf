output "id" {
  description = "returns a string"
  value       = azurerm_api_management_subscription.this.id
}

output "primary_key" {
  description = "returns a string"
  value       = azurerm_api_management_subscription.this.primary_key
  sensitive   = true
}

output "secondary_key" {
  description = "returns a string"
  value       = azurerm_api_management_subscription.this.secondary_key
  sensitive   = true
}

output "subscription_id" {
  description = "returns a string"
  value       = azurerm_api_management_subscription.this.subscription_id
}

output "this" {
  value = azurerm_api_management_subscription.this
}

