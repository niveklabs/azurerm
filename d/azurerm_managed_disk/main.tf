terraform {
  required_providers {
    azurerm = ">= 2.0.0"
  }
}

data "azurerm_managed_disk" "this" {
  name                = var.name
  resource_group_name = var.resource_group_name
  tags                = var.tags
  zones               = var.zones

  dynamic "timeouts" {
    for_each = var.timeouts
    content {
      read = timeouts.value["read"]
    }
  }

}

