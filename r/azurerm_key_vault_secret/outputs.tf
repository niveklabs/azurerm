output "id" {
  description = "returns a string"
  value       = azurerm_key_vault_secret.this.id
}

output "version" {
  description = "returns a string"
  value       = azurerm_key_vault_secret.this.version
}

output "this" {
  value = azurerm_key_vault_secret.this
}

