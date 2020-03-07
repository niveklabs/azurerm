output "exportable" {
  description = "returns a bool"
  value       = azurerm_automation_certificate.this.exportable
}

output "id" {
  description = "returns a string"
  value       = azurerm_automation_certificate.this.id
}

output "thumbprint" {
  description = "returns a string"
  value       = azurerm_automation_certificate.this.thumbprint
}

output "this" {
  value = azurerm_automation_certificate.this
}

