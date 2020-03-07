output "id" {
  description = "returns a string"
  value       = azurerm_virtual_machine_scale_set_extension.this.id
}

output "this" {
  value = azurerm_virtual_machine_scale_set_extension.this
}

