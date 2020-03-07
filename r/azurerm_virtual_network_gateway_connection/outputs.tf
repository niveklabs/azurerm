output "connection_protocol" {
  description = "returns a string"
  value       = azurerm_virtual_network_gateway_connection.this.connection_protocol
}

output "enable_bgp" {
  description = "returns a bool"
  value       = azurerm_virtual_network_gateway_connection.this.enable_bgp
}

output "express_route_gateway_bypass" {
  description = "returns a bool"
  value       = azurerm_virtual_network_gateway_connection.this.express_route_gateway_bypass
}

output "id" {
  description = "returns a string"
  value       = azurerm_virtual_network_gateway_connection.this.id
}

output "routing_weight" {
  description = "returns a number"
  value       = azurerm_virtual_network_gateway_connection.this.routing_weight
}

output "use_policy_based_traffic_selectors" {
  description = "returns a bool"
  value       = azurerm_virtual_network_gateway_connection.this.use_policy_based_traffic_selectors
}

output "this" {
  value = azurerm_virtual_network_gateway_connection.this
}

