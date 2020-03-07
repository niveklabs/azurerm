output "create_option" {
  description = "returns a string"
  value       = data.azurerm_managed_disk.this.create_option
}

output "disk_encryption_set_id" {
  description = "returns a string"
  value       = data.azurerm_managed_disk.this.disk_encryption_set_id
}

output "disk_iops_read_write" {
  description = "returns a number"
  value       = data.azurerm_managed_disk.this.disk_iops_read_write
}

output "disk_mbps_read_write" {
  description = "returns a number"
  value       = data.azurerm_managed_disk.this.disk_mbps_read_write
}

output "disk_size_gb" {
  description = "returns a number"
  value       = data.azurerm_managed_disk.this.disk_size_gb
}

output "id" {
  description = "returns a string"
  value       = data.azurerm_managed_disk.this.id
}

output "os_type" {
  description = "returns a string"
  value       = data.azurerm_managed_disk.this.os_type
}

output "source_resource_id" {
  description = "returns a string"
  value       = data.azurerm_managed_disk.this.source_resource_id
}

output "source_uri" {
  description = "returns a string"
  value       = data.azurerm_managed_disk.this.source_uri
}

output "storage_account_id" {
  description = "returns a string"
  value       = data.azurerm_managed_disk.this.storage_account_id
}

output "storage_account_type" {
  description = "returns a string"
  value       = data.azurerm_managed_disk.this.storage_account_type
}

output "zones" {
  description = "returns a list of string"
  value       = data.azurerm_managed_disk.this.zones
}

output "this" {
  value = azurerm_managed_disk.this
}

