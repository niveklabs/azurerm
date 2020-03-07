output "id" {
  description = "returns a string"
  value       = azurerm_role_definition.this.id
}

output "role_definition_id" {
  description = "returns a string"
  value       = azurerm_role_definition.this.role_definition_id
}

output "this" {
  value = azurerm_role_definition.this
}

