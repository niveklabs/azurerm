module "azurerm_servicebus_topic" {
  source = "./azurerm/r/azurerm_servicebus_topic"

  auto_delete_on_idle                     = null
  default_message_ttl                     = null
  duplicate_detection_history_time_window = null
  enable_batched_operations               = null
  enable_express                          = null
  enable_partitioning                     = null
  max_size_in_megabytes                   = null
  name                                    = null
  namespace_name                          = null
  requires_duplicate_detection            = null
  resource_group_name                     = null
  status                                  = null
  support_ordering                        = null

  timeouts = [{
    create = null
    delete = null
    read   = null
    update = null
  }]
}
