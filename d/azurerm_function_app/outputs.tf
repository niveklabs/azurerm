output "app_service_plan_id" {
  description = "returns a string"
  value       = data.azurerm_function_app.this.app_service_plan_id
}

output "app_settings" {
  description = "returns a map of string"
  value       = data.azurerm_function_app.this.app_settings
}

output "connection_string" {
  description = "returns a list of object"
  value       = data.azurerm_function_app.this.connection_string
}

output "default_hostname" {
  description = "returns a string"
  value       = data.azurerm_function_app.this.default_hostname
}

output "enabled" {
  description = "returns a bool"
  value       = data.azurerm_function_app.this.enabled
}

output "id" {
  description = "returns a string"
  value       = data.azurerm_function_app.this.id
}

output "location" {
  description = "returns a string"
  value       = data.azurerm_function_app.this.location
}

output "outbound_ip_addresses" {
  description = "returns a string"
  value       = data.azurerm_function_app.this.outbound_ip_addresses
}

output "possible_outbound_ip_addresses" {
  description = "returns a string"
  value       = data.azurerm_function_app.this.possible_outbound_ip_addresses
}

output "site_credential" {
  description = "returns a list of object"
  value       = data.azurerm_function_app.this.site_credential
}

output "this" {
  value = azurerm_function_app.this
}

