terraform {
  required_providers {
    azurerm = ">= 2.0.0"
  }
}

resource "azurerm_point_to_site_vpn_gateway" "this" {
  location                    = var.location
  name                        = var.name
  resource_group_name         = var.resource_group_name
  scale_unit                  = var.scale_unit
  tags                        = var.tags
  virtual_hub_id              = var.virtual_hub_id
  vpn_server_configuration_id = var.vpn_server_configuration_id

  dynamic "connection_configuration" {
    for_each = var.connection_configuration
    content {
      name = connection_configuration.value["name"]

      dynamic "vpn_client_address_pool" {
        for_each = connection_configuration.value.vpn_client_address_pool
        content {
          address_prefixes = vpn_client_address_pool.value["address_prefixes"]
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

