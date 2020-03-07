terraform {
  required_providers {
    azurerm = ">= 2.0.0"
  }
}

resource "azurerm_firewall" "this" {
  location            = var.location
  name                = var.name
  resource_group_name = var.resource_group_name
  tags                = var.tags
  zones               = var.zones

  dynamic "ip_configuration" {
    for_each = var.ip_configuration
    content {
      name                 = ip_configuration.value["name"]
      public_ip_address_id = ip_configuration.value["public_ip_address_id"]
      subnet_id            = ip_configuration.value["subnet_id"]
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

