output "id" {
  description = "returns a string"
  value       = azurerm_public_ip_prefix.this.id
}

output "ip_prefix" {
  description = "returns a string"
  value       = azurerm_public_ip_prefix.this.ip_prefix
}

output "this" {
  value = azurerm_public_ip_prefix.this
}

