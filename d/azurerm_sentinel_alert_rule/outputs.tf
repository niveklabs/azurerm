output "id" {
  description = "returns a string"
  value       = data.azurerm_sentinel_alert_rule.this.id
}

output "this" {
  value = azurerm_sentinel_alert_rule.this
}

