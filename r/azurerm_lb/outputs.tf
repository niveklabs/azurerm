output "id" {
  description = "returns a string"
  value       = azurerm_lb.this.id
}

output "private_ip_address" {
  description = "returns a string"
  value       = azurerm_lb.this.private_ip_address
}

output "private_ip_addresses" {
  description = "returns a list of string"
  value       = azurerm_lb.this.private_ip_addresses
}

output "this" {
  value = azurerm_lb.this
}

