output "id" {
  description = "returns a string"
  value       = azurerm_eventhub.this.id
}

output "partition_ids" {
  description = "returns a set of string"
  value       = azurerm_eventhub.this.partition_ids
}

output "this" {
  value = azurerm_eventhub.this
}

