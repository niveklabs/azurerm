output "id" {
  description = "returns a string"
  value       = azurerm_mysql_firewall_rule.this.id
}

output "this" {
  value = azurerm_mysql_firewall_rule.this
}

