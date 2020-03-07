output "endpoint" {
  description = "returns a string"
  value       = azurerm_app_configuration.this.endpoint
}

output "id" {
  description = "returns a string"
  value       = azurerm_app_configuration.this.id
}

output "primary_read_key" {
  description = "returns a list of object"
  value       = azurerm_app_configuration.this.primary_read_key
}

output "primary_write_key" {
  description = "returns a list of object"
  value       = azurerm_app_configuration.this.primary_write_key
}

output "secondary_read_key" {
  description = "returns a list of object"
  value       = azurerm_app_configuration.this.secondary_read_key
}

output "secondary_write_key" {
  description = "returns a list of object"
  value       = azurerm_app_configuration.this.secondary_write_key
}

output "this" {
  value = azurerm_app_configuration.this
}

