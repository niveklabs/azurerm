terraform {
  required_providers {
    azurerm = ">= 2.0.0"
  }
}

resource "azurerm_network_security_rule" "this" {
  access                                     = var.access
  description                                = var.description
  destination_address_prefix                 = var.destination_address_prefix
  destination_address_prefixes               = var.destination_address_prefixes
  destination_application_security_group_ids = var.destination_application_security_group_ids
  destination_port_range                     = var.destination_port_range
  destination_port_ranges                    = var.destination_port_ranges
  direction                                  = var.direction
  name                                       = var.name
  network_security_group_name                = var.network_security_group_name
  priority                                   = var.priority
  protocol                                   = var.protocol
  resource_group_name                        = var.resource_group_name
  source_address_prefix                      = var.source_address_prefix
  source_address_prefixes                    = var.source_address_prefixes
  source_application_security_group_ids      = var.source_application_security_group_ids
  source_port_range                          = var.source_port_range
  source_port_ranges                         = var.source_port_ranges

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

