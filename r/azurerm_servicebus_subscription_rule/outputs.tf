output "id" {
  description = "returns a string"
  value       = azurerm_servicebus_subscription_rule.this.id
}

output "this" {
  value = azurerm_servicebus_subscription_rule.this
}

