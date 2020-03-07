terraform {
  required_providers {
    azurerm = ">= 2.0.0"
  }
}

resource "azurerm_express_route_gateway" "this" {
  location            = var.location
  name                = var.name
  resource_group_name = var.resource_group_name
  scale_units         = var.scale_units
  tags                = var.tags
  virtual_hub_id      = var.virtual_hub_id

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

