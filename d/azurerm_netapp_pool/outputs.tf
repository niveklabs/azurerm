output "id" {
  description = "returns a string"
  value       = data.azurerm_netapp_pool.this.id
}

output "location" {
  description = "returns a string"
  value       = data.azurerm_netapp_pool.this.location
}

output "service_level" {
  description = "returns a string"
  value       = data.azurerm_netapp_pool.this.service_level
}

output "size_in_tb" {
  description = "returns a number"
  value       = data.azurerm_netapp_pool.this.size_in_tb
}

output "this" {
  value = azurerm_netapp_pool.this
}

