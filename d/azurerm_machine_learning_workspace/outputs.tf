output "id" {
  description = "returns a string"
  value       = data.azurerm_machine_learning_workspace.this.id
}

output "location" {
  description = "returns a string"
  value       = data.azurerm_machine_learning_workspace.this.location
}

output "tags" {
  description = "returns a map of string"
  value       = data.azurerm_machine_learning_workspace.this.tags
}

output "this" {
  value = azurerm_machine_learning_workspace.this
}

