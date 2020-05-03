output "guid" {
  description = "returns a string"
  value       = azurerm_virtual_network.this.guid
}

output "id" {
  description = "returns a string"
  value       = azurerm_virtual_network.this.id
}

output "subnet" {
  description = "returns a set of object"
  value       = azurerm_virtual_network.this.subnet
}

output "this" {
  value = azurerm_virtual_network.this
}

