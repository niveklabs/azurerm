output "administrator_login" {
  description = "returns a string"
  value       = data.azurerm_mariadb_server.this.administrator_login
}

output "administrator_login_password" {
  description = "returns a string"
  value       = data.azurerm_mariadb_server.this.administrator_login_password
  sensitive   = true
}

output "fqdn" {
  description = "returns a string"
  value       = data.azurerm_mariadb_server.this.fqdn
}

output "id" {
  description = "returns a string"
  value       = data.azurerm_mariadb_server.this.id
}

output "location" {
  description = "returns a string"
  value       = data.azurerm_mariadb_server.this.location
}

output "sku_name" {
  description = "returns a string"
  value       = data.azurerm_mariadb_server.this.sku_name
}

output "ssl_enforcement" {
  description = "returns a string"
  value       = data.azurerm_mariadb_server.this.ssl_enforcement
}

output "storage_profile" {
  description = "returns a list of object"
  value       = data.azurerm_mariadb_server.this.storage_profile
}

output "tags" {
  description = "returns a map of string"
  value       = data.azurerm_mariadb_server.this.tags
}

output "version" {
  description = "returns a string"
  value       = data.azurerm_mariadb_server.this.version
}

output "this" {
  value = azurerm_mariadb_server.this
}

