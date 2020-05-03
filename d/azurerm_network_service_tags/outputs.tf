output "address_prefixes" {
  description = "returns a list of string"
  value       = data.azurerm_network_service_tags.this.address_prefixes
}

output "id" {
  description = "returns a string"
  value       = data.azurerm_network_service_tags.this.id
}

output "this" {
  value = azurerm_network_service_tags.this
}

