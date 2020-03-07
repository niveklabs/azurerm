output "id" {
  description = "returns a string"
  value       = data.azurerm_log_analytics_workspace.this.id
}

output "location" {
  description = "returns a string"
  value       = data.azurerm_log_analytics_workspace.this.location
}

output "portal_url" {
  description = "returns a string"
  value       = data.azurerm_log_analytics_workspace.this.portal_url
}

output "primary_shared_key" {
  description = "returns a string"
  value       = data.azurerm_log_analytics_workspace.this.primary_shared_key
  sensitive   = true
}

output "retention_in_days" {
  description = "returns a number"
  value       = data.azurerm_log_analytics_workspace.this.retention_in_days
}

output "secondary_shared_key" {
  description = "returns a string"
  value       = data.azurerm_log_analytics_workspace.this.secondary_shared_key
  sensitive   = true
}

output "sku" {
  description = "returns a string"
  value       = data.azurerm_log_analytics_workspace.this.sku
}

output "tags" {
  description = "returns a map of string"
  value       = data.azurerm_log_analytics_workspace.this.tags
}

output "workspace_id" {
  description = "returns a string"
  value       = data.azurerm_log_analytics_workspace.this.workspace_id
}

output "this" {
  value = azurerm_log_analytics_workspace.this
}

