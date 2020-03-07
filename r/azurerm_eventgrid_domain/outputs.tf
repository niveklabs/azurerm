output "endpoint" {
  description = "returns a string"
  value       = azurerm_eventgrid_domain.this.endpoint
}

output "id" {
  description = "returns a string"
  value       = azurerm_eventgrid_domain.this.id
}

output "primary_access_key" {
  description = "returns a string"
  value       = azurerm_eventgrid_domain.this.primary_access_key
  sensitive   = true
}

output "secondary_access_key" {
  description = "returns a string"
  value       = azurerm_eventgrid_domain.this.secondary_access_key
  sensitive   = true
}

output "this" {
  value = azurerm_eventgrid_domain.this
}

