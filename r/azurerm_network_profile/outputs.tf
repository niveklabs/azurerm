output "container_network_interface_ids" {
  description = "returns a list of string"
  value       = azurerm_network_profile.this.container_network_interface_ids
}

output "id" {
  description = "returns a string"
  value       = azurerm_network_profile.this.id
}

output "this" {
  value = azurerm_network_profile.this
}

