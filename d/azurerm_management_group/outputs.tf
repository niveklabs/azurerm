output "display_name" {
  description = "returns a string"
  value       = data.azurerm_management_group.this.display_name
}

output "id" {
  description = "returns a string"
  value       = data.azurerm_management_group.this.id
}

output "parent_management_group_id" {
  description = "returns a string"
  value       = data.azurerm_management_group.this.parent_management_group_id
}

output "subscription_ids" {
  description = "returns a set of string"
  value       = data.azurerm_management_group.this.subscription_ids
}

output "this" {
  value = azurerm_management_group.this
}

