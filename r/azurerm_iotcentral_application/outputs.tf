output "display_name" {
  description = "returns a string"
  value       = azurerm_iotcentral_application.this.display_name
}

output "id" {
  description = "returns a string"
  value       = azurerm_iotcentral_application.this.id
}

output "template" {
  description = "returns a string"
  value       = azurerm_iotcentral_application.this.template
}

output "this" {
  value = azurerm_iotcentral_application.this
}

