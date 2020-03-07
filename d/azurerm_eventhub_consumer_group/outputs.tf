output "id" {
  description = "returns a string"
  value       = data.azurerm_eventhub_consumer_group.this.id
}

output "location" {
  description = "returns a string"
  value       = data.azurerm_eventhub_consumer_group.this.location
}

output "user_metadata" {
  description = "returns a string"
  value       = data.azurerm_eventhub_consumer_group.this.user_metadata
}

output "this" {
  value = azurerm_eventhub_consumer_group.this
}

