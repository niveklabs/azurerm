output "id" {
  description = "returns a string"
  value       = data.azurerm_private_dns_zone.this.id
}

output "max_number_of_record_sets" {
  description = "returns a number"
  value       = data.azurerm_private_dns_zone.this.max_number_of_record_sets
}

output "max_number_of_virtual_network_links" {
  description = "returns a number"
  value       = data.azurerm_private_dns_zone.this.max_number_of_virtual_network_links
}

output "max_number_of_virtual_network_links_with_registration" {
  description = "returns a number"
  value       = data.azurerm_private_dns_zone.this.max_number_of_virtual_network_links_with_registration
}

output "number_of_record_sets" {
  description = "returns a number"
  value       = data.azurerm_private_dns_zone.this.number_of_record_sets
}

output "resource_group_name" {
  description = "returns a string"
  value       = data.azurerm_private_dns_zone.this.resource_group_name
}

output "tags" {
  description = "returns a map of string"
  value       = data.azurerm_private_dns_zone.this.tags
}

output "this" {
  value = azurerm_private_dns_zone.this
}

