output "active_active" {
  description = "returns a bool"
  value       = azurerm_virtual_network_gateway.this.active_active
}

output "enable_bgp" {
  description = "returns a bool"
  value       = azurerm_virtual_network_gateway.this.enable_bgp
}

output "generation" {
  description = "returns a string"
  value       = azurerm_virtual_network_gateway.this.generation
}

output "id" {
  description = "returns a string"
  value       = azurerm_virtual_network_gateway.this.id
}

output "this" {
  value = azurerm_virtual_network_gateway.this
}

