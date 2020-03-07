output "id" {
  description = "returns a string"
  value       = azurerm_sql_failover_group.this.id
}

output "location" {
  description = "returns a string"
  value       = azurerm_sql_failover_group.this.location
}

output "role" {
  description = "returns a string"
  value       = azurerm_sql_failover_group.this.role
}

output "this" {
  value = azurerm_sql_failover_group.this
}

