output "id" {
  description = "returns a string"
  value       = data.azurerm_private_link_service_endpoint_connections.this.id
}

output "location" {
  description = "returns a string"
  value       = data.azurerm_private_link_service_endpoint_connections.this.location
}

output "private_endpoint_connections" {
  description = "returns a list of object"
  value       = data.azurerm_private_link_service_endpoint_connections.this.private_endpoint_connections
}

output "service_name" {
  description = "returns a string"
  value       = data.azurerm_private_link_service_endpoint_connections.this.service_name
}

output "this" {
  value = azurerm_private_link_service_endpoint_connections.this
}

