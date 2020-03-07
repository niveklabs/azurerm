output "description" {
  description = "returns a string"
  value       = data.azurerm_api_management_group.this.description
}

output "display_name" {
  description = "returns a string"
  value       = data.azurerm_api_management_group.this.display_name
}

output "external_id" {
  description = "returns a string"
  value       = data.azurerm_api_management_group.this.external_id
}

output "id" {
  description = "returns a string"
  value       = data.azurerm_api_management_group.this.id
}

output "type" {
  description = "returns a string"
  value       = data.azurerm_api_management_group.this.type
}

output "this" {
  value = azurerm_api_management_group.this
}

