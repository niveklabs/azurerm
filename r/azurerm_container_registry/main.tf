terraform {
  required_providers {
    azurerm = ">= 2.0.0"
  }
}

resource "azurerm_container_registry" "this" {
  admin_enabled            = var.admin_enabled
  georeplication_locations = var.georeplication_locations
  location                 = var.location
  name                     = var.name
  network_rule_set         = var.network_rule_set
  resource_group_name      = var.resource_group_name
  sku                      = var.sku
  storage_account_id       = var.storage_account_id
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

