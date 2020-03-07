output "hostname" {
  description = "returns a string"
  value       = azurerm_signalr_service.this.hostname
}

output "id" {
  description = "returns a string"
  value       = azurerm_signalr_service.this.id
}

output "ip_address" {
  description = "returns a string"
  value       = azurerm_signalr_service.this.ip_address
}

output "primary_access_key" {
  description = "returns a string"
  value       = azurerm_signalr_service.this.primary_access_key
  sensitive   = true
}

output "primary_connection_string" {
  description = "returns a string"
  value       = azurerm_signalr_service.this.primary_connection_string
  sensitive   = true
}

output "public_port" {
  description = "returns a number"
  value       = azurerm_signalr_service.this.public_port
}

output "secondary_access_key" {
  description = "returns a string"
  value       = azurerm_signalr_service.this.secondary_access_key
  sensitive   = true
}

output "secondary_connection_string" {
  description = "returns a string"
  value       = azurerm_signalr_service.this.secondary_connection_string
  sensitive   = true
}

output "server_port" {
  description = "returns a number"
  value       = azurerm_signalr_service.this.server_port
}

output "this" {
  value = azurerm_signalr_service.this
}

