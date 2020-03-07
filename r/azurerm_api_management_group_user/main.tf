terraform {
  required_providers {
    azurerm = ">= 2.0.0"
  }
}

resource "azurerm_api_management_group_user" "this" {
  api_management_name = var.api_management_name
  group_name          = var.group_name
  resource_group_name = var.resource_group_name
  user_id             = var.user_id

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

