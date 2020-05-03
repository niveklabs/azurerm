output "fqdn" {
  description = "returns a string"
  value       = azurerm_private_dns_txt_record.this.fqdn
}

output "id" {
  description = "returns a string"
  value       = azurerm_private_dns_txt_record.this.id
}

output "this" {
  value = azurerm_private_dns_txt_record.this
}

