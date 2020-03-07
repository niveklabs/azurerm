output "categories" {
  description = "returns a list of string"
  value       = data.azurerm_monitor_log_profile.this.categories
}

output "id" {
  description = "returns a string"
  value       = data.azurerm_monitor_log_profile.this.id
}

output "locations" {
  description = "returns a list of string"
  value       = data.azurerm_monitor_log_profile.this.locations
}

output "retention_policy" {
  description = "returns a list of object"
  value       = data.azurerm_monitor_log_profile.this.retention_policy
}

output "servicebus_rule_id" {
  description = "returns a string"
  value       = data.azurerm_monitor_log_profile.this.servicebus_rule_id
}

output "storage_account_id" {
  description = "returns a string"
  value       = data.azurerm_monitor_log_profile.this.storage_account_id
}

output "this" {
  value = azurerm_monitor_log_profile.this
}

