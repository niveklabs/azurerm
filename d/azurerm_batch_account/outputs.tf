output "account_endpoint" {
  description = "returns a string"
  value       = data.azurerm_batch_account.this.account_endpoint
}

output "id" {
  description = "returns a string"
  value       = data.azurerm_batch_account.this.id
}

output "key_vault_reference" {
  description = "returns a list of object"
  value       = data.azurerm_batch_account.this.key_vault_reference
}

output "location" {
  description = "returns a string"
  value       = data.azurerm_batch_account.this.location
}

output "pool_allocation_mode" {
  description = "returns a string"
  value       = data.azurerm_batch_account.this.pool_allocation_mode
}

output "primary_access_key" {
  description = "returns a string"
  value       = data.azurerm_batch_account.this.primary_access_key
  sensitive   = true
}

output "secondary_access_key" {
  description = "returns a string"
  value       = data.azurerm_batch_account.this.secondary_access_key
  sensitive   = true
}

output "storage_account_id" {
  description = "returns a string"
  value       = data.azurerm_batch_account.this.storage_account_id
}

output "tags" {
  description = "returns a map of string"
  value       = data.azurerm_batch_account.this.tags
}

output "this" {
  value = azurerm_batch_account.this
}

