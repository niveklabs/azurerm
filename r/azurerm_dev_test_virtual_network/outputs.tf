output "id" {
  description = "returns a string"
  value       = azurerm_dev_test_virtual_network.this.id
}

output "unique_identifier" {
  description = "returns a string"
  value       = azurerm_dev_test_virtual_network.this.unique_identifier
}

output "this" {
  value = azurerm_dev_test_virtual_network.this
}

