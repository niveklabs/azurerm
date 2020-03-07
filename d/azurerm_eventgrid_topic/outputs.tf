output "endpoint" {
  description = "returns a string"
  value       = data.azurerm_eventgrid_topic.this.endpoint
}

output "id" {
  description = "returns a string"
  value       = data.azurerm_eventgrid_topic.this.id
}

output "location" {
  description = "returns a string"
  value       = data.azurerm_eventgrid_topic.this.location
}

output "primary_access_key" {
  description = "returns a string"
  value       = data.azurerm_eventgrid_topic.this.primary_access_key
  sensitive   = true
}

output "secondary_access_key" {
  description = "returns a string"
  value       = data.azurerm_eventgrid_topic.this.secondary_access_key
  sensitive   = true
}

output "this" {
  value = azurerm_eventgrid_topic.this
}

