output "access_tier" {
  description = "returns a string"
  value       = azurerm_storage_account.this.access_tier
}

output "id" {
  description = "returns a string"
  value       = azurerm_storage_account.this.id
}

output "primary_access_key" {
  description = "returns a string"
  value       = azurerm_storage_account.this.primary_access_key
  sensitive   = true
}

output "primary_blob_connection_string" {
  description = "returns a string"
  value       = azurerm_storage_account.this.primary_blob_connection_string
  sensitive   = true
}

output "primary_blob_endpoint" {
  description = "returns a string"
  value       = azurerm_storage_account.this.primary_blob_endpoint
}

output "primary_blob_host" {
  description = "returns a string"
  value       = azurerm_storage_account.this.primary_blob_host
}

output "primary_connection_string" {
  description = "returns a string"
  value       = azurerm_storage_account.this.primary_connection_string
  sensitive   = true
}

output "primary_dfs_endpoint" {
  description = "returns a string"
  value       = azurerm_storage_account.this.primary_dfs_endpoint
}

output "primary_dfs_host" {
  description = "returns a string"
  value       = azurerm_storage_account.this.primary_dfs_host
}

output "primary_file_endpoint" {
  description = "returns a string"
  value       = azurerm_storage_account.this.primary_file_endpoint
}

output "primary_file_host" {
  description = "returns a string"
  value       = azurerm_storage_account.this.primary_file_host
}

output "primary_location" {
  description = "returns a string"
  value       = azurerm_storage_account.this.primary_location
}

output "primary_queue_endpoint" {
  description = "returns a string"
  value       = azurerm_storage_account.this.primary_queue_endpoint
}

output "primary_queue_host" {
  description = "returns a string"
  value       = azurerm_storage_account.this.primary_queue_host
}

output "primary_table_endpoint" {
  description = "returns a string"
  value       = azurerm_storage_account.this.primary_table_endpoint
}

output "primary_table_host" {
  description = "returns a string"
  value       = azurerm_storage_account.this.primary_table_host
}

output "primary_web_endpoint" {
  description = "returns a string"
  value       = azurerm_storage_account.this.primary_web_endpoint
}

output "primary_web_host" {
  description = "returns a string"
  value       = azurerm_storage_account.this.primary_web_host
}

output "secondary_access_key" {
  description = "returns a string"
  value       = azurerm_storage_account.this.secondary_access_key
  sensitive   = true
}

output "secondary_blob_connection_string" {
  description = "returns a string"
  value       = azurerm_storage_account.this.secondary_blob_connection_string
  sensitive   = true
}

output "secondary_blob_endpoint" {
  description = "returns a string"
  value       = azurerm_storage_account.this.secondary_blob_endpoint
}

output "secondary_blob_host" {
  description = "returns a string"
  value       = azurerm_storage_account.this.secondary_blob_host
}

output "secondary_connection_string" {
  description = "returns a string"
  value       = azurerm_storage_account.this.secondary_connection_string
  sensitive   = true
}

output "secondary_dfs_endpoint" {
  description = "returns a string"
  value       = azurerm_storage_account.this.secondary_dfs_endpoint
}

output "secondary_dfs_host" {
  description = "returns a string"
  value       = azurerm_storage_account.this.secondary_dfs_host
}

output "secondary_file_endpoint" {
  description = "returns a string"
  value       = azurerm_storage_account.this.secondary_file_endpoint
}

output "secondary_file_host" {
  description = "returns a string"
  value       = azurerm_storage_account.this.secondary_file_host
}

output "secondary_location" {
  description = "returns a string"
  value       = azurerm_storage_account.this.secondary_location
}

output "secondary_queue_endpoint" {
  description = "returns a string"
  value       = azurerm_storage_account.this.secondary_queue_endpoint
}

output "secondary_queue_host" {
  description = "returns a string"
  value       = azurerm_storage_account.this.secondary_queue_host
}

output "secondary_table_endpoint" {
  description = "returns a string"
  value       = azurerm_storage_account.this.secondary_table_endpoint
}

output "secondary_table_host" {
  description = "returns a string"
  value       = azurerm_storage_account.this.secondary_table_host
}

output "secondary_web_endpoint" {
  description = "returns a string"
  value       = azurerm_storage_account.this.secondary_web_endpoint
}

output "secondary_web_host" {
  description = "returns a string"
  value       = azurerm_storage_account.this.secondary_web_host
}

output "tags" {
  description = "returns a map of string"
  value       = azurerm_storage_account.this.tags
}

output "this" {
  value = azurerm_storage_account.this
}

