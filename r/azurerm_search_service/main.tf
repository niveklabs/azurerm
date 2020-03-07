terraform {
  required_providers {
    azurerm = ">= 2.0.0"
  }
}

resource "azurerm_search_service" "this" {
  location            = var.location
  name                = var.name
  partition_count     = var.partition_count
  replica_count       = var.replica_count
  resource_group_name = var.resource_group_name
  sku                 = var.sku
  tags                = var.tags

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

