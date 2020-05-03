output "client_affinity_enabled" {
  description = "returns a bool"
  value       = azurerm_function_app.this.client_affinity_enabled
}

output "default_hostname" {
  description = "returns a string"
  value       = azurerm_function_app.this.default_hostname
}

output "id" {
  description = "returns a string"
  value       = azurerm_function_app.this.id
}

output "kind" {
  description = "returns a string"
  value       = azurerm_function_app.this.kind
}

output "outbound_ip_addresses" {
  description = "returns a string"
  value       = azurerm_function_app.this.outbound_ip_addresses
}

output "possible_outbound_ip_addresses" {
  description = "returns a string"
  value       = azurerm_function_app.this.possible_outbound_ip_addresses
}

output "site_credential" {
  description = "returns a list of object"
  value       = azurerm_function_app.this.site_credential
}

output "storage_account_access_key" {
  description = "returns a string"
  value       = azurerm_function_app.this.storage_account_access_key
  sensitive   = true
}

output "storage_account_name" {
  description = "returns a string"
  value       = azurerm_function_app.this.storage_account_name
}

output "storage_connection_string" {
  description = "returns a string"
  value       = azurerm_function_app.this.storage_connection_string
  sensitive   = true
}

output "this" {
  value = azurerm_function_app.this
}

