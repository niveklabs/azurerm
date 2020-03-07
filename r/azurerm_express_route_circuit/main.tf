terraform {
  required_providers {
    azurerm = ">= 2.0.0"
  }
}

resource "azurerm_express_route_circuit" "this" {
  allow_classic_operations = var.allow_classic_operations
  bandwidth_in_mbps        = var.bandwidth_in_mbps
  location                 = var.location
  name                     = var.name
  peering_location         = var.peering_location
  resource_group_name      = var.resource_group_name
  service_provider_name    = var.service_provider_name
  tags                     = var.tags

  dynamic "sku" {
    for_each = var.sku
    content {
      family = sku.value["family"]
      tier   = sku.value["tier"]
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

