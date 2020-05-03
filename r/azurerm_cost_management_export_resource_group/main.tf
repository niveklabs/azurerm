terraform {
  required_providers {
    azurerm = ">= 2.6.0"
  }
}

resource "azurerm_cost_management_export_resource_group" "this" {
  active                  = var.active
  name                    = var.name
  recurrence_period_end   = var.recurrence_period_end
  recurrence_period_start = var.recurrence_period_start
  recurrence_type         = var.recurrence_type
  resource_group_id       = var.resource_group_id

  dynamic "delivery_info" {
    for_each = var.delivery_info
    content {
      container_name     = delivery_info.value["container_name"]
      root_folder_path   = delivery_info.value["root_folder_path"]
      storage_account_id = delivery_info.value["storage_account_id"]
    }
  }

  dynamic "query" {
    for_each = var.query
    content {
      time_frame = query.value["time_frame"]
      type       = query.value["type"]
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

