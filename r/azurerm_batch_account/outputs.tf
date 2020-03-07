output "account_endpoint" {
  description = "returns a string"
  value       = azurerm_batch_account.this.account_endpoint
}

output "id" {
  description = "returns a string"
  value       = azurerm_batch_account.this.id
}

output "primary_access_key" {
  description = "returns a string"
  value       = azurerm_batch_account.this.primary_access_key
  sensitive   = true
}

output "secondary_access_key" {
  description = "returns a string"
  value       = azurerm_batch_account.this.secondary_access_key
  sensitive   = true
}

output "storage_account_id" {
  description = "returns a string"
  value       = azurerm_batch_account.this.storage_account_id
}

output "this" {
  value = azurerm_batch_account.this
}

