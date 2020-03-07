output "id" {
  description = "returns a string"
  value       = data.azurerm_dedicated_host.this.id
}

output "location" {
  description = "returns a string"
  value       = data.azurerm_dedicated_host.this.location
}

output "tags" {
  description = "returns a map of string"
  value       = data.azurerm_dedicated_host.this.tags
}

output "this" {
  value = azurerm_dedicated_host.this
}

