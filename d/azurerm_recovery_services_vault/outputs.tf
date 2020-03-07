output "id" {
  description = "returns a string"
  value       = data.azurerm_recovery_services_vault.this.id
}

output "location" {
  description = "returns a string"
  value       = data.azurerm_recovery_services_vault.this.location
}

output "sku" {
  description = "returns a string"
  value       = data.azurerm_recovery_services_vault.this.sku
}

output "tags" {
  description = "returns a map of string"
  value       = data.azurerm_recovery_services_vault.this.tags
}

output "this" {
  value = azurerm_recovery_services_vault.this
}

