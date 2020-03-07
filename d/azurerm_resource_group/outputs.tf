output "id" {
  description = "returns a string"
  value       = data.azurerm_resource_group.this.id
}

output "location" {
  description = "returns a string"
  value       = data.azurerm_resource_group.this.location
}

output "tags" {
  description = "returns a map of string"
  value       = data.azurerm_resource_group.this.tags
}

output "this" {
  value = azurerm_resource_group.this
}

