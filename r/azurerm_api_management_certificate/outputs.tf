output "expiration" {
  description = "returns a string"
  value       = azurerm_api_management_certificate.this.expiration
}

output "id" {
  description = "returns a string"
  value       = azurerm_api_management_certificate.this.id
}

output "subject" {
  description = "returns a string"
  value       = azurerm_api_management_certificate.this.subject
}

output "thumbprint" {
  description = "returns a string"
  value       = azurerm_api_management_certificate.this.thumbprint
}

output "this" {
  value = azurerm_api_management_certificate.this
}

