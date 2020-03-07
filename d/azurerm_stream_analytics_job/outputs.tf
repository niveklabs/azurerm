output "compatibility_level" {
  description = "returns a string"
  value       = data.azurerm_stream_analytics_job.this.compatibility_level
}

output "data_locale" {
  description = "returns a string"
  value       = data.azurerm_stream_analytics_job.this.data_locale
}

output "events_late_arrival_max_delay_in_seconds" {
  description = "returns a number"
  value       = data.azurerm_stream_analytics_job.this.events_late_arrival_max_delay_in_seconds
}

output "events_out_of_order_max_delay_in_seconds" {
  description = "returns a number"
  value       = data.azurerm_stream_analytics_job.this.events_out_of_order_max_delay_in_seconds
}

output "events_out_of_order_policy" {
  description = "returns a string"
  value       = data.azurerm_stream_analytics_job.this.events_out_of_order_policy
}

output "id" {
  description = "returns a string"
  value       = data.azurerm_stream_analytics_job.this.id
}

output "job_id" {
  description = "returns a string"
  value       = data.azurerm_stream_analytics_job.this.job_id
}

output "location" {
  description = "returns a string"
  value       = data.azurerm_stream_analytics_job.this.location
}

output "output_error_policy" {
  description = "returns a string"
  value       = data.azurerm_stream_analytics_job.this.output_error_policy
}

output "streaming_units" {
  description = "returns a number"
  value       = data.azurerm_stream_analytics_job.this.streaming_units
}

output "transformation_query" {
  description = "returns a string"
  value       = data.azurerm_stream_analytics_job.this.transformation_query
}

output "this" {
  value = azurerm_stream_analytics_job.this
}

