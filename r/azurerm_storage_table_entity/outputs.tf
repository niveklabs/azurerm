output "id" {
  description = "returns a string"
  value       = azurerm_storage_table_entity.this.id
}

output "this" {
  value = azurerm_storage_table_entity.this
}

