output "has_immutability_policy" {
  description = "returns a bool"
  value       = azurerm_storage_container.this.has_immutability_policy
}

output "has_legal_hold" {
  description = "returns a bool"
  value       = azurerm_storage_container.this.has_legal_hold
}

output "id" {
  description = "returns a string"
  value       = azurerm_storage_container.this.id
}

output "metadata" {
  description = "returns a map of string"
  value       = azurerm_storage_container.this.metadata
}

output "this" {
  value = azurerm_storage_container.this
}

