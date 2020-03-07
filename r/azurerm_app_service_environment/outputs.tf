output "id" {
  description = "returns a string"
  value       = azurerm_app_service_environment.this.id
}

output "location" {
  description = "returns a string"
  value       = azurerm_app_service_environment.this.location
}

output "resource_group_name" {
  description = "returns a string"
  value       = azurerm_app_service_environment.this.resource_group_name
}

output "this" {
  value = azurerm_app_service_environment.this
}

