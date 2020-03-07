terraform {
  required_providers {
    azurerm = ">= 2.0.0"
  }
}

resource "azurerm_monitor_activity_log_alert" "this" {
  description         = var.description
  enabled             = var.enabled
  name                = var.name
  resource_group_name = var.resource_group_name
  scopes              = var.scopes
  tags                = var.tags

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
      caller            = criteria.value["caller"]
      category          = criteria.value["category"]
      level             = criteria.value["level"]
      operation_name    = criteria.value["operation_name"]
      resource_group    = criteria.value["resource_group"]
      resource_id       = criteria.value["resource_id"]
      resource_provider = criteria.value["resource_provider"]
      resource_type     = criteria.value["resource_type"]
      status            = criteria.value["status"]
      sub_status        = criteria.value["sub_status"]
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

