terraform {
  required_providers {
    azurerm = ">= 2.6.0"
  }
}

resource "azurerm_monitor_scheduled_query_rules_log" "this" {
  authorized_resource_ids = var.authorized_resource_ids
  data_source_id          = var.data_source_id
  description             = var.description
  enabled                 = var.enabled
  location                = var.location
  name                    = var.name
  resource_group_name     = var.resource_group_name
  tags                    = var.tags

  dynamic "criteria" {
    for_each = var.criteria
    content {
      metric_name = criteria.value["metric_name"]

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

