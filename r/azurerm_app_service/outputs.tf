output "app_settings" {
  description = "returns a map of string"
  value       = azurerm_app_service.this.app_settings
}

output "client_affinity_enabled" {
  description = "returns a bool"
  value       = azurerm_app_service.this.client_affinity_enabled
}

output "default_site_hostname" {
  description = "returns a string"
  value       = azurerm_app_service.this.default_site_hostname
}

output "id" {
  description = "returns a string"
  value       = azurerm_app_service.this.id
}

output "outbound_ip_addresses" {
  description = "returns a string"
  value       = azurerm_app_service.this.outbound_ip_addresses
}

output "possible_outbound_ip_addresses" {
  description = "returns a string"
  value       = azurerm_app_service.this.possible_outbound_ip_addresses
}

output "site_credential" {
  description = "returns a list of object"
  value       = azurerm_app_service.this.site_credential
}

output "source_control" {
  description = "returns a list of object"
  value       = azurerm_app_service.this.source_control
}

output "this" {
  value = azurerm_app_service.this
}

