output "id" {
  description = "returns a string"
  value       = data.azurerm_network_security_group.this.id
}

output "location" {
  description = "returns a string"
  value       = data.azurerm_network_security_group.this.location
}

output "security_rule" {
  description = "returns a list of object"
  value       = data.azurerm_network_security_group.this.security_rule
}

output "tags" {
  description = "returns a map of string"
  value       = data.azurerm_network_security_group.this.tags
}

output "this" {
  value = azurerm_network_security_group.this
}

