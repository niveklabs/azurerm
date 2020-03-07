terraform {
  required_providers {
    azurerm = ">= 2.0.0"
  }
}

resource "azurerm_logic_app_trigger_recurrence" "this" {
  frequency    = var.frequency
  interval     = var.interval
  logic_app_id = var.logic_app_id
  name         = var.name
  start_time   = var.start_time

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

