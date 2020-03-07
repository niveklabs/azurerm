output "dns_name" {
  description = "returns a string"
  value       = azurerm_bastion_host.this.dns_name
}

output "id" {
  description = "returns a string"
  value       = azurerm_bastion_host.this.id
}

output "this" {
  value = azurerm_bastion_host.this
}

