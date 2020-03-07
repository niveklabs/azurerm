output "description" {
  description = "returns a string"
  value       = data.azurerm_automation_variable_bool.this.description
}

output "encrypted" {
  description = "returns a bool"
  value       = data.azurerm_automation_variable_bool.this.encrypted
}

output "id" {
  description = "returns a string"
  value       = data.azurerm_automation_variable_bool.this.id
}

output "value" {
  description = "returns a bool"
  value       = data.azurerm_automation_variable_bool.this.value
}

output "this" {
  value = azurerm_automation_variable_bool.this
}

