output "app_id" {
  description = "returns a string"
  value       = data.azurerm_application_insights.this.app_id
}

output "application_type" {
  description = "returns a string"
  value       = data.azurerm_application_insights.this.application_type
}

output "id" {
  description = "returns a string"
  value       = data.azurerm_application_insights.this.id
}

output "instrumentation_key" {
  description = "returns a string"
  value       = data.azurerm_application_insights.this.instrumentation_key
}

output "location" {
  description = "returns a string"
  value       = data.azurerm_application_insights.this.location
}

output "retention_in_days" {
  description = "returns a number"
  value       = data.azurerm_application_insights.this.retention_in_days
}

output "tags" {
  description = "returns a map of string"
  value       = data.azurerm_application_insights.this.tags
}

output "this" {
  value = azurerm_application_insights.this
}

