output "app_service_environment_id" {
  description = "returns a string"
  value       = data.azurerm_app_service_plan.this.app_service_environment_id
}

output "id" {
  description = "returns a string"
  value       = data.azurerm_app_service_plan.this.id
}

output "is_xenon" {
  description = "returns a bool"
  value       = data.azurerm_app_service_plan.this.is_xenon
}

output "kind" {
  description = "returns a string"
  value       = data.azurerm_app_service_plan.this.kind
}

output "location" {
  description = "returns a string"
  value       = data.azurerm_app_service_plan.this.location
}

output "maximum_elastic_worker_count" {
  description = "returns a number"
  value       = data.azurerm_app_service_plan.this.maximum_elastic_worker_count
}

output "maximum_number_of_workers" {
  description = "returns a number"
  value       = data.azurerm_app_service_plan.this.maximum_number_of_workers
}

output "per_site_scaling" {
  description = "returns a bool"
  value       = data.azurerm_app_service_plan.this.per_site_scaling
}

output "reserved" {
  description = "returns a bool"
  value       = data.azurerm_app_service_plan.this.reserved
}

output "sku" {
  description = "returns a list of object"
  value       = data.azurerm_app_service_plan.this.sku
}

output "tags" {
  description = "returns a map of string"
  value       = data.azurerm_app_service_plan.this.tags
}

output "this" {
  value = azurerm_app_service_plan.this
}

