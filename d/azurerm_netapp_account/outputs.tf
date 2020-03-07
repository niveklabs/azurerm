output "id" {
  description = "returns a string"
  value       = data.azurerm_netapp_account.this.id
}

output "location" {
  description = "returns a string"
  value       = data.azurerm_netapp_account.this.location
}

output "this" {
  value = azurerm_netapp_account.this
}

