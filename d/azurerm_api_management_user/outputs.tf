output "email" {
  description = "returns a string"
  value       = data.azurerm_api_management_user.this.email
}

output "first_name" {
  description = "returns a string"
  value       = data.azurerm_api_management_user.this.first_name
}

output "id" {
  description = "returns a string"
  value       = data.azurerm_api_management_user.this.id
}

output "last_name" {
  description = "returns a string"
  value       = data.azurerm_api_management_user.this.last_name
}

output "note" {
  description = "returns a string"
  value       = data.azurerm_api_management_user.this.note
}

output "state" {
  description = "returns a string"
  value       = data.azurerm_api_management_user.this.state
}

output "this" {
  value = azurerm_api_management_user.this
}

