output "fully_qualified_domain_name" {
  description = "returns a string"
  value       = azurerm_sql_server.this.fully_qualified_domain_name
}

output "id" {
  description = "returns a string"
  value       = azurerm_sql_server.this.id
}

output "this" {
  value = azurerm_sql_server.this
}

