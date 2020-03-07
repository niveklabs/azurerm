terraform {
  required_providers {
    azurerm = ">= 2.0.0"
  }
}

resource "azurerm_monitor_diagnostic_setting" "this" {
  eventhub_authorization_rule_id = var.eventhub_authorization_rule_id
  eventhub_name                  = var.eventhub_name
  log_analytics_destination_type = var.log_analytics_destination_type
  log_analytics_workspace_id     = var.log_analytics_workspace_id
  name                           = var.name
  storage_account_id             = var.storage_account_id
  target_resource_id             = var.target_resource_id

  dynamic "log" {
    for_each = var.log
    content {
      category = log.value["category"]
      enabled  = log.value["enabled"]

      dynamic "retention_policy" {
        for_each = log.value.retention_policy
        content {
          days    = retention_policy.value["days"]
          enabled = retention_policy.value["enabled"]
        }
      }

    }
  }

  dynamic "metric" {
    for_each = var.metric
    content {
      category = metric.value["category"]
      enabled  = metric.value["enabled"]

      dynamic "retention_policy" {
        for_each = metric.value.retention_policy
        content {
          days    = retention_policy.value["days"]
          enabled = retention_policy.value["enabled"]
        }
      }

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

}

