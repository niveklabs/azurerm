output "id" {
  description = "returns a string"
  value       = data.azurerm_availability_set.this.id
}

output "location" {
  description = "returns a string"
  value       = data.azurerm_availability_set.this.location
}

output "managed" {
  description = "returns a bool"
  value       = data.azurerm_availability_set.this.managed
}

output "platform_fault_domain_count" {
  description = "returns a string"
  value       = data.azurerm_availability_set.this.platform_fault_domain_count
}

output "platform_update_domain_count" {
  description = "returns a string"
  value       = data.azurerm_availability_set.this.platform_update_domain_count
}

output "tags" {
  description = "returns a map of string"
  value       = data.azurerm_availability_set.this.tags
}

output "this" {
  value = azurerm_availability_set.this
}

