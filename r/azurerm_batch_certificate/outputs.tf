output "id" {
  description = "returns a string"
  value       = azurerm_batch_certificate.this.id
}

output "name" {
  description = "returns a string"
  value       = azurerm_batch_certificate.this.name
}

output "public_data" {
  description = "returns a string"
  value       = azurerm_batch_certificate.this.public_data
}

output "this" {
  value = azurerm_batch_certificate.this
}

