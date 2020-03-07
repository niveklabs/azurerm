output "id" {
  description = "returns a string"
  value       = data.azurerm_express_route_circuit.this.id
}

output "location" {
  description = "returns a string"
  value       = data.azurerm_express_route_circuit.this.location
}

output "peerings" {
  description = "returns a list of object"
  value       = data.azurerm_express_route_circuit.this.peerings
}

output "service_key" {
  description = "returns a string"
  value       = data.azurerm_express_route_circuit.this.service_key
}

output "service_provider_properties" {
  description = "returns a list of object"
  value       = data.azurerm_express_route_circuit.this.service_provider_properties
}

output "service_provider_provisioning_state" {
  description = "returns a string"
  value       = data.azurerm_express_route_circuit.this.service_provider_provisioning_state
}

output "sku" {
  description = "returns a list of object"
  value       = data.azurerm_express_route_circuit.this.sku
}

output "this" {
  value = azurerm_express_route_circuit.this
}

