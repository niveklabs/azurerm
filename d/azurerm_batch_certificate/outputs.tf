output "format" {
  description = "returns a string"
  value       = data.azurerm_batch_certificate.this.format
}

output "id" {
  description = "returns a string"
  value       = data.azurerm_batch_certificate.this.id
}

output "public_data" {
  description = "returns a string"
  value       = data.azurerm_batch_certificate.this.public_data
}

output "thumbprint" {
  description = "returns a string"
  value       = data.azurerm_batch_certificate.this.thumbprint
}

output "thumbprint_algorithm" {
  description = "returns a string"
  value       = data.azurerm_batch_certificate.this.thumbprint_algorithm
}

output "this" {
  value = azurerm_batch_certificate.this
}

