output "cname" {
  description = "returns a string"
  value       = azurerm_frontdoor.this.cname
}

output "id" {
  description = "returns a string"
  value       = azurerm_frontdoor.this.id
}

output "this" {
  value = azurerm_frontdoor.this
}

