output "approval_required" {
  description = "returns a bool"
  value       = data.azurerm_api_management_product.this.approval_required
}

output "description" {
  description = "returns a string"
  value       = data.azurerm_api_management_product.this.description
}

output "display_name" {
  description = "returns a string"
  value       = data.azurerm_api_management_product.this.display_name
}

output "id" {
  description = "returns a string"
  value       = data.azurerm_api_management_product.this.id
}

output "published" {
  description = "returns a bool"
  value       = data.azurerm_api_management_product.this.published
}

output "subscription_required" {
  description = "returns a bool"
  value       = data.azurerm_api_management_product.this.subscription_required
}

output "subscriptions_limit" {
  description = "returns a number"
  value       = data.azurerm_api_management_product.this.subscriptions_limit
}

output "terms" {
  description = "returns a string"
  value       = data.azurerm_api_management_product.this.terms
}

output "this" {
  value = azurerm_api_management_product.this
}

