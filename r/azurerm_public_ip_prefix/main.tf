terraform {
  required_providers {
    azurerm = ">= 2.0.0"
  }
}

resource "azurerm_public_ip_prefix" "this" {
  location            = var.location
  name                = var.name
  prefix_length       = var.prefix_length
  resource_group_name = var.resource_group_name
  sku                 = var.sku
  tags                = var.tags
  zones               = var.zones

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

