output "frontend_ip_configuration_id" {
  description = "returns a string"
  value       = azurerm_lb_nat_pool.this.frontend_ip_configuration_id
}

output "id" {
  description = "returns a string"
  value       = azurerm_lb_nat_pool.this.id
}

output "this" {
  value = azurerm_lb_nat_pool.this
}

