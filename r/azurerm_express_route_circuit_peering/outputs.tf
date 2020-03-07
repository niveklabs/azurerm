output "azure_asn" {
  description = "returns a number"
  value       = azurerm_express_route_circuit_peering.this.azure_asn
}

output "id" {
  description = "returns a string"
  value       = azurerm_express_route_circuit_peering.this.id
}

output "peer_asn" {
  description = "returns a number"
  value       = azurerm_express_route_circuit_peering.this.peer_asn
}

output "primary_azure_port" {
  description = "returns a string"
  value       = azurerm_express_route_circuit_peering.this.primary_azure_port
}

output "secondary_azure_port" {
  description = "returns a string"
  value       = azurerm_express_route_circuit_peering.this.secondary_azure_port
}

output "this" {
  value = azurerm_express_route_circuit_peering.this
}

