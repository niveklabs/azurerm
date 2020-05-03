output "id" {
  description = "returns a string"
  value       = data.azurerm_maintenance_configuration.this.id
}

output "location" {
  description = "returns a string"
  value       = data.azurerm_maintenance_configuration.this.location
}

output "scope" {
  description = "returns a string"
  value       = data.azurerm_maintenance_configuration.this.scope
}

output "tags" {
  description = "returns a map of string"
  value       = data.azurerm_maintenance_configuration.this.tags
}

output "this" {
  value = azurerm_maintenance_configuration.this
}

