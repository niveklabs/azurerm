terraform {
  required_providers {
    azurerm = ">= 2.0.0"
  }
}

data "azurerm_eventhub_consumer_group" "this" {
  eventhub_name       = var.eventhub_name
  name                = var.name
  namespace_name      = var.namespace_name
  resource_group_name = var.resource_group_name

  dynamic "timeouts" {
    for_each = var.timeouts
    content {
      read = timeouts.value["read"]
    }
  }

}

