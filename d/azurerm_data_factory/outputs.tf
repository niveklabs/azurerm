output "github_configuration" {
  description = "returns a list of object"
  value       = data.azurerm_data_factory.this.github_configuration
}

output "id" {
  description = "returns a string"
  value       = data.azurerm_data_factory.this.id
}

output "identity" {
  description = "returns a list of object"
  value       = data.azurerm_data_factory.this.identity
}

output "location" {
  description = "returns a string"
  value       = data.azurerm_data_factory.this.location
}

output "tags" {
  description = "returns a map of string"
  value       = data.azurerm_data_factory.this.tags
}

output "vsts_configuration" {
  description = "returns a list of object"
  value       = data.azurerm_data_factory.this.vsts_configuration
}

output "this" {
  value = azurerm_data_factory.this
}

