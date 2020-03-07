output "apns_credential" {
  description = "returns a list of object"
  value       = data.azurerm_notification_hub.this.apns_credential
}

output "gcm_credential" {
  description = "returns a list of object"
  value       = data.azurerm_notification_hub.this.gcm_credential
}

output "id" {
  description = "returns a string"
  value       = data.azurerm_notification_hub.this.id
}

output "location" {
  description = "returns a string"
  value       = data.azurerm_notification_hub.this.location
}

output "this" {
  value = azurerm_notification_hub.this
}

