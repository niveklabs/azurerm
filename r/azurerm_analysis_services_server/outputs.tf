output "id" {
  description = "returns a string"
  value       = azurerm_analysis_services_server.this.id
}

output "querypool_connection_mode" {
  description = "returns a string"
  value       = azurerm_analysis_services_server.this.querypool_connection_mode
}

output "server_full_name" {
  description = "returns a string"
  value       = azurerm_analysis_services_server.this.server_full_name
}

output "this" {
  value = azurerm_analysis_services_server.this
}

