output "endpoint" {
  description = "returns a string"
  value       = data.azurerm_automation_account.this.endpoint
}

output "id" {
  description = "returns a string"
  value       = data.azurerm_automation_account.this.id
}

output "primary_key" {
  description = "returns a string"
  value       = data.azurerm_automation_account.this.primary_key
}

output "secondary_key" {
  description = "returns a string"
  value       = data.azurerm_automation_account.this.secondary_key
}

output "this" {
  value = azurerm_automation_account.this
}

