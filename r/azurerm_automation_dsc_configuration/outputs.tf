output "id" {
  description = "returns a string"
  value       = azurerm_automation_dsc_configuration.this.id
}

output "state" {
  description = "returns a string"
  value       = azurerm_automation_dsc_configuration.this.state
}

output "this" {
  value = azurerm_automation_dsc_configuration.this
}

