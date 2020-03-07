output "curve" {
  description = "returns a string"
  value       = azurerm_key_vault_key.this.curve
}

output "e" {
  description = "returns a string"
  value       = azurerm_key_vault_key.this.e
}

output "id" {
  description = "returns a string"
  value       = azurerm_key_vault_key.this.id
}

output "n" {
  description = "returns a string"
  value       = azurerm_key_vault_key.this.n
}

output "version" {
  description = "returns a string"
  value       = azurerm_key_vault_key.this.version
}

output "x" {
  description = "returns a string"
  value       = azurerm_key_vault_key.this.x
}

output "y" {
  description = "returns a string"
  value       = azurerm_key_vault_key.this.y
}

output "this" {
  value = azurerm_key_vault_key.this
}

