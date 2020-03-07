terraform {
  required_providers {
    azurerm = ">= 2.0.0"
  }
}

resource "azurerm_batch_application" "this" {
  account_name        = var.account_name
  allow_updates       = var.allow_updates
  default_version     = var.default_version
  display_name        = var.display_name
  name                = var.name
  resource_group_name = var.resource_group_name

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

