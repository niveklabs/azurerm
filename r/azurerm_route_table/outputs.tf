output "id" {
  description = "returns a string"
  value       = azurerm_route_table.this.id
}

output "route" {
  description = "returns a list of object"
  value       = azurerm_route_table.this.route
}

output "subnets" {
  description = "returns a set of string"
  value       = azurerm_route_table.this.subnets
}

output "this" {
  value = azurerm_route_table.this
}

