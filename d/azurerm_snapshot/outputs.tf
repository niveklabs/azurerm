output "creation_option" {
  description = "returns a string"
  value       = data.azurerm_snapshot.this.creation_option
}

output "disk_size_gb" {
  description = "returns a number"
  value       = data.azurerm_snapshot.this.disk_size_gb
}

output "encryption_settings" {
  description = "returns a list of object"
  value       = data.azurerm_snapshot.this.encryption_settings
}

output "id" {
  description = "returns a string"
  value       = data.azurerm_snapshot.this.id
}

output "os_type" {
  description = "returns a string"
  value       = data.azurerm_snapshot.this.os_type
}

output "source_resource_id" {
  description = "returns a string"
  value       = data.azurerm_snapshot.this.source_resource_id
}

output "source_uri" {
  description = "returns a string"
  value       = data.azurerm_snapshot.this.source_uri
}

output "storage_account_id" {
  description = "returns a string"
  value       = data.azurerm_snapshot.this.storage_account_id
}

output "time_created" {
  description = "returns a string"
  value       = data.azurerm_snapshot.this.time_created
}

output "this" {
  value = azurerm_snapshot.this
}

