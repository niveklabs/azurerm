output "access_policy" {
  description = "returns a list of object"
  value       = data.azurerm_key_vault.this.access_policy
}

output "enabled_for_deployment" {
  description = "returns a bool"
  value       = data.azurerm_key_vault.this.enabled_for_deployment
}

output "enabled_for_disk_encryption" {
  description = "returns a bool"
  value       = data.azurerm_key_vault.this.enabled_for_disk_encryption
}

output "enabled_for_template_deployment" {
  description = "returns a bool"
  value       = data.azurerm_key_vault.this.enabled_for_template_deployment
}

output "id" {
  description = "returns a string"
  value       = data.azurerm_key_vault.this.id
}

output "location" {
  description = "returns a string"
  value       = data.azurerm_key_vault.this.location
}

output "network_acls" {
  description = "returns a list of object"
  value       = data.azurerm_key_vault.this.network_acls
}

output "purge_protection_enabled" {
  description = "returns a bool"
  value       = data.azurerm_key_vault.this.purge_protection_enabled
}

output "sku_name" {
  description = "returns a string"
  value       = data.azurerm_key_vault.this.sku_name
}

output "soft_delete_enabled" {
  description = "returns a bool"
  value       = data.azurerm_key_vault.this.soft_delete_enabled
}

output "tags" {
  description = "returns a map of string"
  value       = data.azurerm_key_vault.this.tags
}

output "tenant_id" {
  description = "returns a string"
  value       = data.azurerm_key_vault.this.tenant_id
}

output "vault_uri" {
  description = "returns a string"
  value       = data.azurerm_key_vault.this.vault_uri
}

output "this" {
  value = azurerm_key_vault.this
}

