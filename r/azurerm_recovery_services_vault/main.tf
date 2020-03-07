terraform {
  required_providers {
    azurerm = ">= 2.0.0"
  }
}

resource "azurerm_recovery_services_vault" "this" {
  location            = var.location
  name                = var.name
  resource_group_name = var.resource_group_name
  sku                 = var.sku
  soft_delete_enabled = var.soft_delete_enabled
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

