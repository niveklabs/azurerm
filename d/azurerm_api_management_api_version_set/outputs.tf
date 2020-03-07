output "description" {
  description = "returns a string"
  value       = data.azurerm_api_management_api_version_set.this.description
}

output "display_name" {
  description = "returns a string"
  value       = data.azurerm_api_management_api_version_set.this.display_name
}

output "id" {
  description = "returns a string"
  value       = data.azurerm_api_management_api_version_set.this.id
}

output "version_header_name" {
  description = "returns a string"
  value       = data.azurerm_api_management_api_version_set.this.version_header_name
}

output "version_query_name" {
  description = "returns a string"
  value       = data.azurerm_api_management_api_version_set.this.version_query_name
}

output "versioning_scheme" {
  description = "returns a string"
  value       = data.azurerm_api_management_api_version_set.this.versioning_scheme
}

output "this" {
  value = azurerm_api_management_api_version_set.this
}

