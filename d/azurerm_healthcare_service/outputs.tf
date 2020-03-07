output "access_policy_object_ids" {
  description = "returns a set of string"
  value       = data.azurerm_healthcare_service.this.access_policy_object_ids
}

output "authentication_configuration" {
  description = "returns a list of object"
  value       = data.azurerm_healthcare_service.this.authentication_configuration
}

output "cors_configuration" {
  description = "returns a list of object"
  value       = data.azurerm_healthcare_service.this.cors_configuration
}

output "cosmosdb_throughput" {
  description = "returns a number"
  value       = data.azurerm_healthcare_service.this.cosmosdb_throughput
}

output "id" {
  description = "returns a string"
  value       = data.azurerm_healthcare_service.this.id
}

output "kind" {
  description = "returns a string"
  value       = data.azurerm_healthcare_service.this.kind
}

output "tags" {
  description = "returns a map of string"
  value       = data.azurerm_healthcare_service.this.tags
}

output "this" {
  value = azurerm_healthcare_service.this
}

