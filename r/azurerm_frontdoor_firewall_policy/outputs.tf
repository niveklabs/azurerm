output "frontend_endpoint_ids" {
  description = "returns a list of string"
  value       = azurerm_frontdoor_firewall_policy.this.frontend_endpoint_ids
}

output "id" {
  description = "returns a string"
  value       = azurerm_frontdoor_firewall_policy.this.id
}

output "location" {
  description = "returns a string"
  value       = azurerm_frontdoor_firewall_policy.this.location
}

output "this" {
  value = azurerm_frontdoor_firewall_policy.this
}

