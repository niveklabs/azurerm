output "allowed_subnets" {
  description = "returns a list of object"
  value       = data.azurerm_dev_test_virtual_network.this.allowed_subnets
}

output "id" {
  description = "returns a string"
  value       = data.azurerm_dev_test_virtual_network.this.id
}

output "subnet_overrides" {
  description = "returns a list of object"
  value       = data.azurerm_dev_test_virtual_network.this.subnet_overrides
}

output "unique_identifier" {
  description = "returns a string"
  value       = data.azurerm_dev_test_virtual_network.this.unique_identifier
}

output "this" {
  value = azurerm_dev_test_virtual_network.this
}

