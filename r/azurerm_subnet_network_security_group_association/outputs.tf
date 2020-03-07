output "id" {
  description = "returns a string"
  value       = azurerm_subnet_network_security_group_association.this.id
}

output "this" {
  value = azurerm_subnet_network_security_group_association.this
}

