terraform {
  required_providers {
    azurerm = ">= 2.0.0"
  }
}

resource "azurerm_iothub_route" "this" {
  condition           = var.condition
  enabled             = var.enabled
  endpoint_names      = var.endpoint_names
  iothub_name         = var.iothub_name
  name                = var.name
  resource_group_name = var.resource_group_name
  source              = var.source

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

