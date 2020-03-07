output "id" {
  description = "returns a string"
  value       = data.azurerm_kubernetes_service_versions.this.id
}

output "latest_version" {
  description = "returns a string"
  value       = data.azurerm_kubernetes_service_versions.this.latest_version
}

output "versions" {
  description = "returns a list of string"
  value       = data.azurerm_kubernetes_service_versions.this.versions
}

output "this" {
  value = azurerm_kubernetes_service_versions.this
}

