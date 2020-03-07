output "id" {
  description = "returns a string"
  value       = azurerm_stream_analytics_function_javascript_udf.this.id
}

output "this" {
  value = azurerm_stream_analytics_function_javascript_udf.this
}

