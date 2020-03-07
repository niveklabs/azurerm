output "applied_dns_servers" {
  description = "returns a list of string"
  value       = azurerm_network_interface.this.applied_dns_servers
}

output "dns_servers" {
  description = "returns a list of string"
  value       = azurerm_network_interface.this.dns_servers
}

output "id" {
  description = "returns a string"
  value       = azurerm_network_interface.this.id
}

output "internal_dns_name_label" {
  description = "returns a string"
  value       = azurerm_network_interface.this.internal_dns_name_label
}

output "mac_address" {
  description = "returns a string"
  value       = azurerm_network_interface.this.mac_address
}

output "private_ip_address" {
  description = "returns a string"
  value       = azurerm_network_interface.this.private_ip_address
}

output "private_ip_addresses" {
  description = "returns a list of string"
  value       = azurerm_network_interface.this.private_ip_addresses
}

output "virtual_machine_id" {
  description = "returns a string"
  value       = azurerm_network_interface.this.virtual_machine_id
}

output "this" {
  value = azurerm_network_interface.this
}

