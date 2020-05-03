output "administrator_login" {
  description = "returns a string"
  value       = azurerm_postgresql_server.this.administrator_login
}

output "auto_grow_enabled" {
  description = "returns a bool"
  value       = azurerm_postgresql_server.this.auto_grow_enabled
}

output "backup_retention_days" {
  description = "returns a number"
  value       = azurerm_postgresql_server.this.backup_retention_days
}

output "fqdn" {
  description = "returns a string"
  value       = azurerm_postgresql_server.this.fqdn
}

output "geo_redundant_backup_enabled" {
  description = "returns a bool"
  value       = azurerm_postgresql_server.this.geo_redundant_backup_enabled
}

output "id" {
  description = "returns a string"
  value       = azurerm_postgresql_server.this.id
}

output "ssl_enforcement" {
  description = "returns a string"
  value       = azurerm_postgresql_server.this.ssl_enforcement
}

output "ssl_enforcement_enabled" {
  description = "returns a bool"
  value       = azurerm_postgresql_server.this.ssl_enforcement_enabled
}

output "storage_mb" {
  description = "returns a number"
  value       = azurerm_postgresql_server.this.storage_mb
}

output "this" {
  value = azurerm_postgresql_server.this
}

