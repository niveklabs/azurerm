output "description" {
  description = "returns a string"
  value       = data.azurerm_shared_image_gallery.this.description
}

output "id" {
  description = "returns a string"
  value       = data.azurerm_shared_image_gallery.this.id
}

output "location" {
  description = "returns a string"
  value       = data.azurerm_shared_image_gallery.this.location
}

output "tags" {
  description = "returns a map of string"
  value       = data.azurerm_shared_image_gallery.this.tags
}

output "unique_name" {
  description = "returns a string"
  value       = data.azurerm_shared_image_gallery.this.unique_name
}

output "this" {
  value = azurerm_shared_image_gallery.this
}

