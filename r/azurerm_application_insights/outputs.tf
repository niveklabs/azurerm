output "app_id" {
  description = "returns a string"
  value       = azurerm_application_insights.this.app_id
}

output "daily_data_cap_in_gb" {
  description = "returns a number"
  value       = azurerm_application_insights.this.daily_data_cap_in_gb
}

output "daily_data_cap_notifications_disabled" {
  description = "returns a bool"
  value       = azurerm_application_insights.this.daily_data_cap_notifications_disabled
}

output "id" {
  description = "returns a string"
  value       = azurerm_application_insights.this.id
}

output "instrumentation_key" {
  description = "returns a string"
  value       = azurerm_application_insights.this.instrumentation_key
  sensitive   = true
}

output "this" {
  value = azurerm_application_insights.this
}

