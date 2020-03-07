output "id" {
  description = "returns a string"
  value       = azurerm_network_watcher_flow_log.this.id
}

output "version" {
  description = "returns a number"
  value       = azurerm_network_watcher_flow_log.this.version
}

output "this" {
  value = azurerm_network_watcher_flow_log.this
}

