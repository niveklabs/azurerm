output "admin_enabled" {
  description = "returns a bool"
  value       = data.azurerm_container_registry.this.admin_enabled
}

output "admin_password" {
  description = "returns a string"
  value       = data.azurerm_container_registry.this.admin_password
}

output "admin_username" {
  description = "returns a string"
  value       = data.azurerm_container_registry.this.admin_username
}

output "id" {
  description = "returns a string"
  value       = data.azurerm_container_registry.this.id
}

output "location" {
  description = "returns a string"
  value       = data.azurerm_container_registry.this.location
}

output "login_server" {
  description = "returns a string"
  value       = data.azurerm_container_registry.this.login_server
}

output "sku" {
  description = "returns a string"
  value       = data.azurerm_container_registry.this.sku
}

output "storage_account_id" {
  description = "returns a string"
  value       = data.azurerm_container_registry.this.storage_account_id
}

output "tags" {
  description = "returns a map of string"
  value       = data.azurerm_container_registry.this.tags
}

output "this" {
  value = azurerm_container_registry.this
}

