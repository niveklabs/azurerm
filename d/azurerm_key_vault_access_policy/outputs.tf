output "certificate_permissions" {
  description = "returns a list of string"
  value       = data.azurerm_key_vault_access_policy.this.certificate_permissions
}

output "id" {
  description = "returns a string"
  value       = data.azurerm_key_vault_access_policy.this.id
}

output "key_permissions" {
  description = "returns a list of string"
  value       = data.azurerm_key_vault_access_policy.this.key_permissions
}

output "secret_permissions" {
  description = "returns a list of string"
  value       = data.azurerm_key_vault_access_policy.this.secret_permissions
}

output "this" {
  value = azurerm_key_vault_access_policy.this
}

