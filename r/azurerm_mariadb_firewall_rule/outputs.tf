output "id" {
  description = "returns a string"
  value       = azurerm_mariadb_firewall_rule.this.id
}

output "this" {
  value = azurerm_mariadb_firewall_rule.this
}

