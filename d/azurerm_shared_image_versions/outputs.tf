output "id" {
  description = "returns a string"
  value       = data.azurerm_shared_image_versions.this.id
}

output "images" {
  description = "returns a list of object"
  value       = data.azurerm_shared_image_versions.this.images
}

output "this" {
  value = azurerm_shared_image_versions.this
}

