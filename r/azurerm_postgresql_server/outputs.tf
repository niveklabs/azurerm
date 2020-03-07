output "fqdn" {
  description = "returns a string"
  value       = azurerm_postgresql_server.this.fqdn
}

output "id" {
  description = "returns a string"
  value       = azurerm_postgresql_server.this.id
}

output "this" {
  value = azurerm_postgresql_server.this
}

