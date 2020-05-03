terraform {
  required_providers {
    azurerm = ">= 2.5.0"
  }
}

resource "azurerm_monitor_scheduled_query_rules_alert" "this" {
  authorized_resource_ids = var.authorized_resource_ids
  data_source_id          = var.data_source_id
  description             = var.description
  enabled                 = var.enabled
  frequency               = var.frequency
  location                = var.location
  name                    = var.name
  query                   = var.query
  query_type              = var.query_type
  resource_group_name     = var.resource_group_name
  severity                = var.severity
  tags                    = var.tags
  throttling              = var.throttling
  time_window             = var.time_window

  dynamic "action" {
    for_each = var.action
    content {
      action_group           = action.value["action_group"]
      custom_webhook_payload = action.value["custom_webhook_payload"]
      email_subject          = action.value["email_subject"]
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

  dynamic "trigger" {
    for_each = var.trigger
    content {
      operator  = trigger.value["operator"]
      threshold = trigger.value["threshold"]

      dynamic "metric_trigger" {
        for_each = trigger.value.metric_trigger
        content {
          metric_column       = metric_trigger.value["metric_column"]
          metric_trigger_type = metric_trigger.value["metric_trigger_type"]
          operator            = metric_trigger.value["operator"]
          threshold           = metric_trigger.value["threshold"]
        }
      }

    }
  }

}

