output "artifacts_storage_account_id" {
  description = "returns a string"
  value       = data.azurerm_dev_test_lab.this.artifacts_storage_account_id
}

output "default_premium_storage_account_id" {
  description = "returns a string"
  value       = data.azurerm_dev_test_lab.this.default_premium_storage_account_id
}

output "default_storage_account_id" {
  description = "returns a string"
  value       = data.azurerm_dev_test_lab.this.default_storage_account_id
}

output "id" {
  description = "returns a string"
  value       = data.azurerm_dev_test_lab.this.id
}

output "key_vault_id" {
  description = "returns a string"
  value       = data.azurerm_dev_test_lab.this.key_vault_id
}

output "location" {
  description = "returns a string"
  value       = data.azurerm_dev_test_lab.this.location
}

output "premium_data_disk_storage_account_id" {
  description = "returns a string"
  value       = data.azurerm_dev_test_lab.this.premium_data_disk_storage_account_id
}

output "storage_type" {
  description = "returns a string"
  value       = data.azurerm_dev_test_lab.this.storage_type
}

output "tags" {
  description = "returns a map of string"
  value       = data.azurerm_dev_test_lab.this.tags
}

output "unique_identifier" {
  description = "returns a string"
  value       = data.azurerm_dev_test_lab.this.unique_identifier
}

output "this" {
  value = azurerm_dev_test_lab.this
}

