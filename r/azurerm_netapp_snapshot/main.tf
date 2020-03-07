terraform {
  required_providers {
    azurerm = ">= 2.0.0"
  }
}

resource "azurerm_netapp_snapshot" "this" {
  account_name        = var.account_name
  location            = var.location
  name                = var.name
  pool_name           = var.pool_name
  resource_group_name = var.resource_group_name
  volume_name         = var.volume_name

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

