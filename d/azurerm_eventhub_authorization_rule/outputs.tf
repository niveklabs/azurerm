output "id" {
  description = "returns a string"
  value       = data.azurerm_eventhub_authorization_rule.this.id
}

output "location" {
  description = "returns a string"
  value       = data.azurerm_eventhub_authorization_rule.this.location
}

output "primary_connection_string" {
  description = "returns a string"
  value       = data.azurerm_eventhub_authorization_rule.this.primary_connection_string
  sensitive   = true
}

output "primary_key" {
  description = "returns a string"
  value       = data.azurerm_eventhub_authorization_rule.this.primary_key
  sensitive   = true
}

output "secondary_connection_string" {
  description = "returns a string"
  value       = data.azurerm_eventhub_authorization_rule.this.secondary_connection_string
  sensitive   = true
}

output "secondary_key" {
  description = "returns a string"
  value       = data.azurerm_eventhub_authorization_rule.this.secondary_key
  sensitive   = true
}

output "this" {
  value = azurerm_eventhub_authorization_rule.this
}

