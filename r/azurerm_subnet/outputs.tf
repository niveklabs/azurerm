output "address_prefix" {
  description = "returns a string"
  value       = azurerm_subnet.this.address_prefix
}

output "address_prefixes" {
  description = "returns a list of string"
  value       = azurerm_subnet.this.address_prefixes
}

output "id" {
  description = "returns a string"
  value       = azurerm_subnet.this.id
}

output "this" {
  value = azurerm_subnet.this
}

