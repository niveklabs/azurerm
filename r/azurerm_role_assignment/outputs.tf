output "id" {
  description = "returns a string"
  value       = azurerm_role_assignment.this.id
}

output "name" {
  description = "returns a string"
  value       = azurerm_role_assignment.this.name
}

output "principal_type" {
  description = "returns a string"
  value       = azurerm_role_assignment.this.principal_type
}

output "role_definition_id" {
  description = "returns a string"
  value       = azurerm_role_assignment.this.role_definition_id
}

output "role_definition_name" {
  description = "returns a string"
  value       = azurerm_role_assignment.this.role_definition_name
}

output "skip_service_principal_aad_check" {
  description = "returns a bool"
  value       = azurerm_role_assignment.this.skip_service_principal_aad_check
}

output "this" {
  value = azurerm_role_assignment.this
}

