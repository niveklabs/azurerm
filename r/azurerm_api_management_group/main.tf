terraform {
  required_providers {
    azurerm = ">= 2.0.0"
  }
}

resource "azurerm_api_management_group" "this" {
  api_management_name = var.api_management_name
  description         = var.description
  display_name        = var.display_name
  external_id         = var.external_id
  name                = var.name
  resource_group_name = var.resource_group_name
  type                = var.type

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

