output "id" {
  description = "returns a string"
  value       = data.azurerm_traffic_manager_geographical_location.this.id
}

output "this" {
  value = azurerm_traffic_manager_geographical_location.this
}

