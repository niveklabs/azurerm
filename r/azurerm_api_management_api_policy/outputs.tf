output "id" {
  description = "returns a string"
  value       = azurerm_api_management_api_policy.this.id
}

output "xml_content" {
  description = "returns a string"
  value       = azurerm_api_management_api_policy.this.xml_content
}

output "this" {
  value = azurerm_api_management_api_policy.this
}

