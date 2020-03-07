output "alias" {
  description = "returns a string"
  value       = azurerm_private_link_service.this.alias
}

output "id" {
  description = "returns a string"
  value       = azurerm_private_link_service.this.id
}

output "this" {
  value = azurerm_private_link_service.this
}

