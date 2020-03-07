output "id" {
  description = "returns a string"
  value       = data.azurerm_dns_zone.this.id
}

output "max_number_of_record_sets" {
  description = "returns a number"
  value       = data.azurerm_dns_zone.this.max_number_of_record_sets
}

output "name_servers" {
  description = "returns a set of string"
  value       = data.azurerm_dns_zone.this.name_servers
}

output "number_of_record_sets" {
  description = "returns a number"
  value       = data.azurerm_dns_zone.this.number_of_record_sets
}

output "resource_group_name" {
  description = "returns a string"
  value       = data.azurerm_dns_zone.this.resource_group_name
}

output "tags" {
  description = "returns a map of string"
  value       = data.azurerm_dns_zone.this.tags
}

output "this" {
  value = azurerm_dns_zone.this
}

