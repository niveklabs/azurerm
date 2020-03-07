terraform {
  required_providers {
    azurerm = ">= 2.0.0"
  }
}

resource "azurerm_monitor_metric_alert" "this" {
  auto_mitigate       = var.auto_mitigate
  description         = var.description
  enabled             = var.enabled
  frequency           = var.frequency
  name                = var.name
  resource_group_name = var.resource_group_name
  scopes              = var.scopes
  severity            = var.severity
  tags                = var.tags
  window_size         = var.window_size

  dynamic "action" {
    for_each = var.action
    content {
      action_group_id    = action.value["action_group_id"]
      webhook_properties = action.value["webhook_properties"]
    }
  }

  dynamic "criteria" {
    for_each = var.criteria
    content {
      aggregation      = criteria.value["aggregation"]
      metric_name      = criteria.value["metric_name"]
      metric_namespace = criteria.value["metric_namespace"]
      operator         = criteria.value["operator"]
      threshold        = criteria.value["threshold"]

      dynamic "dimension" {
        for_each = criteria.value.dimension
        content {
          name     = dimension.value["name"]
          operator = dimension.value["operator"]
          values   = dimension.value["values"]
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

