output "action" {
  description = "returns a set of object"
  value       = data.azurerm_monitor_scheduled_query_rules_alert.this.action
}

output "authorized_resource_ids" {
  description = "returns a set of string"
  value       = data.azurerm_monitor_scheduled_query_rules_alert.this.authorized_resource_ids
}

output "data_source_id" {
  description = "returns a string"
  value       = data.azurerm_monitor_scheduled_query_rules_alert.this.data_source_id
}

output "description" {
  description = "returns a string"
  value       = data.azurerm_monitor_scheduled_query_rules_alert.this.description
}

output "enabled" {
  description = "returns a bool"
  value       = data.azurerm_monitor_scheduled_query_rules_alert.this.enabled
}

output "frequency" {
  description = "returns a number"
  value       = data.azurerm_monitor_scheduled_query_rules_alert.this.frequency
}

output "id" {
  description = "returns a string"
  value       = data.azurerm_monitor_scheduled_query_rules_alert.this.id
}

output "location" {
  description = "returns a string"
  value       = data.azurerm_monitor_scheduled_query_rules_alert.this.location
}

output "query" {
  description = "returns a string"
  value       = data.azurerm_monitor_scheduled_query_rules_alert.this.query
}

output "query_type" {
  description = "returns a string"
  value       = data.azurerm_monitor_scheduled_query_rules_alert.this.query_type
}

output "severity" {
  description = "returns a number"
  value       = data.azurerm_monitor_scheduled_query_rules_alert.this.severity
}

output "tags" {
  description = "returns a map of string"
  value       = data.azurerm_monitor_scheduled_query_rules_alert.this.tags
}

output "throttling" {
  description = "returns a number"
  value       = data.azurerm_monitor_scheduled_query_rules_alert.this.throttling
}

output "time_window" {
  description = "returns a number"
  value       = data.azurerm_monitor_scheduled_query_rules_alert.this.time_window
}

output "trigger" {
  description = "returns a set of object"
  value       = data.azurerm_monitor_scheduled_query_rules_alert.this.trigger
}

output "this" {
  value = azurerm_monitor_scheduled_query_rules_alert.this
}

