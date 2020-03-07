output "address_prefix" {
  description = "returns a string"
  value       = data.azurerm_subnet.this.address_prefix
}

output "enforce_private_link_endpoint_network_policies" {
  description = "returns a bool"
  value       = data.azurerm_subnet.this.enforce_private_link_endpoint_network_policies
}

output "enforce_private_link_service_network_policies" {
  description = "returns a bool"
  value       = data.azurerm_subnet.this.enforce_private_link_service_network_policies
}

output "id" {
  description = "returns a string"
  value       = data.azurerm_subnet.this.id
}

output "network_security_group_id" {
  description = "returns a string"
  value       = data.azurerm_subnet.this.network_security_group_id
}

output "route_table_id" {
  description = "returns a string"
  value       = data.azurerm_subnet.this.route_table_id
}

output "service_endpoints" {
  description = "returns a list of string"
  value       = data.azurerm_subnet.this.service_endpoints
}

output "this" {
  value = azurerm_subnet.this
}

