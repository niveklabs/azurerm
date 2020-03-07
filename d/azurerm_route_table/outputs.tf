output "id" {
  description = "returns a string"
  value       = data.azurerm_route_table.this.id
}

output "location" {
  description = "returns a string"
  value       = data.azurerm_route_table.this.location
}

output "route" {
  description = "returns a list of object"
  value       = data.azurerm_route_table.this.route
}

output "subnets" {
  description = "returns a set of string"
  value       = data.azurerm_route_table.this.subnets
}

output "tags" {
  description = "returns a map of string"
  value       = data.azurerm_route_table.this.tags
}

output "this" {
  value = azurerm_route_table.this
}

