output "id" {
  description = "returns a string"
  value       = azurerm_application_insights_web_test.this.id
}

output "synthetic_monitor_id" {
  description = "returns a string"
  value       = azurerm_application_insights_web_test.this.synthetic_monitor_id
}

output "this" {
  value = azurerm_application_insights_web_test.this
}

