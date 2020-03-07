output "id" {
  description = "returns a string"
  value       = azurerm_mysql_database.this.id
}

output "this" {
  value = azurerm_mysql_database.this
}

