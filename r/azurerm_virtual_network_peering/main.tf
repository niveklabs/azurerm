terraform {
  required_providers {
    azurerm = ">= 2.0.0"
  }
}

resource "azurerm_virtual_network_peering" "this" {
  allow_forwarded_traffic      = var.allow_forwarded_traffic
  allow_gateway_transit        = var.allow_gateway_transit
  allow_virtual_network_access = var.allow_virtual_network_access
  name                         = var.name
  remote_virtual_network_id    = var.remote_virtual_network_id
  resource_group_name          = var.resource_group_name
  use_remote_gateways          = var.use_remote_gateways
  virtual_network_name         = var.virtual_network_name

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

