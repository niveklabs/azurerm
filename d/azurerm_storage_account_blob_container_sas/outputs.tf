output "id" {
  description = "returns a string"
  value       = data.azurerm_storage_account_blob_container_sas.this.id
}

output "sas" {
  description = "returns a string"
  value       = data.azurerm_storage_account_blob_container_sas.this.sas
  sensitive   = true
}

output "this" {
  value = azurerm_storage_account_blob_container_sas.this
}

