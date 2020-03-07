output "data_disk" {
  description = "returns a list of object"
  value       = data.azurerm_image.this.data_disk
}

output "id" {
  description = "returns a string"
  value       = data.azurerm_image.this.id
}

output "location" {
  description = "returns a string"
  value       = data.azurerm_image.this.location
}

output "os_disk" {
  description = "returns a list of object"
  value       = data.azurerm_image.this.os_disk
}

output "tags" {
  description = "returns a map of string"
  value       = data.azurerm_image.this.tags
}

output "zone_resilient" {
  description = "returns a bool"
  value       = data.azurerm_image.this.zone_resilient
}

output "this" {
  value = azurerm_image.this
}

