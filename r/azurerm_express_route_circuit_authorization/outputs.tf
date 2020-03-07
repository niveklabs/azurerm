output "authorization_key" {
  description = "returns a string"
  value       = azurerm_express_route_circuit_authorization.this.authorization_key
  sensitive   = true
}

output "authorization_use_status" {
  description = "returns a string"
  value       = azurerm_express_route_circuit_authorization.this.authorization_use_status
}

output "id" {
  description = "returns a string"
  value       = azurerm_express_route_circuit_authorization.this.id
}

output "this" {
  value = azurerm_express_route_circuit_authorization.this
}

