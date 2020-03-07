output "id" {
  description = "returns a string"
  value       = azurerm_lb_probe.this.id
}

output "load_balancer_rules" {
  description = "returns a set of string"
  value       = azurerm_lb_probe.this.load_balancer_rules
}

output "protocol" {
  description = "returns a string"
  value       = azurerm_lb_probe.this.protocol
}

output "this" {
  value = azurerm_lb_probe.this
}

