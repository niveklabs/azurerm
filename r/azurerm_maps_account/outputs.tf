output "id" {
  description = "returns a string"
  value       = azurerm_maps_account.this.id
}

output "primary_access_key" {
  description = "returns a string"
  value       = azurerm_maps_account.this.primary_access_key
  sensitive   = true
}

output "secondary_access_key" {
  description = "returns a string"
  value       = azurerm_maps_account.this.secondary_access_key
  sensitive   = true
}

output "x_ms_client_id" {
  description = "returns a string"
  value       = azurerm_maps_account.this.x_ms_client_id
}

output "this" {
  value = azurerm_maps_account.this
}

