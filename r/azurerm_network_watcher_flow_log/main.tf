terraform {
  required_providers {
    azurerm = ">= 2.0.0"
  }
}

resource "azurerm_network_watcher_flow_log" "this" {
  enabled                   = var.enabled
  network_security_group_id = var.network_security_group_id
  network_watcher_name      = var.network_watcher_name
  resource_group_name       = var.resource_group_name
  storage_account_id        = var.storage_account_id
  version                   = var.version

  dynamic "retention_policy" {
    for_each = var.retention_policy
    content {
      days    = retention_policy.value["days"]
      enabled = retention_policy.value["enabled"]
    }
  }

  dynamic "timeouts" {
    for_each = var.timeouts
    content {
      create = timeouts.value["create"]
      delete = timeouts.value["delete"]
      read   = timeouts.value["read"]
      update = timeouts.value["update"]
    }
  }

  dynamic "traffic_analytics" {
    for_each = var.traffic_analytics
    content {
      enabled               = traffic_analytics.value["enabled"]
      workspace_id          = traffic_analytics.value["workspace_id"]
      workspace_region      = traffic_analytics.value["workspace_region"]
      workspace_resource_id = traffic_analytics.value["workspace_resource_id"]
    }
  }

}

