output "id" {
  description = "returns a string"
  value       = data.azurerm_resources.this.id
}

output "name" {
  description = "returns a string"
  value       = data.azurerm_resources.this.name
}

output "resource_group_name" {
  description = "returns a string"
  value       = data.azurerm_resources.this.resource_group_name
}

output "resources" {
  description = "returns a list of object"
  value       = data.azurerm_resources.this.resources
}

output "type" {
  description = "returns a string"
  value       = data.azurerm_resources.this.type
}

output "this" {
  value = azurerm_resources.this
}

