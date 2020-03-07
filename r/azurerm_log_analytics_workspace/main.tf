terraform {
  required_providers {
    azurerm = ">= 2.0.0"
  }
}

resource "azurerm_log_analytics_workspace" "this" {
  location            = var.location
  name                = var.name
  resource_group_name = var.resource_group_name
  retention_in_days   = var.retention_in_days
  sku                 = var.sku
  tags                = var.tags

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

