terraform {
  required_providers {
    azurerm = ">= 2.0.0"
  }
}

resource "azurerm_data_factory_linked_service_postgresql" "this" {
  additional_properties    = var.additional_properties
  annotations              = var.annotations
  connection_string        = var.connection_string
  data_factory_name        = var.data_factory_name
  description              = var.description
  integration_runtime_name = var.integration_runtime_name
  name                     = var.name
  parameters               = var.parameters
  resource_group_name      = var.resource_group_name

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

