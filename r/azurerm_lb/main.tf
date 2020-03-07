terraform {
  required_providers {
    azurerm = ">= 2.0.0"
  }
}

resource "azurerm_lb" "this" {
  location            = var.location
  name                = var.name
  resource_group_name = var.resource_group_name
  sku                 = var.sku
  tags                = var.tags

  dynamic "frontend_ip_configuration" {
    for_each = var.frontend_ip_configuration
    content {
      name                          = frontend_ip_configuration.value["name"]
      private_ip_address            = frontend_ip_configuration.value["private_ip_address"]
      private_ip_address_allocation = frontend_ip_configuration.value["private_ip_address_allocation"]
      public_ip_address_id          = frontend_ip_configuration.value["public_ip_address_id"]
      public_ip_prefix_id           = frontend_ip_configuration.value["public_ip_prefix_id"]
      subnet_id                     = frontend_ip_configuration.value["subnet_id"]
      zones                         = frontend_ip_configuration.value["zones"]
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

