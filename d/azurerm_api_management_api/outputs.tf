output "description" {
  description = "returns a string"
  value       = data.azurerm_api_management_api.this.description
}

output "display_name" {
  description = "returns a string"
  value       = data.azurerm_api_management_api.this.display_name
}

output "id" {
  description = "returns a string"
  value       = data.azurerm_api_management_api.this.id
}

output "is_current" {
  description = "returns a bool"
  value       = data.azurerm_api_management_api.this.is_current
}

output "is_online" {
  description = "returns a bool"
  value       = data.azurerm_api_management_api.this.is_online
}

output "path" {
  description = "returns a string"
  value       = data.azurerm_api_management_api.this.path
}

output "protocols" {
  description = "returns a list of string"
  value       = data.azurerm_api_management_api.this.protocols
}

output "service_url" {
  description = "returns a string"
  value       = data.azurerm_api_management_api.this.service_url
}

output "soap_pass_through" {
  description = "returns a bool"
  value       = data.azurerm_api_management_api.this.soap_pass_through
}

output "subscription_key_parameter_names" {
  description = "returns a list of object"
  value       = data.azurerm_api_management_api.this.subscription_key_parameter_names
}

output "version" {
  description = "returns a string"
  value       = data.azurerm_api_management_api.this.version
}

output "version_set_id" {
  description = "returns a string"
  value       = data.azurerm_api_management_api.this.version_set_id
}

output "this" {
  value = azurerm_api_management_api.this
}

