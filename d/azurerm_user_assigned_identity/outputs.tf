output "client_id" {
  description = "returns a string"
  value       = data.azurerm_user_assigned_identity.this.client_id
}

output "id" {
  description = "returns a string"
  value       = data.azurerm_user_assigned_identity.this.id
}

output "location" {
  description = "returns a string"
  value       = data.azurerm_user_assigned_identity.this.location
}

output "principal_id" {
  description = "returns a string"
  value       = data.azurerm_user_assigned_identity.this.principal_id
}

output "tags" {
  description = "returns a map of string"
  value       = data.azurerm_user_assigned_identity.this.tags
}

output "this" {
  value = azurerm_user_assigned_identity.this
}

