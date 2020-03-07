output "id" {
  description = "returns a string"
  value       = azurerm_automation_job_schedule.this.id
}

output "job_schedule_id" {
  description = "returns a string"
  value       = azurerm_automation_job_schedule.this.job_schedule_id
}

output "this" {
  value = azurerm_automation_job_schedule.this
}

