output "container_access_type" {
  description = "returns a string"
  value       = data.azurerm_storage_container.this.container_access_type
}

output "has_immutability_policy" {
  description = "returns a bool"
  value       = data.azurerm_storage_container.this.has_immutability_policy
}

output "has_legal_hold" {
  description = "returns a bool"
  value       = data.azurerm_storage_container.this.has_legal_hold
}

output "id" {
  description = "returns a string"
  value       = data.azurerm_storage_container.this.id
}

output "metadata" {
  description = "returns a map of string"
  value       = data.azurerm_storage_container.this.metadata
}

output "this" {
  value = azurerm_storage_container.this
}

