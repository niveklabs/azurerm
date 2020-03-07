terraform {
  required_providers {
    azurerm = ">= 2.0.0"
  }
}

data "azurerm_management_group" "this" {
  group_id = var.group_id

  dynamic "timeouts" {
    for_each = var.timeouts
    content {
      read = timeouts.value["read"]
    }
  }

}

