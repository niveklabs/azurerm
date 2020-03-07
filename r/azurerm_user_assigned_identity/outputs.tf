output "client_id" {
  description = "returns a string"
  value       = azurerm_user_assigned_identity.this.client_id
}

output "id" {
  description = "returns a string"
  value       = azurerm_user_assigned_identity.this.id
}

output "principal_id" {
  description = "returns a string"
  value       = azurerm_user_assigned_identity.this.principal_id
}

output "this" {
  value = azurerm_user_assigned_identity.this
}

