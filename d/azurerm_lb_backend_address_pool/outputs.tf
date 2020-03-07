output "backend_ip_configurations" {
  description = "returns a list of object"
  value       = data.azurerm_lb_backend_address_pool.this.backend_ip_configurations
}

output "id" {
  description = "returns a string"
  value       = data.azurerm_lb_backend_address_pool.this.id
}

output "this" {
  value = azurerm_lb_backend_address_pool.this
}

