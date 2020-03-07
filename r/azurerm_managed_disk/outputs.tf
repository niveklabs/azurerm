output "disk_iops_read_write" {
  description = "returns a number"
  value       = azurerm_managed_disk.this.disk_iops_read_write
}

output "disk_mbps_read_write" {
  description = "returns a number"
  value       = azurerm_managed_disk.this.disk_mbps_read_write
}

output "disk_size_gb" {
  description = "returns a number"
  value       = azurerm_managed_disk.this.disk_size_gb
}

output "id" {
  description = "returns a string"
  value       = azurerm_managed_disk.this.id
}

output "source_uri" {
  description = "returns a string"
  value       = azurerm_managed_disk.this.source_uri
}

output "this" {
  value = azurerm_managed_disk.this
}

