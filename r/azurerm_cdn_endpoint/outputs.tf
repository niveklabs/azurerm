output "content_types_to_compress" {
  description = "returns a set of string"
  value       = azurerm_cdn_endpoint.this.content_types_to_compress
}

output "host_name" {
  description = "returns a string"
  value       = azurerm_cdn_endpoint.this.host_name
}

output "id" {
  description = "returns a string"
  value       = azurerm_cdn_endpoint.this.id
}

output "origin_host_header" {
  description = "returns a string"
  value       = azurerm_cdn_endpoint.this.origin_host_header
}

output "origin_path" {
  description = "returns a string"
  value       = azurerm_cdn_endpoint.this.origin_path
}

output "probe_path" {
  description = "returns a string"
  value       = azurerm_cdn_endpoint.this.probe_path
}

output "this" {
  value = azurerm_cdn_endpoint.this
}

