output "compatibility_level" {
  description = "returns a string"
  value       = azurerm_stream_analytics_job.this.compatibility_level
}

output "data_locale" {
  description = "returns a string"
  value       = azurerm_stream_analytics_job.this.data_locale
}

output "id" {
  description = "returns a string"
  value       = azurerm_stream_analytics_job.this.id
}

output "job_id" {
  description = "returns a string"
  value       = azurerm_stream_analytics_job.this.job_id
}

output "this" {
  value = azurerm_stream_analytics_job.this
}

