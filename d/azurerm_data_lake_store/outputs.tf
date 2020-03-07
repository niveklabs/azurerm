output "encryption_state" {
  description = "returns a string"
  value       = data.azurerm_data_lake_store.this.encryption_state
}

output "encryption_type" {
  description = "returns a string"
  value       = data.azurerm_data_lake_store.this.encryption_type
}

output "firewall_allow_azure_ips" {
  description = "returns a string"
  value       = data.azurerm_data_lake_store.this.firewall_allow_azure_ips
}

output "firewall_state" {
  description = "returns a string"
  value       = data.azurerm_data_lake_store.this.firewall_state
}

output "id" {
  description = "returns a string"
  value       = data.azurerm_data_lake_store.this.id
}

output "location" {
  description = "returns a string"
  value       = data.azurerm_data_lake_store.this.location
}

output "tags" {
  description = "returns a map of string"
  value       = data.azurerm_data_lake_store.this.tags
}

output "tier" {
  description = "returns a string"
  value       = data.azurerm_data_lake_store.this.tier
}

output "this" {
  value = azurerm_data_lake_store.this
}

