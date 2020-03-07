output "endpoint_location" {
  description = "returns a string"
  value       = azurerm_traffic_manager_endpoint.this.endpoint_location
}

output "endpoint_monitor_status" {
  description = "returns a string"
  value       = azurerm_traffic_manager_endpoint.this.endpoint_monitor_status
}

output "endpoint_status" {
  description = "returns a string"
  value       = azurerm_traffic_manager_endpoint.this.endpoint_status
}

output "id" {
  description = "returns a string"
  value       = azurerm_traffic_manager_endpoint.this.id
}

output "priority" {
  description = "returns a number"
  value       = azurerm_traffic_manager_endpoint.this.priority
}

output "target" {
  description = "returns a string"
  value       = azurerm_traffic_manager_endpoint.this.target
}

output "weight" {
  description = "returns a number"
  value       = azurerm_traffic_manager_endpoint.this.weight
}

output "this" {
  value = azurerm_traffic_manager_endpoint.this
}

