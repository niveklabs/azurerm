terraform {
  required_providers {
    azurerm = ">= 2.0.0"
  }
}

resource "azurerm_media_services_account" "this" {
  location            = var.location
  name                = var.name
  resource_group_name = var.resource_group_name

  dynamic "storage_account" {
    for_each = var.storage_account
    content {
      id         = storage_account.value["id"]
      is_primary = storage_account.value["is_primary"]
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

