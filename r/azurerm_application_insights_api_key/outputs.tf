output "api_key" {
  description = "returns a string"
  value       = azurerm_application_insights_api_key.this.api_key
  sensitive   = true
}

output "id" {
  description = "returns a string"
  value       = azurerm_application_insights_api_key.this.id
}

output "this" {
  value = azurerm_application_insights_api_key.this
}

