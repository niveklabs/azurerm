output "access_endpoint" {
  description = "returns a string"
  value       = azurerm_logic_app_workflow.this.access_endpoint
}

output "id" {
  description = "returns a string"
  value       = azurerm_logic_app_workflow.this.id
}

output "this" {
  value = azurerm_logic_app_workflow.this
}

