output "e" {
  description = "returns a string"
  value       = data.azurerm_key_vault_key.this.e
}

output "id" {
  description = "returns a string"
  value       = data.azurerm_key_vault_key.this.id
}

output "key_opts" {
  description = "returns a list of string"
  value       = data.azurerm_key_vault_key.this.key_opts
}

output "key_size" {
  description = "returns a number"
  value       = data.azurerm_key_vault_key.this.key_size
}

output "key_type" {
  description = "returns a string"
  value       = data.azurerm_key_vault_key.this.key_type
}

output "n" {
  description = "returns a string"
  value       = data.azurerm_key_vault_key.this.n
}

output "tags" {
  description = "returns a map of string"
  value       = data.azurerm_key_vault_key.this.tags
}

output "version" {
  description = "returns a string"
  value       = data.azurerm_key_vault_key.this.version
}

output "this" {
  value = azurerm_key_vault_key.this
}

