output "id" {
  description = "returns a string"
  value       = azurerm_hpc_cache.this.id
}

output "mount_addresses" {
  description = "returns a list of string"
  value       = azurerm_hpc_cache.this.mount_addresses
}

output "this" {
  value = azurerm_hpc_cache.this
}

