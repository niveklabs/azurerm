output "content_type" {
  description = "returns a string"
  value       = data.azurerm_key_vault_secret.this.content_type
}

output "id" {
  description = "returns a string"
  value       = data.azurerm_key_vault_secret.this.id
}

output "tags" {
  description = "returns a map of string"
  value       = data.azurerm_key_vault_secret.this.tags
}

output "value" {
  description = "returns a string"
  value       = data.azurerm_key_vault_secret.this.value
  sensitive   = true
}

output "version" {
  description = "returns a string"
  value       = data.azurerm_key_vault_secret.this.version
}

output "this" {
  value = azurerm_key_vault_secret.this
}

