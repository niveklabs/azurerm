output "id" {
  description = "returns a string"
  value       = data.azurerm_eventhub_namespace_authorization_rule.this.id
}

output "listen" {
  description = "returns a bool"
  value       = data.azurerm_eventhub_namespace_authorization_rule.this.listen
}

output "manage" {
  description = "returns a bool"
  value       = data.azurerm_eventhub_namespace_authorization_rule.this.manage
}

output "primary_connection_string" {
  description = "returns a string"
  value       = data.azurerm_eventhub_namespace_authorization_rule.this.primary_connection_string
  sensitive   = true
}

output "primary_key" {
  description = "returns a string"
  value       = data.azurerm_eventhub_namespace_authorization_rule.this.primary_key
  sensitive   = true
}

output "secondary_connection_string" {
  description = "returns a string"
  value       = data.azurerm_eventhub_namespace_authorization_rule.this.secondary_connection_string
  sensitive   = true
}

output "secondary_key" {
  description = "returns a string"
  value       = data.azurerm_eventhub_namespace_authorization_rule.this.secondary_key
  sensitive   = true
}

output "send" {
  description = "returns a bool"
  value       = data.azurerm_eventhub_namespace_authorization_rule.this.send
}

output "this" {
  value = azurerm_eventhub_namespace_authorization_rule.this
}

