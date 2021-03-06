terraform {
  required_providers {
    azurerm = ">= 2.8.0"
  }
}

resource "azurerm_api_management_named_value" "this" {
  api_management_name = var.api_management_name
  display_name        = var.display_name
  name                = var.name
  resource_group_name = var.resource_group_name
  secret              = var.secret
  tags                = var.tags
  value               = var.value

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

