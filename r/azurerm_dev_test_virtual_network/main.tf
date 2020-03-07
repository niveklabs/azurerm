terraform {
  required_providers {
    azurerm = ">= 2.0.0"
  }
}

resource "azurerm_dev_test_virtual_network" "this" {
  description         = var.description
  lab_name            = var.lab_name
  name                = var.name
  resource_group_name = var.resource_group_name
  tags                = var.tags

  dynamic "subnet" {
    for_each = var.subnet
    content {
      use_in_virtual_machine_creation = subnet.value["use_in_virtual_machine_creation"]
      use_public_ip_address           = subnet.value["use_public_ip_address"]
    }
  }

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

