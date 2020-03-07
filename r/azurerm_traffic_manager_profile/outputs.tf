output "fqdn" {
  description = "returns a string"
  value       = azurerm_traffic_manager_profile.this.fqdn
}

output "id" {
  description = "returns a string"
  value       = azurerm_traffic_manager_profile.this.id
}

output "profile_status" {
  description = "returns a string"
  value       = azurerm_traffic_manager_profile.this.profile_status
}

output "this" {
  value = azurerm_traffic_manager_profile.this
}

