terraform {
  required_providers {
    azurerm = ">= 2.0.0"
  }
}

resource "azurerm_netapp_pool" "this" {
  account_name        = var.account_name
  location            = var.location
  name                = var.name
  resource_group_name = var.resource_group_name
  service_level       = var.service_level
  size_in_tb          = var.size_in_tb

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

