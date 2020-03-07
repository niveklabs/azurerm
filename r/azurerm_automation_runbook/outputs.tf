output "content" {
  description = "returns a string"
  value       = azurerm_automation_runbook.this.content
}

output "id" {
  description = "returns a string"
  value       = azurerm_automation_runbook.this.id
}

output "this" {
  value = azurerm_automation_runbook.this
}

