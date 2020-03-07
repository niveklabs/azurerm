terraform {
  required_providers {
    azurerm = ">= 2.0.0"
  }
}

resource "azurerm_network_connection_monitor" "this" {
  auto_start           = var.auto_start
  interval_in_seconds  = var.interval_in_seconds
  location             = var.location
  name                 = var.name
  network_watcher_name = var.network_watcher_name
  resource_group_name  = var.resource_group_name
  tags                 = var.tags

  dynamic "destination" {
    for_each = var.destination
    content {
      address            = destination.value["address"]
      port               = destination.value["port"]
      virtual_machine_id = destination.value["virtual_machine_id"]
    }
  }

  dynamic "source" {
    for_each = var.source
    content {
      port               = source.value["port"]
      virtual_machine_id = source.value["virtual_machine_id"]
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

