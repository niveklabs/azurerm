output "id" {
  description = "returns a string"
  value       = azurerm_log_analytics_linked_service.this.id
}

output "name" {
  description = "returns a string"
  value       = azurerm_log_analytics_linked_service.this.name
}

output "this" {
  value = azurerm_log_analytics_linked_service.this
}

