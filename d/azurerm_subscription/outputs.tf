output "display_name" {
  description = "returns a string"
  value       = data.azurerm_subscription.this.display_name
}

output "id" {
  description = "returns a string"
  value       = data.azurerm_subscription.this.id
}

output "location_placement_id" {
  description = "returns a string"
  value       = data.azurerm_subscription.this.location_placement_id
}

output "quota_id" {
  description = "returns a string"
  value       = data.azurerm_subscription.this.quota_id
}

output "spending_limit" {
  description = "returns a string"
  value       = data.azurerm_subscription.this.spending_limit
}

output "state" {
  description = "returns a string"
  value       = data.azurerm_subscription.this.state
}

output "subscription_id" {
  description = "returns a string"
  value       = data.azurerm_subscription.this.subscription_id
}

output "tenant_id" {
  description = "returns a string"
  value       = data.azurerm_subscription.this.tenant_id
}

output "this" {
  value = azurerm_subscription.this
}

