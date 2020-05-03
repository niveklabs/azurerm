output "id" {
  description = "returns a string"
  value       = data.azurerm_managed_application_definition.this.id
}

output "location" {
  description = "returns a string"
  value       = data.azurerm_managed_application_definition.this.location
}

output "this" {
  value = azurerm_managed_application_definition.this
}

