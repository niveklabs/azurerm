output "id" {
  description = "returns a string"
  value       = azurerm_storage_share.this.id
}

output "url" {
  description = "returns a string"
  value       = azurerm_storage_share.this.url
}

output "this" {
  value = azurerm_storage_share.this
}

