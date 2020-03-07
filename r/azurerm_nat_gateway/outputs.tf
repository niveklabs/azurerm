output "id" {
  description = "returns a string"
  value       = azurerm_nat_gateway.this.id
}

output "resource_guid" {
  description = "returns a string"
  value       = azurerm_nat_gateway.this.resource_guid
}

output "this" {
  value = azurerm_nat_gateway.this
}

