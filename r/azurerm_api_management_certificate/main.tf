terraform {
  required_providers {
    azurerm = ">= 2.0.0"
  }
}

resource "azurerm_api_management_certificate" "this" {
  api_management_name = var.api_management_name
  data                = var.data
  name                = var.name
  password            = var.password
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

