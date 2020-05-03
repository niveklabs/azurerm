output "cname" {
  description = "returns a string"
  value       = azurerm_frontdoor.this.cname
}

output "id" {
  description = "returns a string"
  value       = azurerm_frontdoor.this.id
}

output "location" {
  description = "returns a string"
  value       = azurerm_frontdoor.this.location
}

output "this" {
  value = azurerm_frontdoor.this
}

