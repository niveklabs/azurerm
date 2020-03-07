output "app_service_plan_id" {
  description = "returns a string"
  value       = data.azurerm_app_service.this.app_service_plan_id
}

output "app_settings" {
  description = "returns a map of string"
  value       = data.azurerm_app_service.this.app_settings
}

output "client_affinity_enabled" {
  description = "returns a bool"
  value       = data.azurerm_app_service.this.client_affinity_enabled
}

output "client_cert_enabled" {
  description = "returns a bool"
  value       = data.azurerm_app_service.this.client_cert_enabled
}

output "connection_string" {
  description = "returns a list of object"
  value       = data.azurerm_app_service.this.connection_string
}

output "default_site_hostname" {
  description = "returns a string"
  value       = data.azurerm_app_service.this.default_site_hostname
}

output "enabled" {
  description = "returns a bool"
  value       = data.azurerm_app_service.this.enabled
}

output "https_only" {
  description = "returns a bool"
  value       = data.azurerm_app_service.this.https_only
}

output "id" {
  description = "returns a string"
  value       = data.azurerm_app_service.this.id
}

output "location" {
  description = "returns a string"
  value       = data.azurerm_app_service.this.location
}

output "outbound_ip_addresses" {
  description = "returns a string"
  value       = data.azurerm_app_service.this.outbound_ip_addresses
}

output "possible_outbound_ip_addresses" {
  description = "returns a string"
  value       = data.azurerm_app_service.this.possible_outbound_ip_addresses
}

output "site_config" {
  description = "returns a list of object"
  value       = data.azurerm_app_service.this.site_config
}

output "site_credential" {
  description = "returns a list of object"
  value       = data.azurerm_app_service.this.site_credential
}

output "source_control" {
  description = "returns a list of object"
  value       = data.azurerm_app_service.this.source_control
}

output "tags" {
  description = "returns a map of string"
  value       = data.azurerm_app_service.this.tags
}

output "this" {
  value = azurerm_app_service.this
}

