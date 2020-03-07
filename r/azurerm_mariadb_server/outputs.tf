output "fqdn" {
  description = "returns a string"
  value       = azurerm_mariadb_server.this.fqdn
}

output "id" {
  description = "returns a string"
  value       = azurerm_mariadb_server.this.id
}

output "this" {
  value = azurerm_mariadb_server.this
}

