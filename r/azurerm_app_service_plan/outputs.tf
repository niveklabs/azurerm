output "id" {
  description = "returns a string"
  value       = azurerm_app_service_plan.this.id
}

output "maximum_elastic_worker_count" {
  description = "returns a number"
  value       = azurerm_app_service_plan.this.maximum_elastic_worker_count
}

output "maximum_number_of_workers" {
  description = "returns a number"
  value       = azurerm_app_service_plan.this.maximum_number_of_workers
}

output "this" {
  value = azurerm_app_service_plan.this
}

