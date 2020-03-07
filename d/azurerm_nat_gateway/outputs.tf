output "id" {
  description = "returns a string"
  value       = data.azurerm_nat_gateway.this.id
}

output "idle_timeout_in_minutes" {
  description = "returns a number"
  value       = data.azurerm_nat_gateway.this.idle_timeout_in_minutes
}

output "location" {
  description = "returns a string"
  value       = data.azurerm_nat_gateway.this.location
}

output "public_ip_address_ids" {
  description = "returns a list of string"
  value       = data.azurerm_nat_gateway.this.public_ip_address_ids
}

output "public_ip_prefix_ids" {
  description = "returns a list of string"
  value       = data.azurerm_nat_gateway.this.public_ip_prefix_ids
}

output "resource_guid" {
  description = "returns a string"
  value       = data.azurerm_nat_gateway.this.resource_guid
}

output "sku_name" {
  description = "returns a string"
  value       = data.azurerm_nat_gateway.this.sku_name
}

output "tags" {
  description = "returns a map of string"
  value       = data.azurerm_nat_gateway.this.tags
}

output "zones" {
  description = "returns a list of string"
  value       = data.azurerm_nat_gateway.this.zones
}

output "this" {
  value = azurerm_nat_gateway.this
}

