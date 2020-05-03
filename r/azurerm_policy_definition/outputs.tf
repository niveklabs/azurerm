output "id" {
  description = "returns a string"
  value       = azurerm_policy_definition.this.id
}

output "management_group_id" {
  description = "returns a string"
  value       = azurerm_policy_definition.this.management_group_id
}

output "management_group_name" {
  description = "returns a string"
  value       = azurerm_policy_definition.this.management_group_name
}

output "metadata" {
  description = "returns a string"
  value       = azurerm_policy_definition.this.metadata
}

output "this" {
  value = azurerm_policy_definition.this
}

