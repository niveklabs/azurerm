terraform {
  required_providers {
    azurerm = ">= 2.4.0"
  }
}

resource "azurerm_log_analytics_datasource_windows_performance_counter" "this" {
  counter_name        = var.counter_name
  instance_name       = var.instance_name
  interval_seconds    = var.interval_seconds
  name                = var.name
  object_name         = var.object_name
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

