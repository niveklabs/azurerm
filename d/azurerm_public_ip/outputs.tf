output "allocation_method" {
  description = "returns a string"
  value       = data.azurerm_public_ip.this.allocation_method
}

output "domain_name_label" {
  description = "returns a string"
  value       = data.azurerm_public_ip.this.domain_name_label
}

output "fqdn" {
  description = "returns a string"
  value       = data.azurerm_public_ip.this.fqdn
}

output "id" {
  description = "returns a string"
  value       = data.azurerm_public_ip.this.id
}

output "idle_timeout_in_minutes" {
  description = "returns a number"
  value       = data.azurerm_public_ip.this.idle_timeout_in_minutes
}

output "ip_address" {
  description = "returns a string"
  value       = data.azurerm_public_ip.this.ip_address
}

output "ip_version" {
  description = "returns a string"
  value       = data.azurerm_public_ip.this.ip_version
}

output "location" {
  description = "returns a string"
  value       = data.azurerm_public_ip.this.location
}

output "reverse_fqdn" {
  description = "returns a string"
  value       = data.azurerm_public_ip.this.reverse_fqdn
}

output "sku" {
  description = "returns a string"
  value       = data.azurerm_public_ip.this.sku
}

output "zones" {
  description = "returns a list of string"
  value       = data.azurerm_public_ip.this.zones
}

output "this" {
  value = azurerm_public_ip.this
}

