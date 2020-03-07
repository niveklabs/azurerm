terraform {
  required_providers {
    azurerm = ">= 2.0.0"
  }
}

resource "azurerm_stream_analytics_job" "this" {
  compatibility_level                      = var.compatibility_level
  data_locale                              = var.data_locale
  events_late_arrival_max_delay_in_seconds = var.events_late_arrival_max_delay_in_seconds
  events_out_of_order_max_delay_in_seconds = var.events_out_of_order_max_delay_in_seconds
  events_out_of_order_policy               = var.events_out_of_order_policy
  location                                 = var.location
  name                                     = var.name
  output_error_policy                      = var.output_error_policy
  resource_group_name                      = var.resource_group_name
  streaming_units                          = var.streaming_units
  tags                                     = var.tags
  transformation_query                     = var.transformation_query

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

