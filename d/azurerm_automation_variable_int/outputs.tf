output "description" {
  description = "returns a string"
  value       = data.azurerm_automation_variable_int.this.description
}

output "encrypted" {
  description = "returns a bool"
  value       = data.azurerm_automation_variable_int.this.encrypted
}

output "id" {
  description = "returns a string"
  value       = data.azurerm_automation_variable_int.this.id
}

output "value" {
  description = "returns a number"
  value       = data.azurerm_automation_variable_int.this.value
}

output "this" {
  value = azurerm_automation_variable_int.this
}

