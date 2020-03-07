output "app_service_certificate_not_renewable_reasons" {
  description = "returns a list of string"
  value       = azurerm_app_service_certificate_order.this.app_service_certificate_not_renewable_reasons
}

output "certificates" {
  description = "returns a list of object"
  value       = azurerm_app_service_certificate_order.this.certificates
}

output "csr" {
  description = "returns a string"
  value       = azurerm_app_service_certificate_order.this.csr
}

output "distinguished_name" {
  description = "returns a string"
  value       = azurerm_app_service_certificate_order.this.distinguished_name
}

output "domain_verification_token" {
  description = "returns a string"
  value       = azurerm_app_service_certificate_order.this.domain_verification_token
}

output "expiration_time" {
  description = "returns a string"
  value       = azurerm_app_service_certificate_order.this.expiration_time
}

output "id" {
  description = "returns a string"
  value       = azurerm_app_service_certificate_order.this.id
}

output "intermediate_thumbprint" {
  description = "returns a string"
  value       = azurerm_app_service_certificate_order.this.intermediate_thumbprint
}

output "is_private_key_external" {
  description = "returns a bool"
  value       = azurerm_app_service_certificate_order.this.is_private_key_external
}

output "root_thumbprint" {
  description = "returns a string"
  value       = azurerm_app_service_certificate_order.this.root_thumbprint
}

output "signed_certificate_thumbprint" {
  description = "returns a string"
  value       = azurerm_app_service_certificate_order.this.signed_certificate_thumbprint
}

output "status" {
  description = "returns a string"
  value       = azurerm_app_service_certificate_order.this.status
}

output "this" {
  value = azurerm_app_service_certificate_order.this
}

