terraform {
  required_providers {
    azurerm = ">= 2.0.0"
  }
}

resource "azurerm_data_factory_pipeline" "this" {
  annotations         = var.annotations
  data_factory_name   = var.data_factory_name
  description         = var.description
  name                = var.name
  parameters          = var.parameters
  resource_group_name = var.resource_group_name
  variables           = var.variables

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

