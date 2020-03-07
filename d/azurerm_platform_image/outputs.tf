output "id" {
  description = "returns a string"
  value       = data.azurerm_platform_image.this.id
}

output "version" {
  description = "returns a string"
  value       = data.azurerm_platform_image.this.version
}

output "this" {
  value = azurerm_platform_image.this
}

