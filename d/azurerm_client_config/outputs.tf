output "client_id" {
  description = "returns a string"
  value       = data.azurerm_client_config.this.client_id
}

output "id" {
  description = "returns a string"
  value       = data.azurerm_client_config.this.id
}

output "object_id" {
  description = "returns a string"
  value       = data.azurerm_client_config.this.object_id
}

output "subscription_id" {
  description = "returns a string"
  value       = data.azurerm_client_config.this.subscription_id
}

output "tenant_id" {
  description = "returns a string"
  value       = data.azurerm_client_config.this.tenant_id
}

output "this" {
  value = azurerm_client_config.this
}

