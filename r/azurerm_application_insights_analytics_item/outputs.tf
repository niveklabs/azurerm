output "id" {
  description = "returns a string"
  value       = azurerm_application_insights_analytics_item.this.id
}

output "time_created" {
  description = "returns a string"
  value       = azurerm_application_insights_analytics_item.this.time_created
}

output "time_modified" {
  description = "returns a string"
  value       = azurerm_application_insights_analytics_item.this.time_modified
}

output "version" {
  description = "returns a string"
  value       = azurerm_application_insights_analytics_item.this.version
}

output "this" {
  value = azurerm_application_insights_analytics_item.this
}

