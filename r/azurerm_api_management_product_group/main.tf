terraform {
  required_providers {
    azurerm = ">= 2.0.0"
  }
}

resource "azurerm_api_management_product_group" "this" {
  api_management_name = var.api_management_name
  group_name          = var.group_name
  product_id          = var.product_id
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

