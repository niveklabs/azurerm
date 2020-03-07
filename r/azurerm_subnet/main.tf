terraform {
  required_providers {
    azurerm = ">= 2.0.0"
  }
}

resource "azurerm_subnet" "this" {
  address_prefix                                 = var.address_prefix
  enforce_private_link_endpoint_network_policies = var.enforce_private_link_endpoint_network_policies
  enforce_private_link_service_network_policies  = var.enforce_private_link_service_network_policies
  name                                           = var.name
  resource_group_name                            = var.resource_group_name
  service_endpoints                              = var.service_endpoints
  virtual_network_name                           = var.virtual_network_name

  dynamic "delegation" {
    for_each = var.delegation
    content {
      name = delegation.value["name"]

      dynamic "service_delegation" {
        for_each = delegation.value.service_delegation
        content {
          actions = service_delegation.value["actions"]
          name    = service_delegation.value["name"]
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

