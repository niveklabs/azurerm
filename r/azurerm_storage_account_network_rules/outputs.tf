output "bypass" {
  description = "returns a set of string"
  value       = azurerm_storage_account_network_rules.this.bypass
}

output "id" {
  description = "returns a string"
  value       = azurerm_storage_account_network_rules.this.id
}

output "ip_rules" {
  description = "returns a set of string"
  value       = azurerm_storage_account_network_rules.this.ip_rules
}

output "virtual_network_subnet_ids" {
  description = "returns a set of string"
  value       = azurerm_storage_account_network_rules.this.virtual_network_subnet_ids
}

output "this" {
  value = azurerm_storage_account_network_rules.this
}

