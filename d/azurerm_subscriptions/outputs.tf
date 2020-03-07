output "id" {
  description = "returns a string"
  value       = data.azurerm_subscriptions.this.id
}

output "subscriptions" {
  description = "returns a list of object"
  value       = data.azurerm_subscriptions.this.subscriptions
}

output "this" {
  value = azurerm_subscriptions.this
}

