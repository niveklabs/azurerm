output "description" {
  description = "returns a string"
  value       = data.azurerm_shared_image.this.description
}

output "eula" {
  description = "returns a string"
  value       = data.azurerm_shared_image.this.eula
}

output "id" {
  description = "returns a string"
  value       = data.azurerm_shared_image.this.id
}

output "identifier" {
  description = "returns a list of object"
  value       = data.azurerm_shared_image.this.identifier
}

output "location" {
  description = "returns a string"
  value       = data.azurerm_shared_image.this.location
}

output "os_type" {
  description = "returns a string"
  value       = data.azurerm_shared_image.this.os_type
}

output "privacy_statement_uri" {
  description = "returns a string"
  value       = data.azurerm_shared_image.this.privacy_statement_uri
}

output "release_note_uri" {
  description = "returns a string"
  value       = data.azurerm_shared_image.this.release_note_uri
}

output "tags" {
  description = "returns a map of string"
  value       = data.azurerm_shared_image.this.tags
}

output "this" {
  value = azurerm_shared_image.this
}

