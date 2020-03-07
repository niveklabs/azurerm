output "administrator_login" {
  description = "returns a string"
  value       = data.azurerm_sql_server.this.administrator_login
}

output "fqdn" {
  description = "returns a string"
  value       = data.azurerm_sql_server.this.fqdn
}

output "id" {
  description = "returns a string"
  value       = data.azurerm_sql_server.this.id
}

output "identity" {
  description = "returns a list of object"
  value       = data.azurerm_sql_server.this.identity
}

output "location" {
  description = "returns a string"
  value       = data.azurerm_sql_server.this.location
}

output "tags" {
  description = "returns a map of string"
  value       = data.azurerm_sql_server.this.tags
}

output "version" {
  description = "returns a string"
  value       = data.azurerm_sql_server.this.version
}

output "this" {
  value = azurerm_sql_server.this
}

