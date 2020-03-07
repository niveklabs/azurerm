terraform {
  required_providers {
    azurerm = ">= 2.0.0"
  }
}

resource "azurerm_eventhub_namespace" "this" {
  auto_inflate_enabled     = var.auto_inflate_enabled
  capacity                 = var.capacity
  location                 = var.location
  maximum_throughput_units = var.maximum_throughput_units
  name                     = var.name
  network_rulesets         = var.network_rulesets
  resource_group_name      = var.resource_group_name
  sku                      = var.sku
  tags                     = var.tags

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

