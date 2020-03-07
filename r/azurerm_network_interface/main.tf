terraform {
  required_providers {
    azurerm = ">= 2.0.0"
  }
}

resource "azurerm_network_interface" "this" {
  dns_servers                   = var.dns_servers
  enable_accelerated_networking = var.enable_accelerated_networking
  enable_ip_forwarding          = var.enable_ip_forwarding
  internal_dns_name_label       = var.internal_dns_name_label
  location                      = var.location
  name                          = var.name
  resource_group_name           = var.resource_group_name
  tags                          = var.tags

  dynamic "ip_configuration" {
    for_each = var.ip_configuration
    content {
      name                          = ip_configuration.value["name"]
      primary                       = ip_configuration.value["primary"]
      private_ip_address            = ip_configuration.value["private_ip_address"]
      private_ip_address_allocation = ip_configuration.value["private_ip_address_allocation"]
      private_ip_address_version    = ip_configuration.value["private_ip_address_version"]
      public_ip_address_id          = ip_configuration.value["public_ip_address_id"]
      subnet_id                     = ip_configuration.value["subnet_id"]
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

