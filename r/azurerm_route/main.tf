terraform {
  required_providers {
    azurerm = ">= 2.0.0"
  }
}

resource "azurerm_route" "this" {
  address_prefix         = var.address_prefix
  name                   = var.name
  next_hop_in_ip_address = var.next_hop_in_ip_address
  next_hop_type          = var.next_hop_type
  resource_group_name    = var.resource_group_name
  route_table_name       = var.route_table_name

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

