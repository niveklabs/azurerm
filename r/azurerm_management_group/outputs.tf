output "display_name" {
  description = "returns a string"
  value       = azurerm_management_group.this.display_name
}

output "group_id" {
  description = "returns a string"
  value       = azurerm_management_group.this.group_id
}

output "id" {
  description = "returns a string"
  value       = azurerm_management_group.this.id
}

output "parent_management_group_id" {
  description = "returns a string"
  value       = azurerm_management_group.this.parent_management_group_id
}

output "this" {
  value = azurerm_management_group.this
}

