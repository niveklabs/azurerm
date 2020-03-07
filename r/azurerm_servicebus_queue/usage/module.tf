module "azurerm_servicebus_queue" {
  source = "./azurerm/r/azurerm_servicebus_queue"

  auto_delete_on_idle                     = null
  dead_lettering_on_message_expiration    = null
  default_message_ttl                     = null
  duplicate_detection_history_time_window = null
  enable_express                          = null
  enable_partitioning                     = null
  lock_duration                           = null
  max_delivery_count                      = null
  max_size_in_megabytes                   = null
  name                                    = null
  namespace_name                          = null
  requires_duplicate_detection            = null
  requires_session                        = null
  resource_group_name                     = null

  timeouts = [{
    create = null
    delete = null
    read   = null
    update = null
  }]
}
