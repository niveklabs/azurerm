output "app_settings" {
  description = "returns a map of string"
  value       = azurerm_app_service_slot.this.app_settings
}

output "client_affinity_enabled" {
  description = "returns a bool"
  value       = azurerm_app_service_slot.this.client_affinity_enabled
}

output "default_site_hostname" {
  description = "returns a string"
  value       = azurerm_app_service_slot.this.default_site_hostname
}

output "id" {
  description = "returns a string"
  value       = azurerm_app_service_slot.this.id
}

output "site_credential" {
  description = "returns a list of object"
  value       = azurerm_app_service_slot.this.site_credential
}

output "this" {
  value = azurerm_app_service_slot.this
}

