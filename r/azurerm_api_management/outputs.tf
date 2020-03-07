output "gateway_regional_url" {
  description = "returns a string"
  value       = azurerm_api_management.this.gateway_regional_url
}

output "gateway_url" {
  description = "returns a string"
  value       = azurerm_api_management.this.gateway_url
}

output "id" {
  description = "returns a string"
  value       = azurerm_api_management.this.id
}

output "management_api_url" {
  description = "returns a string"
  value       = azurerm_api_management.this.management_api_url
}

output "notification_sender_email" {
  description = "returns a string"
  value       = azurerm_api_management.this.notification_sender_email
}

output "policy" {
  description = "returns a list of object"
  value       = azurerm_api_management.this.policy
}

output "portal_url" {
  description = "returns a string"
  value       = azurerm_api_management.this.portal_url
}

output "public_ip_addresses" {
  description = "returns a list of string"
  value       = azurerm_api_management.this.public_ip_addresses
}

output "scm_url" {
  description = "returns a string"
  value       = azurerm_api_management.this.scm_url
}

output "this" {
  value = azurerm_api_management.this
}

