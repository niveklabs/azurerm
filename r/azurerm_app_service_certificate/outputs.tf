output "expiration_date" {
  description = "returns a string"
  value       = azurerm_app_service_certificate.this.expiration_date
}

output "friendly_name" {
  description = "returns a string"
  value       = azurerm_app_service_certificate.this.friendly_name
}

output "host_names" {
  description = "returns a list of string"
  value       = azurerm_app_service_certificate.this.host_names
}

output "id" {
  description = "returns a string"
  value       = azurerm_app_service_certificate.this.id
}

output "issue_date" {
  description = "returns a string"
  value       = azurerm_app_service_certificate.this.issue_date
}

output "issuer" {
  description = "returns a string"
  value       = azurerm_app_service_certificate.this.issuer
}

output "subject_name" {
  description = "returns a string"
  value       = azurerm_app_service_certificate.this.subject_name
}

output "thumbprint" {
  description = "returns a string"
  value       = azurerm_app_service_certificate.this.thumbprint
}

output "this" {
  value = azurerm_app_service_certificate.this
}

