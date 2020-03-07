output "id" {
  description = "returns a string"
  value       = azurerm_app_service_custom_hostname_binding.this.id
}

output "virtual_ip" {
  description = "returns a string"
  value       = azurerm_app_service_custom_hostname_binding.this.virtual_ip
}

output "this" {
  value = azurerm_app_service_custom_hostname_binding.this
}

