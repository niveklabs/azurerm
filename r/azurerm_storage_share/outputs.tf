output "id" {
  description = "returns a string"
  value       = azurerm_storage_share.this.id
}

output "resource_manager_id" {
  description = "returns a string"
  value       = azurerm_storage_share.this.resource_manager_id
}

output "url" {
  description = "returns a string"
  value       = azurerm_storage_share.this.url
}

output "this" {
  value = azurerm_storage_share.this
}

