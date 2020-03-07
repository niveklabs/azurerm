terraform {
  required_providers {
    azurerm = ">= 2.0.0"
  }
}

resource "azurerm_application_insights_web_test" "this" {
  application_insights_id = var.application_insights_id
  configuration           = var.configuration
  description             = var.description
  enabled                 = var.enabled
  frequency               = var.frequency
  geo_locations           = var.geo_locations
  kind                    = var.kind
  location                = var.location
  name                    = var.name
  resource_group_name     = var.resource_group_name
  retry_enabled           = var.retry_enabled
  tags                    = var.tags
  timeout                 = var.timeout

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

