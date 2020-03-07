terraform {
  required_providers {
    azurerm = ">= 2.0.0"
  }
}

resource "azurerm_private_dns_zone_virtual_network_link" "this" {
  name                  = var.name
  private_dns_zone_name = var.private_dns_zone_name
  registration_enabled  = var.registration_enabled
  resource_group_name   = var.resource_group_name
  tags                  = var.tags
  virtual_network_id    = var.virtual_network_id

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

