output "capacity" {
  description = "returns a number"
  value       = data.azurerm_redis_cache.this.capacity
}

output "enable_non_ssl_port" {
  description = "returns a bool"
  value       = data.azurerm_redis_cache.this.enable_non_ssl_port
}

output "family" {
  description = "returns a string"
  value       = data.azurerm_redis_cache.this.family
}

output "hostname" {
  description = "returns a string"
  value       = data.azurerm_redis_cache.this.hostname
}

output "id" {
  description = "returns a string"
  value       = data.azurerm_redis_cache.this.id
}

output "location" {
  description = "returns a string"
  value       = data.azurerm_redis_cache.this.location
}

output "minimum_tls_version" {
  description = "returns a string"
  value       = data.azurerm_redis_cache.this.minimum_tls_version
}

output "patch_schedule" {
  description = "returns a list of object"
  value       = data.azurerm_redis_cache.this.patch_schedule
}

output "port" {
  description = "returns a number"
  value       = data.azurerm_redis_cache.this.port
}

output "primary_access_key" {
  description = "returns a string"
  value       = data.azurerm_redis_cache.this.primary_access_key
  sensitive   = true
}

output "private_static_ip_address" {
  description = "returns a string"
  value       = data.azurerm_redis_cache.this.private_static_ip_address
}

output "redis_configuration" {
  description = "returns a list of object"
  value       = data.azurerm_redis_cache.this.redis_configuration
}

output "secondary_access_key" {
  description = "returns a string"
  value       = data.azurerm_redis_cache.this.secondary_access_key
  sensitive   = true
}

output "shard_count" {
  description = "returns a number"
  value       = data.azurerm_redis_cache.this.shard_count
}

output "sku_name" {
  description = "returns a string"
  value       = data.azurerm_redis_cache.this.sku_name
}

output "ssl_port" {
  description = "returns a number"
  value       = data.azurerm_redis_cache.this.ssl_port
}

output "subnet_id" {
  description = "returns a string"
  value       = data.azurerm_redis_cache.this.subnet_id
}

output "tags" {
  description = "returns a map of string"
  value       = data.azurerm_redis_cache.this.tags
}

output "zones" {
  description = "returns a list of string"
  value       = data.azurerm_redis_cache.this.zones
}

output "this" {
  value = azurerm_redis_cache.this
}

