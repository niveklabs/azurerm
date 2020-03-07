output "backend_address_pool_id" {
  description = "returns a string"
  value       = azurerm_lb_rule.this.backend_address_pool_id
}

output "frontend_ip_configuration_id" {
  description = "returns a string"
  value       = azurerm_lb_rule.this.frontend_ip_configuration_id
}

output "id" {
  description = "returns a string"
  value       = azurerm_lb_rule.this.id
}

output "idle_timeout_in_minutes" {
  description = "returns a number"
  value       = azurerm_lb_rule.this.idle_timeout_in_minutes
}

output "load_distribution" {
  description = "returns a string"
  value       = azurerm_lb_rule.this.load_distribution
}

output "probe_id" {
  description = "returns a string"
  value       = azurerm_lb_rule.this.probe_id
}

output "this" {
  value = azurerm_lb_rule.this
}

