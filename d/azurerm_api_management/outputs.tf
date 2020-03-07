output "additional_location" {
  description = "returns a list of object"
  value       = data.azurerm_api_management.this.additional_location
}

output "gateway_regional_url" {
  description = "returns a string"
  value       = data.azurerm_api_management.this.gateway_regional_url
}

output "gateway_url" {
  description = "returns a string"
  value       = data.azurerm_api_management.this.gateway_url
}

output "hostname_configuration" {
  description = "returns a list of object"
  value       = data.azurerm_api_management.this.hostname_configuration
}

output "id" {
  description = "returns a string"
  value       = data.azurerm_api_management.this.id
}

output "location" {
  description = "returns a string"
  value       = data.azurerm_api_management.this.location
}

output "management_api_url" {
  description = "returns a string"
  value       = data.azurerm_api_management.this.management_api_url
}

output "notification_sender_email" {
  description = "returns a string"
  value       = data.azurerm_api_management.this.notification_sender_email
}

output "portal_url" {
  description = "returns a string"
  value       = data.azurerm_api_management.this.portal_url
}

output "public_ip_addresses" {
  description = "returns a list of string"
  value       = data.azurerm_api_management.this.public_ip_addresses
}

output "publisher_email" {
  description = "returns a string"
  value       = data.azurerm_api_management.this.publisher_email
}

output "publisher_name" {
  description = "returns a string"
  value       = data.azurerm_api_management.this.publisher_name
}

output "scm_url" {
  description = "returns a string"
  value       = data.azurerm_api_management.this.scm_url
}

output "sku_name" {
  description = "returns a string"
  value       = data.azurerm_api_management.this.sku_name
}

output "tags" {
  description = "returns a map of string"
  value       = data.azurerm_api_management.this.tags
}

output "this" {
  value = azurerm_api_management.this
}

