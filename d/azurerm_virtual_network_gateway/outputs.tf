output "active_active" {
  description = "returns a bool"
  value       = data.azurerm_virtual_network_gateway.this.active_active
}

output "bgp_settings" {
  description = "returns a list of object"
  value       = data.azurerm_virtual_network_gateway.this.bgp_settings
}

output "default_local_network_gateway_id" {
  description = "returns a string"
  value       = data.azurerm_virtual_network_gateway.this.default_local_network_gateway_id
}

output "enable_bgp" {
  description = "returns a bool"
  value       = data.azurerm_virtual_network_gateway.this.enable_bgp
}

output "generation" {
  description = "returns a string"
  value       = data.azurerm_virtual_network_gateway.this.generation
}

output "id" {
  description = "returns a string"
  value       = data.azurerm_virtual_network_gateway.this.id
}

output "ip_configuration" {
  description = "returns a list of object"
  value       = data.azurerm_virtual_network_gateway.this.ip_configuration
}

output "location" {
  description = "returns a string"
  value       = data.azurerm_virtual_network_gateway.this.location
}

output "sku" {
  description = "returns a string"
  value       = data.azurerm_virtual_network_gateway.this.sku
}

output "tags" {
  description = "returns a map of string"
  value       = data.azurerm_virtual_network_gateway.this.tags
}

output "type" {
  description = "returns a string"
  value       = data.azurerm_virtual_network_gateway.this.type
}

output "vpn_client_configuration" {
  description = "returns a list of object"
  value       = data.azurerm_virtual_network_gateway.this.vpn_client_configuration
}

output "vpn_type" {
  description = "returns a string"
  value       = data.azurerm_virtual_network_gateway.this.vpn_type
}

output "this" {
  value = azurerm_virtual_network_gateway.this
}

