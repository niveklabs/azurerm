output "id" {
  description = "returns a string"
  value       = data.azurerm_monitor_diagnostic_categories.this.id
}

output "logs" {
  description = "returns a set of string"
  value       = data.azurerm_monitor_diagnostic_categories.this.logs
}

output "metrics" {
  description = "returns a set of string"
  value       = data.azurerm_monitor_diagnostic_categories.this.metrics
}

output "this" {
  value = azurerm_monitor_diagnostic_categories.this
}

