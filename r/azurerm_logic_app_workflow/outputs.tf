output "access_endpoint" {
  description = "returns a string"
  value       = azurerm_logic_app_workflow.this.access_endpoint
}

output "connector_endpoint_ip_addresses" {
  description = "returns a list of string"
  value       = azurerm_logic_app_workflow.this.connector_endpoint_ip_addresses
}

output "connector_outbound_ip_addresses" {
  description = "returns a list of string"
  value       = azurerm_logic_app_workflow.this.connector_outbound_ip_addresses
}

output "id" {
  description = "returns a string"
  value       = azurerm_logic_app_workflow.this.id
}

output "workflow_endpoint_ip_addresses" {
  description = "returns a list of string"
  value       = azurerm_logic_app_workflow.this.workflow_endpoint_ip_addresses
}

output "workflow_outbound_ip_addresses" {
  description = "returns a list of string"
  value       = azurerm_logic_app_workflow.this.workflow_outbound_ip_addresses
}

output "this" {
  value = azurerm_logic_app_workflow.this
}

