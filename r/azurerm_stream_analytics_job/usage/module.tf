module "azurerm_stream_analytics_job" {
  source = "./azurerm/r/azurerm_stream_analytics_job"

  compatibility_level                      = null
  data_locale                              = null
  events_late_arrival_max_delay_in_seconds = null
  events_out_of_order_max_delay_in_seconds = null
  events_out_of_order_policy               = null
  location                                 = null
  name                                     = null
  output_error_policy                      = null
  resource_group_name                      = null
  streaming_units                          = null
  tags                                     = {}
  transformation_query                     = null

  timeouts = [{
    create = null
    delete = null
    read   = null
    update = null
  }]
}
