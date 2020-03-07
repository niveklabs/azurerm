output "hostname" {
  description = "returns a string"
  value       = azurerm_redis_cache.this.hostname
}

output "id" {
  description = "returns a string"
  value       = azurerm_redis_cache.this.id
}

output "port" {
  description = "returns a number"
  value       = azurerm_redis_cache.this.port
}

output "primary_access_key" {
  description = "returns a string"
  value       = azurerm_redis_cache.this.primary_access_key
  sensitive   = true
}

output "private_static_ip_address" {
  description = "returns a string"
  value       = azurerm_redis_cache.this.private_static_ip_address
}

output "secondary_access_key" {
  description = "returns a string"
  value       = azurerm_redis_cache.this.secondary_access_key
  sensitive   = true
}

output "ssl_port" {
  description = "returns a number"
  value       = azurerm_redis_cache.this.ssl_port
}

output "this" {
  value = azurerm_redis_cache.this
}

