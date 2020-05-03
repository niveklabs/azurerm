terraform {
  required_providers {
    azurerm = ">= 2.5.0"
  }
}

resource "azurerm_virtual_hub_connection" "this" {
  hub_to_vitual_network_traffic_allowed          = var.hub_to_vitual_network_traffic_allowed
  internet_security_enabled                      = var.internet_security_enabled
  name                                           = var.name
  remote_virtual_network_id                      = var.remote_virtual_network_id
  virtual_hub_id                                 = var.virtual_hub_id
  vitual_network_to_hub_gateways_traffic_allowed = var.vitual_network_to_hub_gateways_traffic_allowed

  dynamic "timeouts" {
    for_each = var.timeouts
    content {
      create = timeouts.value["create"]
      delete = timeouts.value["delete"]
      read   = timeouts.value["read"]
    }
  }

}

