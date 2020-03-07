output "computer_name_prefix" {
  description = "returns a string"
  value       = azurerm_windows_virtual_machine_scale_set.this.computer_name_prefix
}

output "id" {
  description = "returns a string"
  value       = azurerm_windows_virtual_machine_scale_set.this.id
}

output "unique_id" {
  description = "returns a string"
  value       = azurerm_windows_virtual_machine_scale_set.this.unique_id
}

output "this" {
  value = azurerm_windows_virtual_machine_scale_set.this
}

