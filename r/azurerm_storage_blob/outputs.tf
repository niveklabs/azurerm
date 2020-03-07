output "access_tier" {
  description = "returns a string"
  value       = azurerm_storage_blob.this.access_tier
}

output "id" {
  description = "returns a string"
  value       = azurerm_storage_blob.this.id
}

output "metadata" {
  description = "returns a map of string"
  value       = azurerm_storage_blob.this.metadata
}

output "url" {
  description = "returns a string"
  value       = azurerm_storage_blob.this.url
}

output "this" {
  value = azurerm_storage_blob.this
}

