output "admin_password" {
  description = "returns a string"
  value       = azurerm_container_registry.this.admin_password
  sensitive   = true
}

output "admin_username" {
  description = "returns a string"
  value       = azurerm_container_registry.this.admin_username
}

output "id" {
  description = "returns a string"
  value       = azurerm_container_registry.this.id
}

output "login_server" {
  description = "returns a string"
  value       = azurerm_container_registry.this.login_server
}

output "network_rule_set" {
  description = "returns a list of object"
  value       = azurerm_container_registry.this.network_rule_set
}

output "this" {
  value = azurerm_container_registry.this
}

