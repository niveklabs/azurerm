terraform {
  required_providers {
    azurerm = ">= 2.0.0"
  }
}

data "azurerm_network_ddos_protection_plan" "this" {
  name                = var.name
  resource_group_name = var.resource_group_name
  tags                = var.tags

  dynamic "timeouts" {
    for_each = var.timeouts
    content {
      read = timeouts.value["read"]
    }
  }

}

