output "id" {
  description = "returns a string"
  value       = azurerm_netapp_volume.this.id
}

output "protocols" {
  description = "returns a set of string"
  value       = azurerm_netapp_volume.this.protocols
}

output "this" {
  value = azurerm_netapp_volume.this
}

