output "id" {
  description = "returns a string"
  value       = data.azurerm_backup_policy_vm.this.id
}

output "tags" {
  description = "returns a map of string"
  value       = data.azurerm_backup_policy_vm.this.tags
}

output "this" {
  value = azurerm_backup_policy_vm.this
}

