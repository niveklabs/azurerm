output "id" {
  description = "returns a string"
  value       = azurerm_managed_application.this.id
}

output "outputs" {
  description = "returns a map of string"
  value       = azurerm_managed_application.this.outputs
}

output "this" {
  value = azurerm_managed_application.this
}

