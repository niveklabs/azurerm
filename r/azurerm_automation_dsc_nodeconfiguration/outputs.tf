output "configuration_name" {
  description = "returns a string"
  value       = azurerm_automation_dsc_nodeconfiguration.this.configuration_name
}

output "id" {
  description = "returns a string"
  value       = azurerm_automation_dsc_nodeconfiguration.this.id
}

output "this" {
  value = azurerm_automation_dsc_nodeconfiguration.this
}

