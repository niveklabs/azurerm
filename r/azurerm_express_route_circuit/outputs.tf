output "id" {
  description = "returns a string"
  value       = azurerm_express_route_circuit.this.id
}

output "service_key" {
  description = "returns a string"
  value       = azurerm_express_route_circuit.this.service_key
  sensitive   = true
}

output "service_provider_provisioning_state" {
  description = "returns a string"
  value       = azurerm_express_route_circuit.this.service_provider_provisioning_state
}

output "this" {
  value = azurerm_express_route_circuit.this
}

