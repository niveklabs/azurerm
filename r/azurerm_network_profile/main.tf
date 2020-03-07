terraform {
  required_providers {
    azurerm = ">= 2.0.0"
  }
}

resource "azurerm_network_profile" "this" {
  location            = var.location
  name                = var.name
  resource_group_name = var.resource_group_name
  tags                = var.tags

  dynamic "container_network_interface" {
    for_each = var.container_network_interface
    content {
      name = container_network_interface.value["name"]

      dynamic "ip_configuration" {
        for_each = container_network_interface.value.ip_configuration
        content {
          name      = ip_configuration.value["name"]
          subnet_id = ip_configuration.value["subnet_id"]
        }
      }

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

