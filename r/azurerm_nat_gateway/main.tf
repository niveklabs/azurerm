terraform {
  required_providers {
    azurerm = ">= 2.0.0"
  }
}

resource "azurerm_nat_gateway" "this" {
  idle_timeout_in_minutes = var.idle_timeout_in_minutes
  location                = var.location
  name                    = var.name
  public_ip_address_ids   = var.public_ip_address_ids
  public_ip_prefix_ids    = var.public_ip_prefix_ids
  resource_group_name     = var.resource_group_name
  sku_name                = var.sku_name
  tags                    = var.tags
  zones                   = var.zones

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

