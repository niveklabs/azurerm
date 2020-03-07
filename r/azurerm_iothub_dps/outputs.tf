output "allocation_policy" {
  description = "returns a string"
  value       = azurerm_iothub_dps.this.allocation_policy
}

output "device_provisioning_host_name" {
  description = "returns a string"
  value       = azurerm_iothub_dps.this.device_provisioning_host_name
}

output "id" {
  description = "returns a string"
  value       = azurerm_iothub_dps.this.id
}

output "id_scope" {
  description = "returns a string"
  value       = azurerm_iothub_dps.this.id_scope
}

output "service_operations_host_name" {
  description = "returns a string"
  value       = azurerm_iothub_dps.this.service_operations_host_name
}

output "this" {
  value = azurerm_iothub_dps.this
}

