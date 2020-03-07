terraform {
  required_providers {
    azurerm = ">= 2.0.0"
  }
}

data "azurerm_api_management_api" "this" {
  api_management_name = var.api_management_name
  name                = var.name
  resource_group_name = var.resource_group_name
  revision            = var.revision

  dynamic "timeouts" {
    for_each = var.timeouts
    content {
      read = timeouts.value["read"]
    }
  }

}

