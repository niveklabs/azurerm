terraform {
  required_providers {
    azurerm = ">= 2.0.0"
  }
}

resource "azurerm_data_factory_trigger_schedule" "this" {
  annotations         = var.annotations
  data_factory_name   = var.data_factory_name
  end_time            = var.end_time
  frequency           = var.frequency
  interval            = var.interval
  name                = var.name
  pipeline_name       = var.pipeline_name
  pipeline_parameters = var.pipeline_parameters
  resource_group_name = var.resource_group_name
  start_time          = var.start_time

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

