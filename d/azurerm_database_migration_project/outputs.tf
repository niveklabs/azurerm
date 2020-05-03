output "id" {
  description = "returns a string"
  value       = data.azurerm_database_migration_project.this.id
}

output "location" {
  description = "returns a string"
  value       = data.azurerm_database_migration_project.this.location
}

output "source_platform" {
  description = "returns a string"
  value       = data.azurerm_database_migration_project.this.source_platform
}

output "tags" {
  description = "returns a map of string"
  value       = data.azurerm_database_migration_project.this.tags
}

output "target_platform" {
  description = "returns a string"
  value       = data.azurerm_database_migration_project.this.target_platform
}

output "this" {
  value = azurerm_database_migration_project.this
}

