output "id" {
  description = "returns a string"
  value       = azurerm_vpn_server_configuration.this.id
}

output "vpn_protocols" {
  description = "returns a set of string"
  value       = azurerm_vpn_server_configuration.this.vpn_protocols
}

output "this" {
  value = azurerm_vpn_server_configuration.this
}

