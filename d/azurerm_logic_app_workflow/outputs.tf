output "access_endpoint" {
  description = "returns a string"
  value       = data.azurerm_logic_app_workflow.this.access_endpoint
}

output "connector_endpoint_ip_addresses" {
  description = "returns a list of string"
  value       = data.azurerm_logic_app_workflow.this.connector_endpoint_ip_addresses
}

output "connector_outbound_ip_addresses" {
  description = "returns a list of string"
  value       = data.azurerm_logic_app_workflow.this.connector_outbound_ip_addresses
}

output "id" {
  description = "returns a string"
  value       = data.azurerm_logic_app_workflow.this.id
}

output "location" {
  description = "returns a string"
  value       = data.azurerm_logic_app_workflow.this.location
}

output "parameters" {
  description = "returns a map of string"
  value       = data.azurerm_logic_app_workflow.this.parameters
}

output "tags" {
  description = "returns a map of string"
  value       = data.azurerm_logic_app_workflow.this.tags
}

output "workflow_endpoint_ip_addresses" {
  description = "returns a list of string"
  value       = data.azurerm_logic_app_workflow.this.workflow_endpoint_ip_addresses
}

output "workflow_outbound_ip_addresses" {
  description = "returns a list of string"
  value       = data.azurerm_logic_app_workflow.this.workflow_outbound_ip_addresses
}

output "workflow_schema" {
  description = "returns a string"
  value       = data.azurerm_logic_app_workflow.this.workflow_schema
}

output "workflow_version" {
  description = "returns a string"
  value       = data.azurerm_logic_app_workflow.this.workflow_version
}

output "this" {
  value = azurerm_logic_app_workflow.this
}

