output "id" {
  description = "returns a string"
  value       = data.azurerm_network_watcher.this.id
}

output "location" {
  description = "returns a string"
  value       = data.azurerm_network_watcher.this.location
}

output "tags" {
  description = "returns a map of string"
  value       = data.azurerm_network_watcher.this.tags
}

output "this" {
  value = azurerm_network_watcher.this
}

