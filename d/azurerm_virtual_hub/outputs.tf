output "address_prefix" {
  description = "returns a string"
  value       = data.azurerm_virtual_hub.this.address_prefix
}

output "id" {
  description = "returns a string"
  value       = data.azurerm_virtual_hub.this.id
}

output "location" {
  description = "returns a string"
  value       = data.azurerm_virtual_hub.this.location
}

output "tags" {
  description = "returns a map of string"
  value       = data.azurerm_virtual_hub.this.tags
}

output "virtual_wan_id" {
  description = "returns a string"
  value       = data.azurerm_virtual_hub.this.virtual_wan_id
}

output "this" {
  value = azurerm_virtual_hub.this
}

