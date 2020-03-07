output "id" {
  description = "returns a string"
  value       = azurerm_template_deployment.this.id
}

output "outputs" {
  description = "returns a map of string"
  value       = azurerm_template_deployment.this.outputs
}

output "template_body" {
  description = "returns a string"
  value       = azurerm_template_deployment.this.template_body
}

output "this" {
  value = azurerm_template_deployment.this
}

