output "fqdn" {
  description = "returns a string"
  value       = azurerm_dns_aaaa_record.this.fqdn
}

output "id" {
  description = "returns a string"
  value       = azurerm_dns_aaaa_record.this.id
}

output "this" {
  value = azurerm_dns_aaaa_record.this
}

