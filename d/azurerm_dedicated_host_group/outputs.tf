output "id" {
  description = "returns a string"
  value       = data.azurerm_dedicated_host_group.this.id
}

output "location" {
  description = "returns a string"
  value       = data.azurerm_dedicated_host_group.this.location
}

output "platform_fault_domain_count" {
  description = "returns a number"
  value       = data.azurerm_dedicated_host_group.this.platform_fault_domain_count
}

output "tags" {
  description = "returns a map of string"
  value       = data.azurerm_dedicated_host_group.this.tags
}

output "zones" {
  description = "returns a list of string"
  value       = data.azurerm_dedicated_host_group.this.zones
}

output "this" {
  value = azurerm_dedicated_host_group.this
}

