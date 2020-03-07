output "front_end_scale_factor" {
  description = "returns a number"
  value       = data.azurerm_app_service_environment.this.front_end_scale_factor
}

output "id" {
  description = "returns a string"
  value       = data.azurerm_app_service_environment.this.id
}

output "pricing_tier" {
  description = "returns a string"
  value       = data.azurerm_app_service_environment.this.pricing_tier
}

output "tags" {
  description = "returns a map of string"
  value       = data.azurerm_app_service_environment.this.tags
}

output "this" {
  value = azurerm_app_service_environment.this
}

