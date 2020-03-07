terraform {
  required_providers {
    azurerm = ">= 2.0.0"
  }
}

resource "azurerm_virtual_hub" "this" {
  address_prefix      = var.address_prefix
  location            = var.location
  name                = var.name
  resource_group_name = var.resource_group_name
  tags                = var.tags
  virtual_wan_id      = var.virtual_wan_id

  dynamic "route" {
    for_each = var.route
    content {
      address_prefixes    = route.value["address_prefixes"]
      next_hop_ip_address = route.value["next_hop_ip_address"]
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

