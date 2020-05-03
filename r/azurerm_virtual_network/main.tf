terraform {
  required_providers {
    azurerm = ">= 2.8.0"
  }
}

resource "azurerm_virtual_network" "this" {
  address_space       = var.address_space
  dns_servers         = var.dns_servers
  location            = var.location
  name                = var.name
  resource_group_name = var.resource_group_name
  subnet              = var.subnet
  tags                = var.tags

  dynamic "ddos_protection_plan" {
    for_each = var.ddos_protection_plan
    content {
      enable = ddos_protection_plan.value["enable"]
      id     = ddos_protection_plan.value["id"]
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

