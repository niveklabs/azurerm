terraform {
  required_providers {
    azurerm = ">= 2.8.0"
  }
}

resource "azurerm_sentinel_alert_rule_ms_security_incident" "this" {
  description                = var.description
  display_name               = var.display_name
  enabled                    = var.enabled
  log_analytics_workspace_id = var.log_analytics_workspace_id
  name                       = var.name
  product_filter             = var.product_filter
  severity_filter            = var.severity_filter
  text_whitelist             = var.text_whitelist

  dynamic "timeouts" {
    for_each = var.timeouts
    content {
      create = timeouts.value["create"]
      delete = timeouts.value["delete"]
      read   = timeouts.value["read"]
      update = timeouts.value["update"]
    }
  }

}

