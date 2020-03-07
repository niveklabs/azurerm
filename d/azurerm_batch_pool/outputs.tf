output "auto_scale" {
  description = "returns a list of object"
  value       = data.azurerm_batch_pool.this.auto_scale
}

output "container_configuration" {
  description = "returns a list of object"
  value       = data.azurerm_batch_pool.this.container_configuration
}

output "display_name" {
  description = "returns a string"
  value       = data.azurerm_batch_pool.this.display_name
}

output "fixed_scale" {
  description = "returns a list of object"
  value       = data.azurerm_batch_pool.this.fixed_scale
}

output "id" {
  description = "returns a string"
  value       = data.azurerm_batch_pool.this.id
}

output "max_tasks_per_node" {
  description = "returns a number"
  value       = data.azurerm_batch_pool.this.max_tasks_per_node
}

output "metadata" {
  description = "returns a map of string"
  value       = data.azurerm_batch_pool.this.metadata
}

output "node_agent_sku_id" {
  description = "returns a string"
  value       = data.azurerm_batch_pool.this.node_agent_sku_id
}

output "storage_image_reference" {
  description = "returns a list of object"
  value       = data.azurerm_batch_pool.this.storage_image_reference
}

output "vm_size" {
  description = "returns a string"
  value       = data.azurerm_batch_pool.this.vm_size
}

output "this" {
  value = azurerm_batch_pool.this
}

