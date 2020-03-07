output "id" {
  description = "returns a string"
  value       = azurerm_marketplace_agreement.this.id
}

output "license_text_link" {
  description = "returns a string"
  value       = azurerm_marketplace_agreement.this.license_text_link
}

output "privacy_policy_link" {
  description = "returns a string"
  value       = azurerm_marketplace_agreement.this.privacy_policy_link
}

output "this" {
  value = azurerm_marketplace_agreement.this
}

