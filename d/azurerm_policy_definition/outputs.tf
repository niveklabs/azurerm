output "description" {
  description = "returns a string"
  value       = data.azurerm_policy_definition.this.description
}

output "id" {
  description = "returns a string"
  value       = data.azurerm_policy_definition.this.id
}

output "metadata" {
  description = "returns a string"
  value       = data.azurerm_policy_definition.this.metadata
}

output "name" {
  description = "returns a string"
  value       = data.azurerm_policy_definition.this.name
}

output "parameters" {
  description = "returns a string"
  value       = data.azurerm_policy_definition.this.parameters
}

output "policy_rule" {
  description = "returns a string"
  value       = data.azurerm_policy_definition.this.policy_rule
}

output "policy_type" {
  description = "returns a string"
  value       = data.azurerm_policy_definition.this.policy_type
}

output "type" {
  description = "returns a string"
  value       = data.azurerm_policy_definition.this.type
}

output "this" {
  value = azurerm_policy_definition.this
}

