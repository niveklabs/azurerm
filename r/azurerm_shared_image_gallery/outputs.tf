output "id" {
  description = "returns a string"
  value       = azurerm_shared_image_gallery.this.id
}

output "unique_name" {
  description = "returns a string"
  value       = azurerm_shared_image_gallery.this.unique_name
}

output "this" {
  value = azurerm_shared_image_gallery.this
}

