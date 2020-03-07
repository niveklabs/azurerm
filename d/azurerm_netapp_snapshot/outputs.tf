output "id" {
  description = "returns a string"
  value       = data.azurerm_netapp_snapshot.this.id
}

output "location" {
  description = "returns a string"
  value       = data.azurerm_netapp_snapshot.this.location
}

output "this" {
  value = azurerm_netapp_snapshot.this
}

