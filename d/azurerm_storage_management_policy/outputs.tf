output "id" {
  description = "returns a string"
  value       = data.azurerm_storage_management_policy.this.id
}

output "rule" {
  description = "returns a list of object"
  value       = data.azurerm_storage_management_policy.this.rule
}

output "this" {
  value = azurerm_storage_management_policy.this
}

