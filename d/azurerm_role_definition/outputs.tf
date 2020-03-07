output "assignable_scopes" {
  description = "returns a list of string"
  value       = data.azurerm_role_definition.this.assignable_scopes
}

output "description" {
  description = "returns a string"
  value       = data.azurerm_role_definition.this.description
}

output "id" {
  description = "returns a string"
  value       = data.azurerm_role_definition.this.id
}

output "name" {
  description = "returns a string"
  value       = data.azurerm_role_definition.this.name
}

output "permissions" {
  description = "returns a list of object"
  value       = data.azurerm_role_definition.this.permissions
}

output "role_definition_id" {
  description = "returns a string"
  value       = data.azurerm_role_definition.this.role_definition_id
}

output "type" {
  description = "returns a string"
  value       = data.azurerm_role_definition.this.type
}

output "this" {
  value = azurerm_role_definition.this
}

