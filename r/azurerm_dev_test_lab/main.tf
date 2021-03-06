terraform {
  required_providers {
    azurerm = ">= 2.8.0"
  }
}

resource "azurerm_dev_test_lab" "this" {
  location            = var.location
  name                = var.name
  resource_group_name = var.resource_group_name
  storage_type        = var.storage_type
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

