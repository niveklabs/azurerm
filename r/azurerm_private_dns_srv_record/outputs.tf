output "id" {
  description = "returns a string"
  value       = azurerm_private_dns_srv_record.this.id
}

output "this" {
  value = azurerm_private_dns_srv_record.this
}

