terraform {
  required_providers {
    azurerm = ">= 2.0.0"
  }
}

data "azurerm_resources" "this" {
  name                = var.name
  required_tags       = var.required_tags
  resource_group_name = var.resource_group_name
  type                = var.type

  dynamic "timeouts" {
    for_each = var.timeouts
    content {
      read = timeouts.value["read"]
    }
  }

}

