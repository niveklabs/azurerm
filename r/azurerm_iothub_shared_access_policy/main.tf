terraform {
  required_providers {
    azurerm = ">= 2.0.0"
  }
}

resource "azurerm_iothub_shared_access_policy" "this" {
  device_connect      = var.device_connect
  iothub_name         = var.iothub_name
  name                = var.name
  registry_read       = var.registry_read
  registry_write      = var.registry_write
  resource_group_name = var.resource_group_name
  service_connect     = var.service_connect

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

