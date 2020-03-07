terraform {
  required_providers {
    azurerm = ">= 2.0.0"
  }
}

resource "azurerm_management_group" "this" {
  display_name               = var.display_name
  group_id                   = var.group_id
  parent_management_group_id = var.parent_management_group_id
  subscription_ids           = var.subscription_ids

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

