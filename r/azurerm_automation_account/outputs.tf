output "dsc_primary_access_key" {
  description = "returns a string"
  value       = azurerm_automation_account.this.dsc_primary_access_key
}

output "dsc_secondary_access_key" {
  description = "returns a string"
  value       = azurerm_automation_account.this.dsc_secondary_access_key
}

output "dsc_server_endpoint" {
  description = "returns a string"
  value       = azurerm_automation_account.this.dsc_server_endpoint
}

output "id" {
  description = "returns a string"
  value       = azurerm_automation_account.this.id
}

output "this" {
  value = azurerm_automation_account.this
}

