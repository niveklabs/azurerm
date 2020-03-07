output "id" {
  description = "returns a string"
  value       = azurerm_virtual_machine_scale_set.this.id
}

output "license_type" {
  description = "returns a string"
  value       = azurerm_virtual_machine_scale_set.this.license_type
}

output "this" {
  value = azurerm_virtual_machine_scale_set.this
}

