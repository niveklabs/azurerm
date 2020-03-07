output "allow_forwarded_traffic" {
  description = "returns a bool"
  value       = azurerm_virtual_network_peering.this.allow_forwarded_traffic
}

output "allow_gateway_transit" {
  description = "returns a bool"
  value       = azurerm_virtual_network_peering.this.allow_gateway_transit
}

output "id" {
  description = "returns a string"
  value       = azurerm_virtual_network_peering.this.id
}

output "use_remote_gateways" {
  description = "returns a bool"
  value       = azurerm_virtual_network_peering.this.use_remote_gateways
}

output "this" {
  value = azurerm_virtual_network_peering.this
}

