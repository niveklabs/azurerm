output "id" {
  description = "returns a string"
  value       = data.azurerm_firewall.this.id
}

output "ip_configuration" {
  description = "returns a list of object"
  value       = data.azurerm_firewall.this.ip_configuration
}

output "location" {
  description = "returns a string"
  value       = data.azurerm_firewall.this.location
}

output "tags" {
  description = "returns a map of string"
  value       = data.azurerm_firewall.this.tags
}

output "this" {
  value = azurerm_firewall.this
}

