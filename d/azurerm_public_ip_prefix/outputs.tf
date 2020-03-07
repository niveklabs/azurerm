output "id" {
  description = "returns a string"
  value       = data.azurerm_public_ip_prefix.this.id
}

output "ip_prefix" {
  description = "returns a string"
  value       = data.azurerm_public_ip_prefix.this.ip_prefix
}

output "location" {
  description = "returns a string"
  value       = data.azurerm_public_ip_prefix.this.location
}

output "prefix_length" {
  description = "returns a number"
  value       = data.azurerm_public_ip_prefix.this.prefix_length
}

output "sku" {
  description = "returns a string"
  value       = data.azurerm_public_ip_prefix.this.sku
}

output "tags" {
  description = "returns a map of string"
  value       = data.azurerm_public_ip_prefix.this.tags
}

output "zones" {
  description = "returns a list of string"
  value       = data.azurerm_public_ip_prefix.this.zones
}

output "this" {
  value = azurerm_public_ip_prefix.this
}

