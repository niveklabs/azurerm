output "availability_set_id" {
  description = "returns a string"
  value       = azurerm_virtual_machine.this.availability_set_id
}

output "id" {
  description = "returns a string"
  value       = azurerm_virtual_machine.this.id
}

output "license_type" {
  description = "returns a string"
  value       = azurerm_virtual_machine.this.license_type
}

output "this" {
  value = azurerm_virtual_machine.this
}

