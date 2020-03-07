output "description" {
  description = "returns a string"
  value       = data.azurerm_automation_variable_string.this.description
}

output "encrypted" {
  description = "returns a bool"
  value       = data.azurerm_automation_variable_string.this.encrypted
}

output "id" {
  description = "returns a string"
  value       = data.azurerm_automation_variable_string.this.id
}

output "value" {
  description = "returns a string"
  value       = data.azurerm_automation_variable_string.this.value
}

output "this" {
  value = azurerm_automation_variable_string.this
}

