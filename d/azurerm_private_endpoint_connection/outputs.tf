output "id" {
  description = "returns a string"
  value       = data.azurerm_private_endpoint_connection.this.id
}

output "location" {
  description = "returns a string"
  value       = data.azurerm_private_endpoint_connection.this.location
}

output "private_service_connection" {
  description = "returns a list of object"
  value       = data.azurerm_private_endpoint_connection.this.private_service_connection
}

output "this" {
  value = azurerm_private_endpoint_connection.this
}

