output "id" {
  description = "returns a string"
  value       = azurerm_postgresql_firewall_rule.this.id
}

output "this" {
  value = azurerm_postgresql_firewall_rule.this
}

