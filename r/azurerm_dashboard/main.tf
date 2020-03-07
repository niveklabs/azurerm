terraform {
  required_providers {
    azurerm = ">= 2.0.0"
  }
}

resource "azurerm_dashboard" "this" {
  dashboard_properties = var.dashboard_properties
  location             = var.location
  name                 = var.name
  resource_group_name  = var.resource_group_name
  tags                 = var.tags

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

