terraform {
  required_providers {
    azurerm = ">= 2.0.0"
  }
}

resource "azurerm_iothub_dps_shared_access_policy" "this" {
  enrollment_read     = var.enrollment_read
  enrollment_write    = var.enrollment_write
  iothub_dps_name     = var.iothub_dps_name
  name                = var.name
  registration_read   = var.registration_read
  registration_write  = var.registration_write
  resource_group_name = var.resource_group_name
  service_config      = var.service_config

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

