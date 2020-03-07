terraform {
  required_providers {
    azurerm = ">= 2.0.0"
  }
}

data "azurerm_image" "this" {
  name                = var.name
  name_regex          = var.name_regex
  resource_group_name = var.resource_group_name
  sort_descending     = var.sort_descending

  dynamic "timeouts" {
    for_each = var.timeouts
    content {
      read = timeouts.value["read"]
    }
  }

}

