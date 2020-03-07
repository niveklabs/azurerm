output "id" {
  description = "returns a string"
  value       = data.azurerm_public_ips.this.id
}

output "public_ips" {
  description = "returns a list of object"
  value       = data.azurerm_public_ips.this.public_ips
}

output "this" {
  value = azurerm_public_ips.this
}

