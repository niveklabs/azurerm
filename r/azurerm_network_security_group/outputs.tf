output "id" {
  description = "returns a string"
  value       = azurerm_network_security_group.this.id
}

output "security_rule" {
  description = "returns a set of object"
  value       = azurerm_network_security_group.this.security_rule
}

output "this" {
  value = azurerm_network_security_group.this
}

