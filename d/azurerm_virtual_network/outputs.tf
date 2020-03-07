output "address_space" {
  description = "returns a list of string"
  value       = data.azurerm_virtual_network.this.address_space
}

output "dns_servers" {
  description = "returns a list of string"
  value       = data.azurerm_virtual_network.this.dns_servers
}

output "id" {
  description = "returns a string"
  value       = data.azurerm_virtual_network.this.id
}

output "location" {
  description = "returns a string"
  value       = data.azurerm_virtual_network.this.location
}

output "subnets" {
  description = "returns a list of string"
  value       = data.azurerm_virtual_network.this.subnets
}

output "vnet_peerings" {
  description = "returns a map of string"
  value       = data.azurerm_virtual_network.this.vnet_peerings
}

output "this" {
  value = azurerm_virtual_network.this
}

