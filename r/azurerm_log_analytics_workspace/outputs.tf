output "id" {
  description = "returns a string"
  value       = azurerm_log_analytics_workspace.this.id
}

output "portal_url" {
  description = "returns a string"
  value       = azurerm_log_analytics_workspace.this.portal_url
}

output "primary_shared_key" {
  description = "returns a string"
  value       = azurerm_log_analytics_workspace.this.primary_shared_key
  sensitive   = true
}

output "retention_in_days" {
  description = "returns a number"
  value       = azurerm_log_analytics_workspace.this.retention_in_days
}

output "secondary_shared_key" {
  description = "returns a string"
  value       = azurerm_log_analytics_workspace.this.secondary_shared_key
  sensitive   = true
}

output "workspace_id" {
  description = "returns a string"
  value       = azurerm_log_analytics_workspace.this.workspace_id
}

output "this" {
  value = azurerm_log_analytics_workspace.this
}

