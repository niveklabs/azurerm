output "certificate_data" {
  description = "returns a string"
  value       = azurerm_key_vault_certificate.this.certificate_data
}

output "id" {
  description = "returns a string"
  value       = azurerm_key_vault_certificate.this.id
}

output "secret_id" {
  description = "returns a string"
  value       = azurerm_key_vault_certificate.this.secret_id
}

output "thumbprint" {
  description = "returns a string"
  value       = azurerm_key_vault_certificate.this.thumbprint
}

output "version" {
  description = "returns a string"
  value       = azurerm_key_vault_certificate.this.version
}

output "this" {
  value = azurerm_key_vault_certificate.this
}

