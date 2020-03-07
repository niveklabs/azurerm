output "id" {
  description = "returns a string"
  value       = azurerm_sql_firewall_rule.this.id
}

output "this" {
  value = azurerm_sql_firewall_rule.this
}

