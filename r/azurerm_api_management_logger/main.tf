terraform {
  required_providers {
    azurerm = ">= 2.0.0"
  }
}

resource "azurerm_api_management_logger" "this" {
  api_management_name = var.api_management_name
  buffered            = var.buffered
  description         = var.description
  name                = var.name
  resource_group_name = var.resource_group_name

  dynamic "application_insights" {
    for_each = var.application_insights
    content {
      instrumentation_key = application_insights.value["instrumentation_key"]
    }
  }

  dynamic "eventhub" {
    for_each = var.eventhub
    content {
      connection_string = eventhub.value["connection_string"]
      name              = eventhub.value["name"]
    }
  }

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

