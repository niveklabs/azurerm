terraform {
  required_providers {
    azurerm = ">= 2.6.0"
  }
}

data "azurerm_management_group" "this" {
  group_id = var.group_id
  name     = var.name

  dynamic "timeouts" {
    for_each = var.timeouts
    content {
      read = timeouts.value["read"]
    }
  }

}

