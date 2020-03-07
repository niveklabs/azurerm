terraform {
  required_providers {
    azurerm = ">= 2.0.0"
  }
}

resource "azurerm_notification_hub_namespace" "this" {
  enabled             = var.enabled
  location            = var.location
  name                = var.name
  namespace_type      = var.namespace_type
  resource_group_name = var.resource_group_name
  sku_name            = var.sku_name

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

