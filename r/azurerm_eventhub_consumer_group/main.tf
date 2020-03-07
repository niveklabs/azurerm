terraform {
  required_providers {
    azurerm = ">= 2.0.0"
  }
}

resource "azurerm_eventhub_consumer_group" "this" {
  eventhub_name       = var.eventhub_name
  name                = var.name
  namespace_name      = var.namespace_name
  resource_group_name = var.resource_group_name
  user_metadata       = var.user_metadata

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

