output "id" {
  description = "returns a string"
  value       = azurerm_api_management_api.this.id
}

output "is_current" {
  description = "returns a bool"
  value       = azurerm_api_management_api.this.is_current
}

output "is_online" {
  description = "returns a bool"
  value       = azurerm_api_management_api.this.is_online
}

output "service_url" {
  description = "returns a string"
  value       = azurerm_api_management_api.this.service_url
}

output "version" {
  description = "returns a string"
  value       = azurerm_api_management_api.this.version
}

output "version_set_id" {
  description = "returns a string"
  value       = azurerm_api_management_api.this.version_set_id
}

output "this" {
  value = azurerm_api_management_api.this
}

