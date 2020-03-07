output "applied_dns_servers" {
  description = "returns a set of string"
  value       = data.azurerm_network_interface.this.applied_dns_servers
}

output "dns_servers" {
  description = "returns a set of string"
  value       = data.azurerm_network_interface.this.dns_servers
}

output "enable_accelerated_networking" {
  description = "returns a bool"
  value       = data.azurerm_network_interface.this.enable_accelerated_networking
}

output "enable_ip_forwarding" {
  description = "returns a bool"
  value       = data.azurerm_network_interface.this.enable_ip_forwarding
}

output "id" {
  description = "returns a string"
  value       = data.azurerm_network_interface.this.id
}

output "internal_dns_name_label" {
  description = "returns a string"
  value       = data.azurerm_network_interface.this.internal_dns_name_label
}

output "ip_configuration" {
  description = "returns a list of object"
  value       = data.azurerm_network_interface.this.ip_configuration
}

output "location" {
  description = "returns a string"
  value       = data.azurerm_network_interface.this.location
}

output "mac_address" {
  description = "returns a string"
  value       = data.azurerm_network_interface.this.mac_address
}

output "network_security_group_id" {
  description = "returns a string"
  value       = data.azurerm_network_interface.this.network_security_group_id
}

output "private_ip_address" {
  description = "returns a string"
  value       = data.azurerm_network_interface.this.private_ip_address
}

output "private_ip_addresses" {
  description = "returns a list of string"
  value       = data.azurerm_network_interface.this.private_ip_addresses
}

output "tags" {
  description = "returns a map of string"
  value       = data.azurerm_network_interface.this.tags
}

output "virtual_machine_id" {
  description = "returns a string"
  value       = data.azurerm_network_interface.this.virtual_machine_id
}

output "this" {
  value = azurerm_network_interface.this
}

