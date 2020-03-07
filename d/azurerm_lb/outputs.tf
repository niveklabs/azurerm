output "frontend_ip_configuration" {
  description = "returns a list of object"
  value       = data.azurerm_lb.this.frontend_ip_configuration
}

output "id" {
  description = "returns a string"
  value       = data.azurerm_lb.this.id
}

output "location" {
  description = "returns a string"
  value       = data.azurerm_lb.this.location
}

output "private_ip_address" {
  description = "returns a string"
  value       = data.azurerm_lb.this.private_ip_address
}

output "private_ip_addresses" {
  description = "returns a list of string"
  value       = data.azurerm_lb.this.private_ip_addresses
}

output "sku" {
  description = "returns a string"
  value       = data.azurerm_lb.this.sku
}

output "tags" {
  description = "returns a map of string"
  value       = data.azurerm_lb.this.tags
}

output "this" {
  value = azurerm_lb.this
}

