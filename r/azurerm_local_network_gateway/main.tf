terraform {
  required_providers {
    azurerm = ">= 2.0.0"
  }
}

resource "azurerm_local_network_gateway" "this" {
  address_space       = var.address_space
  gateway_address     = var.gateway_address
  location            = var.location
  name                = var.name
  resource_group_name = var.resource_group_name
  tags                = var.tags

  dynamic "bgp_settings" {
    for_each = var.bgp_settings
    content {
      asn                 = bgp_settings.value["asn"]
      bgp_peering_address = bgp_settings.value["bgp_peering_address"]
      peer_weight         = bgp_settings.value["peer_weight"]
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

