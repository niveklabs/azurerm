output "id" {
  description = "returns a string"
  value       = data.azurerm_virtual_machine.this.id
}

output "this" {
  value = azurerm_virtual_machine.this
}

