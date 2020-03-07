terraform {
  required_providers {
    azurerm = ">= 2.0.0"
  }
}

resource "azurerm_iothub_dps" "this" {
  location            = var.location
  name                = var.name
  resource_group_name = var.resource_group_name
  tags                = var.tags

  dynamic "linked_hub" {
    for_each = var.linked_hub
    content {
      allocation_weight       = linked_hub.value["allocation_weight"]
      apply_allocation_policy = linked_hub.value["apply_allocation_policy"]
      connection_string       = linked_hub.value["connection_string"]
      location                = linked_hub.value["location"]
    }
  }

  dynamic "sku" {
    for_each = var.sku
    content {
      capacity = sku.value["capacity"]
      name     = sku.value["name"]
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

