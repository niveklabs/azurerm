output "id" {
  description = "returns a string"
  value       = data.azurerm_cdn_profile.this.id
}

output "location" {
  description = "returns a string"
  value       = data.azurerm_cdn_profile.this.location
}

output "sku" {
  description = "returns a string"
  value       = data.azurerm_cdn_profile.this.sku
}

output "tags" {
  description = "returns a map of string"
  value       = data.azurerm_cdn_profile.this.tags
}

output "this" {
  value = azurerm_cdn_profile.this
}

