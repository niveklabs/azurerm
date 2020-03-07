output "id" {
  description = "returns a string"
  value       = azurerm_data_factory_trigger_schedule.this.id
}

output "start_time" {
  description = "returns a string"
  value       = azurerm_data_factory_trigger_schedule.this.start_time
}

output "this" {
  value = azurerm_data_factory_trigger_schedule.this
}

