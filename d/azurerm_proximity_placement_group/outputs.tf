output "id" {
  description = "returns a string"
  value       = data.azurerm_proximity_placement_group.this.id
}

output "location" {
  description = "returns a string"
  value       = data.azurerm_proximity_placement_group.this.location
}

output "tags" {
  description = "returns a map of string"
  value       = data.azurerm_proximity_placement_group.this.tags
}

output "this" {
  value = azurerm_proximity_placement_group.this
}

