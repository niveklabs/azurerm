terraform {
  required_providers {
    azurerm = ">= 2.0.0"
  }
}

data "azurerm_dev_test_virtual_network" "this" {
  lab_name            = var.lab_name
  name                = var.name
  resource_group_name = var.resource_group_name

  dynamic "timeouts" {
    for_each = var.timeouts
    content {
      read = timeouts.value["read"]
    }
  }

}

