output "id" {
  description = "returns a string"
  value       = data.azurerm_disk_encryption_set.this.id
}

output "location" {
  description = "returns a string"
  value       = data.azurerm_disk_encryption_set.this.location
}

output "tags" {
  description = "returns a map of string"
  value       = data.azurerm_disk_encryption_set.this.tags
}

output "this" {
  value = azurerm_disk_encryption_set.this
}

