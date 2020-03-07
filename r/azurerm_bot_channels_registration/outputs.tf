output "developer_app_insights_api_key" {
  description = "returns a string"
  value       = azurerm_bot_channels_registration.this.developer_app_insights_api_key
  sensitive   = true
}

output "developer_app_insights_application_id" {
  description = "returns a string"
  value       = azurerm_bot_channels_registration.this.developer_app_insights_application_id
}

output "developer_app_insights_key" {
  description = "returns a string"
  value       = azurerm_bot_channels_registration.this.developer_app_insights_key
}

output "display_name" {
  description = "returns a string"
  value       = azurerm_bot_channels_registration.this.display_name
}

output "id" {
  description = "returns a string"
  value       = azurerm_bot_channels_registration.this.id
}

output "this" {
  value = azurerm_bot_channels_registration.this
}

