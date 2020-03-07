output "arm_role_receiver" {
  description = "returns a list of object"
  value       = data.azurerm_monitor_action_group.this.arm_role_receiver
}

output "automation_runbook_receiver" {
  description = "returns a list of object"
  value       = data.azurerm_monitor_action_group.this.automation_runbook_receiver
}

output "azure_app_push_receiver" {
  description = "returns a list of object"
  value       = data.azurerm_monitor_action_group.this.azure_app_push_receiver
}

output "azure_function_receiver" {
  description = "returns a list of object"
  value       = data.azurerm_monitor_action_group.this.azure_function_receiver
}

output "email_receiver" {
  description = "returns a list of object"
  value       = data.azurerm_monitor_action_group.this.email_receiver
}

output "enabled" {
  description = "returns a bool"
  value       = data.azurerm_monitor_action_group.this.enabled
}

output "id" {
  description = "returns a string"
  value       = data.azurerm_monitor_action_group.this.id
}

output "itsm_receiver" {
  description = "returns a list of object"
  value       = data.azurerm_monitor_action_group.this.itsm_receiver
}

output "logic_app_receiver" {
  description = "returns a list of object"
  value       = data.azurerm_monitor_action_group.this.logic_app_receiver
}

output "short_name" {
  description = "returns a string"
  value       = data.azurerm_monitor_action_group.this.short_name
}

output "sms_receiver" {
  description = "returns a list of object"
  value       = data.azurerm_monitor_action_group.this.sms_receiver
}

output "voice_receiver" {
  description = "returns a list of object"
  value       = data.azurerm_monitor_action_group.this.voice_receiver
}

output "webhook_receiver" {
  description = "returns a list of object"
  value       = data.azurerm_monitor_action_group.this.webhook_receiver
}

output "this" {
  value = azurerm_monitor_action_group.this
}

