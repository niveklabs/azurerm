output "id" {
  description = "returns a string"
  value       = azurerm_servicebus_topic_authorization_rule.this.id
}

output "primary_connection_string" {
  description = "returns a string"
  value       = azurerm_servicebus_topic_authorization_rule.this.primary_connection_string
  sensitive   = true
}

output "primary_key" {
  description = "returns a string"
  value       = azurerm_servicebus_topic_authorization_rule.this.primary_key
  sensitive   = true
}

output "secondary_connection_string" {
  description = "returns a string"
  value       = azurerm_servicebus_topic_authorization_rule.this.secondary_connection_string
  sensitive   = true
}

output "secondary_key" {
  description = "returns a string"
  value       = azurerm_servicebus_topic_authorization_rule.this.secondary_key
  sensitive   = true
}

output "this" {
  value = azurerm_servicebus_topic_authorization_rule.this
}

