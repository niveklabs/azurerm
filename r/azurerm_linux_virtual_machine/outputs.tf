output "computer_name" {
  description = "returns a string"
  value       = azurerm_linux_virtual_machine.this.computer_name
}

output "id" {
  description = "returns a string"
  value       = azurerm_linux_virtual_machine.this.id
}

output "private_ip_address" {
  description = "returns a string"
  value       = azurerm_linux_virtual_machine.this.private_ip_address
}

output "private_ip_addresses" {
  description = "returns a list of string"
  value       = azurerm_linux_virtual_machine.this.private_ip_addresses
}

output "public_ip_address" {
  description = "returns a string"
  value       = azurerm_linux_virtual_machine.this.public_ip_address
}

output "public_ip_addresses" {
  description = "returns a list of string"
  value       = azurerm_linux_virtual_machine.this.public_ip_addresses
}

output "virtual_machine_id" {
  description = "returns a string"
  value       = azurerm_linux_virtual_machine.this.virtual_machine_id
}

output "this" {
  value = azurerm_linux_virtual_machine.this
}

