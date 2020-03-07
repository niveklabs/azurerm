output "id" {
  description = "returns a string"
  value       = data.azurerm_iothub_shared_access_policy.this.id
}

output "primary_connection_string" {
  description = "returns a string"
  value       = data.azurerm_iothub_shared_access_policy.this.primary_connection_string
  sensitive   = true
}

output "primary_key" {
  description = "returns a string"
  value       = data.azurerm_iothub_shared_access_policy.this.primary_key
  sensitive   = true
}

output "secondary_connection_string" {
  description = "returns a string"
  value       = data.azurerm_iothub_shared_access_policy.this.secondary_connection_string
  sensitive   = true
}

output "secondary_key" {
  description = "returns a string"
  value       = data.azurerm_iothub_shared_access_policy.this.secondary_key
  sensitive   = true
}

output "this" {
  value = azurerm_iothub_shared_access_policy.this
}

