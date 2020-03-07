output "backend_ip_configurations" {
  description = "returns a set of string"
  value       = azurerm_lb_backend_address_pool.this.backend_ip_configurations
}

output "id" {
  description = "returns a string"
  value       = azurerm_lb_backend_address_pool.this.id
}

output "load_balancing_rules" {
  description = "returns a set of string"
  value       = azurerm_lb_backend_address_pool.this.load_balancing_rules
}

output "this" {
  value = azurerm_lb_backend_address_pool.this
}

