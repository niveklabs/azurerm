output "id" {
  description = "returns a string"
  value       = data.azurerm_netapp_volume.this.id
}

output "location" {
  description = "returns a string"
  value       = data.azurerm_netapp_volume.this.location
}

output "service_level" {
  description = "returns a string"
  value       = data.azurerm_netapp_volume.this.service_level
}

output "storage_quota_in_gb" {
  description = "returns a number"
  value       = data.azurerm_netapp_volume.this.storage_quota_in_gb
}

output "subnet_id" {
  description = "returns a string"
  value       = data.azurerm_netapp_volume.this.subnet_id
}

output "volume_path" {
  description = "returns a string"
  value       = data.azurerm_netapp_volume.this.volume_path
}

output "this" {
  value = azurerm_netapp_volume.this
}

