output "id" {
  description = "returns a string"
  value       = azurerm_postgresql_database.this.id
}

output "this" {
  value = azurerm_postgresql_database.this
}

