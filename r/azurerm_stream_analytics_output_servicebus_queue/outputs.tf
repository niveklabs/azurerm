output "id" {
  description = "returns a string"
  value       = azurerm_stream_analytics_output_servicebus_queue.this.id
}

output "this" {
  value = azurerm_stream_analytics_output_servicebus_queue.this
}

