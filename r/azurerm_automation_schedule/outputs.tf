output "expiry_time" {
  description = "returns a string"
  value       = azurerm_automation_schedule.this.expiry_time
}

output "id" {
  description = "returns a string"
  value       = azurerm_automation_schedule.this.id
}

output "interval" {
  description = "returns a number"
  value       = azurerm_automation_schedule.this.interval
}

output "start_time" {
  description = "returns a string"
  value       = azurerm_automation_schedule.this.start_time
}

output "this" {
  value = azurerm_automation_schedule.this
}

