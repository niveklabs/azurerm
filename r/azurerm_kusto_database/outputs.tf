output "id" {
  description = "returns a string"
  value       = azurerm_kusto_database.this.id
}

output "size" {
  description = "returns a number"
  value       = azurerm_kusto_database.this.size
}

output "this" {
  value = azurerm_kusto_database.this
}

