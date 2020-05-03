terraform {
  required_providers {
    azurerm = ">= 2.8.0"
  }
}

data "azurerm_sentinel_alert_rule" "this" {
  log_analytics_workspace_id = var.log_analytics_workspace_id
  name                       = var.name

  dynamic "timeouts" {
    for_each = var.timeouts
    content {
      read = timeouts.value["read"]
    }
  }

}

