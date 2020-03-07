terraform {
  required_providers {
    azurerm = ">= 2.0.0"
  }
}

data "azurerm_api_management_user" "this" {
  api_management_name = var.api_management_name
  resource_group_name = var.resource_group_name
  user_id             = var.user_id

  dynamic "timeouts" {
    for_each = var.timeouts
    content {
      read = timeouts.value["read"]
    }
  }

}

