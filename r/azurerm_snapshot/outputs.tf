output "disk_size_gb" {
  description = "returns a number"
  value       = azurerm_snapshot.this.disk_size_gb
}

output "id" {
  description = "returns a string"
  value       = azurerm_snapshot.this.id
}

output "this" {
  value = azurerm_snapshot.this
}

