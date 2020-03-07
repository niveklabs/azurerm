terraform {
  required_providers {
    azurerm = ">= 2.0.0"
  }
}

resource "azurerm_vpn_gateway" "this" {
  location            = var.location
  name                = var.name
  resource_group_name = var.resource_group_name
  scale_unit          = var.scale_unit
  tags                = var.tags
  virtual_hub_id      = var.virtual_hub_id

  dynamic "bgp_settings" {
    for_each = var.bgp_settings
    content {
      asn         = bgp_settings.value["asn"]
      peer_weight = bgp_settings.value["peer_weight"]
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

