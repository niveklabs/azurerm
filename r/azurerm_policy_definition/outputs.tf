output "id" {
  description = "returns a string"
  value       = azurerm_policy_definition.this.id
}

output "metadata" {
  description = "returns a string"
  value       = azurerm_policy_definition.this.metadata
}

output "this" {
  value = azurerm_policy_definition.this
}

