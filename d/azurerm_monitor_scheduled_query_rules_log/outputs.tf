output "authorized_resource_ids" {
  description = "returns a set of string"
  value       = data.azurerm_monitor_scheduled_query_rules_log.this.authorized_resource_ids
}

output "criteria" {
  description = "returns a set of object"
  value       = data.azurerm_monitor_scheduled_query_rules_log.this.criteria
}

output "data_source_id" {
  description = "returns a string"
  value       = data.azurerm_monitor_scheduled_query_rules_log.this.data_source_id
}

output "description" {
  description = "returns a string"
  value       = data.azurerm_monitor_scheduled_query_rules_log.this.description
}

output "enabled" {
  description = "returns a bool"
  value       = data.azurerm_monitor_scheduled_query_rules_log.this.enabled
}

output "id" {
  description = "returns a string"
  value       = data.azurerm_monitor_scheduled_query_rules_log.this.id
}

output "location" {
  description = "returns a string"
  value       = data.azurerm_monitor_scheduled_query_rules_log.this.location
}

output "tags" {
  description = "returns a map of string"
  value       = data.azurerm_monitor_scheduled_query_rules_log.this.tags
}

output "this" {
  value = azurerm_monitor_scheduled_query_rules_log.this
}

