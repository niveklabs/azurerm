output "id" {
  description = "returns a string"
  value       = azurerm_mssql_elasticpool.this.id
}

output "max_size_bytes" {
  description = "returns a number"
  value       = azurerm_mssql_elasticpool.this.max_size_bytes
}

output "max_size_gb" {
  description = "returns a number"
  value       = azurerm_mssql_elasticpool.this.max_size_gb
}

output "this" {
  value = azurerm_mssql_elasticpool.this
}

