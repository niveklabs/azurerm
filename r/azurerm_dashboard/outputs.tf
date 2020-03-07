output "dashboard_properties" {
  description = "returns a string"
  value       = azurerm_dashboard.this.dashboard_properties
}

output "id" {
  description = "returns a string"
  value       = azurerm_dashboard.this.id
}

output "this" {
  value = azurerm_dashboard.this
}

