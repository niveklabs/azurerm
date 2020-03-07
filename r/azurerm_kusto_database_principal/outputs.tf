output "app_id" {
  description = "returns a string"
  value       = azurerm_kusto_database_principal.this.app_id
}

output "email" {
  description = "returns a string"
  value       = azurerm_kusto_database_principal.this.email
}

output "fully_qualified_name" {
  description = "returns a string"
  value       = azurerm_kusto_database_principal.this.fully_qualified_name
}

output "id" {
  description = "returns a string"
  value       = azurerm_kusto_database_principal.this.id
}

output "name" {
  description = "returns a string"
  value       = azurerm_kusto_database_principal.this.name
}

output "this" {
  value = azurerm_kusto_database_principal.this
}

