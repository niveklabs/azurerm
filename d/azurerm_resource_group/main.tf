terraform {
  required_providers {
    azurerm = ">= 2.8.0"
  }
}

data "azurerm_resource_group" "this" {
  name = var.name

  dynamic "timeouts" {
    for_each = var.timeouts
    content {
      read = timeouts.value["read"]
    }
  }

}

