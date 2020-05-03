terraform {
  required_providers {
    azurerm = ">= 2.5.0"
  }
}

resource "azurerm_log_analytics_datasource_windows_event" "this" {
  event_log_name      = var.event_log_name
  event_types         = var.event_types
  name                = var.name
  resource_group_name = var.resource_group_name
  workspace_name      = var.workspace_name

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

