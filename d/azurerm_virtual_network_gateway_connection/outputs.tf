output "authorization_key" {
  description = "returns a string"
  value       = data.azurerm_virtual_network_gateway_connection.this.authorization_key
}

output "connection_protocol" {
  description = "returns a string"
  value       = data.azurerm_virtual_network_gateway_connection.this.connection_protocol
}

output "egress_bytes_transferred" {
  description = "returns a number"
  value       = data.azurerm_virtual_network_gateway_connection.this.egress_bytes_transferred
}

output "enable_bgp" {
  description = "returns a bool"
  value       = data.azurerm_virtual_network_gateway_connection.this.enable_bgp
}

output "express_route_circuit_id" {
  description = "returns a string"
  value       = data.azurerm_virtual_network_gateway_connection.this.express_route_circuit_id
}

output "express_route_gateway_bypass" {
  description = "returns a bool"
  value       = data.azurerm_virtual_network_gateway_connection.this.express_route_gateway_bypass
}

output "id" {
  description = "returns a string"
  value       = data.azurerm_virtual_network_gateway_connection.this.id
}

output "ingress_bytes_transferred" {
  description = "returns a number"
  value       = data.azurerm_virtual_network_gateway_connection.this.ingress_bytes_transferred
}

output "ipsec_policy" {
  description = "returns a list of object"
  value       = data.azurerm_virtual_network_gateway_connection.this.ipsec_policy
}

output "local_network_gateway_id" {
  description = "returns a string"
  value       = data.azurerm_virtual_network_gateway_connection.this.local_network_gateway_id
}

output "location" {
  description = "returns a string"
  value       = data.azurerm_virtual_network_gateway_connection.this.location
}

output "peer_virtual_network_gateway_id" {
  description = "returns a string"
  value       = data.azurerm_virtual_network_gateway_connection.this.peer_virtual_network_gateway_id
}

output "resource_guid" {
  description = "returns a string"
  value       = data.azurerm_virtual_network_gateway_connection.this.resource_guid
}

output "routing_weight" {
  description = "returns a number"
  value       = data.azurerm_virtual_network_gateway_connection.this.routing_weight
}

output "shared_key" {
  description = "returns a string"
  value       = data.azurerm_virtual_network_gateway_connection.this.shared_key
}

output "tags" {
  description = "returns a map of string"
  value       = data.azurerm_virtual_network_gateway_connection.this.tags
}

output "type" {
  description = "returns a string"
  value       = data.azurerm_virtual_network_gateway_connection.this.type
}

output "use_policy_based_traffic_selectors" {
  description = "returns a bool"
  value       = data.azurerm_virtual_network_gateway_connection.this.use_policy_based_traffic_selectors
}

output "virtual_network_gateway_id" {
  description = "returns a string"
  value       = data.azurerm_virtual_network_gateway_connection.this.virtual_network_gateway_id
}

output "this" {
  value = azurerm_virtual_network_gateway_connection.this
}

