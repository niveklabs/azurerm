terraform {
  required_providers {
    azurerm = ">= 2.0.0"
  }
}

resource "azurerm_servicebus_namespace" "this" {
  capacity            = var.capacity
  location            = var.location
  name                = var.name
  resource_group_name = var.resource_group_name
  sku                 = var.sku
  tags                = var.tags
  zone_redundant      = var.zone_redundant

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

