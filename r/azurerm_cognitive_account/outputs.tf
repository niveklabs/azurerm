output "endpoint" {
  description = "returns a string"
  value       = azurerm_cognitive_account.this.endpoint
}

output "id" {
  description = "returns a string"
  value       = azurerm_cognitive_account.this.id
}

output "primary_access_key" {
  description = "returns a string"
  value       = azurerm_cognitive_account.this.primary_access_key
  sensitive   = true
}

output "secondary_access_key" {
  description = "returns a string"
  value       = azurerm_cognitive_account.this.secondary_access_key
  sensitive   = true
}

output "this" {
  value = azurerm_cognitive_account.this
}

