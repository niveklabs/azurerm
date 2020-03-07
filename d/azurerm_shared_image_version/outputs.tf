output "exclude_from_latest" {
  description = "returns a bool"
  value       = data.azurerm_shared_image_version.this.exclude_from_latest
}

output "id" {
  description = "returns a string"
  value       = data.azurerm_shared_image_version.this.id
}

output "location" {
  description = "returns a string"
  value       = data.azurerm_shared_image_version.this.location
}

output "managed_image_id" {
  description = "returns a string"
  value       = data.azurerm_shared_image_version.this.managed_image_id
}

output "tags" {
  description = "returns a map of string"
  value       = data.azurerm_shared_image_version.this.tags
}

output "target_region" {
  description = "returns a list of object"
  value       = data.azurerm_shared_image_version.this.target_region
}

output "this" {
  value = azurerm_shared_image_version.this
}

