output "fqdn" {
  description = "returns a string"
  value       = azurerm_mysql_server.this.fqdn
}

output "id" {
  description = "returns a string"
  value       = azurerm_mysql_server.this.id
}

output "this" {
  value = azurerm_mysql_server.this
}

