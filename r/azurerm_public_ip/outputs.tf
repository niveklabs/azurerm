output "fqdn" {
  description = "returns a string"
  value       = azurerm_public_ip.this.fqdn
}

output "id" {
  description = "returns a string"
  value       = azurerm_public_ip.this.id
}

output "ip_address" {
  description = "returns a string"
  value       = azurerm_public_ip.this.ip_address
}

output "this" {
  value = azurerm_public_ip.this
}

