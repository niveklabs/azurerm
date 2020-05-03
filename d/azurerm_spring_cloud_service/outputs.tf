output "config_server_git_setting" {
  description = "returns a list of object"
  value       = data.azurerm_spring_cloud_service.this.config_server_git_setting
}

output "id" {
  description = "returns a string"
  value       = data.azurerm_spring_cloud_service.this.id
}

output "location" {
  description = "returns a string"
  value       = data.azurerm_spring_cloud_service.this.location
}

output "tags" {
  description = "returns a map of string"
  value       = data.azurerm_spring_cloud_service.this.tags
}

output "this" {
  value = azurerm_spring_cloud_service.this
}

