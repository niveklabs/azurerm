output "id" {
  description = "returns a string"
  value       = data.azurerm_database_migration_service.this.id
}

output "location" {
  description = "returns a string"
  value       = data.azurerm_database_migration_service.this.location
}

output "sku_name" {
  description = "returns a string"
  value       = data.azurerm_database_migration_service.this.sku_name
}

output "subnet_id" {
  description = "returns a string"
  value       = data.azurerm_database_migration_service.this.subnet_id
}

output "tags" {
  description = "returns a map of string"
  value       = data.azurerm_database_migration_service.this.tags
}

output "this" {
  value = azurerm_database_migration_service.this
}

