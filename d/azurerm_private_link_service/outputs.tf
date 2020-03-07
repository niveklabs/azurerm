output "alias" {
  description = "returns a string"
  value       = data.azurerm_private_link_service.this.alias
}

output "auto_approval_subscription_ids" {
  description = "returns a list of string"
  value       = data.azurerm_private_link_service.this.auto_approval_subscription_ids
}

output "enable_proxy_protocol" {
  description = "returns a bool"
  value       = data.azurerm_private_link_service.this.enable_proxy_protocol
}

output "id" {
  description = "returns a string"
  value       = data.azurerm_private_link_service.this.id
}

output "load_balancer_frontend_ip_configuration_ids" {
  description = "returns a list of string"
  value       = data.azurerm_private_link_service.this.load_balancer_frontend_ip_configuration_ids
}

output "location" {
  description = "returns a string"
  value       = data.azurerm_private_link_service.this.location
}

output "nat_ip_configuration" {
  description = "returns a list of object"
  value       = data.azurerm_private_link_service.this.nat_ip_configuration
}

output "tags" {
  description = "returns a map of string"
  value       = data.azurerm_private_link_service.this.tags
}

output "visibility_subscription_ids" {
  description = "returns a list of string"
  value       = data.azurerm_private_link_service.this.visibility_subscription_ids
}

output "this" {
  value = azurerm_private_link_service.this
}

