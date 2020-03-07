output "id" {
  description = "returns a string"
  value       = azurerm_eventgrid_event_subscription.this.id
}

output "included_event_types" {
  description = "returns a list of string"
  value       = azurerm_eventgrid_event_subscription.this.included_event_types
}

output "topic_name" {
  description = "returns a string"
  value       = azurerm_eventgrid_event_subscription.this.topic_name
}

output "this" {
  value = azurerm_eventgrid_event_subscription.this
}

