output "description" {
  description = "returns a string"
  value       = data.azurerm_automation_variable_datetime.this.description
}

output "encrypted" {
  description = "returns a bool"
  value       = data.azurerm_automation_variable_datetime.this.encrypted
}

output "id" {
  description = "returns a string"
  value       = data.azurerm_automation_variable_datetime.this.id
}

output "value" {
  description = "returns a string"
  value       = data.azurerm_automation_variable_datetime.this.value
}

output "this" {
  value = azurerm_automation_variable_datetime.this
}

