output "data_plane_fqdn" {
  description = "returns a string"
  value       = azurerm_devspace_controller.this.data_plane_fqdn
}

output "host_suffix" {
  description = "returns a string"
  value       = azurerm_devspace_controller.this.host_suffix
}

output "id" {
  description = "returns a string"
  value       = azurerm_devspace_controller.this.id
}

output "this" {
  value = azurerm_devspace_controller.this
}

