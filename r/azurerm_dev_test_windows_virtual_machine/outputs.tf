output "fqdn" {
  description = "returns a string"
  value       = azurerm_dev_test_windows_virtual_machine.this.fqdn
}

output "id" {
  description = "returns a string"
  value       = azurerm_dev_test_windows_virtual_machine.this.id
}

output "unique_identifier" {
  description = "returns a string"
  value       = azurerm_dev_test_windows_virtual_machine.this.unique_identifier
}

output "this" {
  value = azurerm_dev_test_windows_virtual_machine.this
}

