output "backend_ip_configuration_id" {
  description = "returns a string"
  value       = azurerm_lb_nat_rule.this.backend_ip_configuration_id
}

output "enable_floating_ip" {
  description = "returns a bool"
  value       = azurerm_lb_nat_rule.this.enable_floating_ip
}

output "frontend_ip_configuration_id" {
  description = "returns a string"
  value       = azurerm_lb_nat_rule.this.frontend_ip_configuration_id
}

output "id" {
  description = "returns a string"
  value       = azurerm_lb_nat_rule.this.id
}

output "idle_timeout_in_minutes" {
  description = "returns a number"
  value       = azurerm_lb_nat_rule.this.idle_timeout_in_minutes
}

output "this" {
  value = azurerm_lb_nat_rule.this
}

