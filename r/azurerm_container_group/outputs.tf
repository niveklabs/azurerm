output "fqdn" {
  description = "returns a string"
  value       = azurerm_container_group.this.fqdn
}

output "id" {
  description = "returns a string"
  value       = azurerm_container_group.this.id
}

output "ip_address" {
  description = "returns a string"
  value       = azurerm_container_group.this.ip_address
}

output "this" {
  value = azurerm_container_group.this
}

